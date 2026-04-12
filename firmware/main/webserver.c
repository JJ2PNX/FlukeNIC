// Derived from esp-idf sample code
/* Simple HTTP Server Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/

#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <esp_log.h>
#include <esp_http_server.h>
#include <sys/time.h>
#include "esp_event.h"
#include "esp_check.h"
#include "esp_timer.h"
#include "esp_idf_version.h"
#include "esp_chip_info.h"
#include "esp_flash.h"
#include "esp_wifi.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "fluke.h"
#include "webserver.h"
#include "file_server.h"
#include "json_parser.h"
#include "ctype.h"
#include "settings.h"
#include "logger.h"
#include "rtc_pcf2129.h"
#include "ota.h"
#include "wifi.h"

#if !CONFIG_HTTPD_WS_SUPPORT
#error "Set CONFIG_HTTPD_WS_SUPPORT"
#endif

#define EXAMPLE_HTTP_QUERY_KEY_MAX_LEN  (64)

#ifndef MIN
#define MIN(a,b)  (((a)<(b)) ? (a):(b))
#endif

#ifndef MAX
#define MAX(a,b)  (((a)>(b)) ? (a):(b))
#endif

static const char *TAG = "Http";
static const char *Version = "1.06";

///////////////////////////////////////////////////////////////////////
// Common
static int hex_to_int(char c)
{
    if ('0' <= c && c <= '9') return c - '0';
    if ('A' <= c && c <= 'F') return c - 'A' + 10;
    if ('a' <= c && c <= 'f') return c - 'a' + 10;
    return -1;
}

static size_t url_decode(char *dest, size_t dest_size, const char *src)
{
    size_t i = 0;
    while (*src && i + 1 < dest_size) {
        if (*src == '%' && isxdigit((unsigned char)src[1]) && isxdigit((unsigned char)src[2])) {
            int hi = hex_to_int(src[1]);
            int lo = hex_to_int(src[2]);
            if (hi >= 0 && lo >= 0) {
                dest[i++] = (char)((hi << 4) | lo);
                src += 3;
                continue;
            }
        } else if (*src == '+') {
            dest[i++] = ' ';
            src++;
            continue;
        }
        dest[i++] = *src++;
    }
    dest[i] = '\0';
    return i;
}

static int httpd_write(void *cookie, const char *data, int len)
{
    httpd_req_t *req = (httpd_req_t *)cookie;
    httpd_resp_send_chunk(req, data, len);
    return len;
}

///////////////////////////////////////////////////////////////////////
// Info
static void info_version(FILE *fp)
{
    fprintf(fp, "%s (Build %s %s)", Version, __DATE__, __TIME__);
}

static void info_uptime(FILE *fp)
{
    unsigned int uptime = (unsigned int)(xTaskGetTickCount() / CONFIG_FREERTOS_HZ);
    fprintf(fp, "%dday %dhour %dmin", uptime/86400, uptime%86400/3600, uptime%3600/60);
}

static void info_lastBytes(FILE *fp)
{
    fluke_dumplast(fp);
}

static void info_msgCount(FILE *fp)
{
    fluke_msgcount(fp);
}

static void info_taskList(FILE *fp)
{
    char *p = malloc(1024);
    if(p){
        fprintf(fp, "TaskName        State   Prio    Stack   Id\n");
        vTaskList(p);
        fputs(p, fp);
        free(p);
    } else {
        fputs("malloc failed", fp);
    }
}

static void info_freeHeap(FILE *fp)
{
    fprintf(fp, "esp_get_free_heap_size(): %ld\n", esp_get_free_heap_size());
    fprintf(fp, "esp_get_minimum_free_heap_size(): %ld", esp_get_minimum_free_heap_size());
}

static void info_idfver(FILE *fp)
{
    fputs(esp_get_idf_version(), fp);
}

static void info_chipinfo(FILE *fp)
{
    esp_chip_info_t chip_info;
    esp_chip_info(&chip_info);
    uint32_t size;
    esp_flash_get_size(NULL, &size);
    fprintf(fp, "model: %d, rev:%d, flash:%ldMB", chip_info.model, chip_info.revision, size/1024/1024);
}

static void info_wifiap(FILE *fp)
{
    wifi_ap_record_t ap;
    if (esp_wifi_sta_get_ap_info(&ap) == ESP_OK) {
       fprintf(fp, "ssid:%s, rssi:%d dBm", ap.ssid, ap.rssi);
    }
}

static void info_txpwr(FILE *fp)
{
    int8_t p;
    esp_wifi_get_max_tx_power(&p);
    fprintf(fp,"%.2f dBm", p / 4.0);
}

static void info_staip(FILE *fp)
{
    esp_netif_ip_info_t ip;
    esp_netif_t *netif = esp_netif_get_handle_from_ifkey("WIFI_STA_DEF");
    if (esp_netif_get_ip_info(netif, &ip) == ESP_OK) {
        fprintf(fp, IPSTR, IP2STR(&ip.ip));
    } 
}

static struct info_procs_st {
    const char *key;
    void (*func)(FILE *fp);
} info_procs[] = {
    {"version",     info_version},
    {"uptime",      info_uptime},
    {"lastBytes",   info_lastBytes},
    {"msgCount",    info_msgCount},
    {"taskList",    info_taskList},
    {"freeHeap",    info_freeHeap},
    {"idfver",      info_idfver},
    {"chipinfo",    info_chipinfo},
    {"wifiap",      info_wifiap},
    {"txpwr",       info_txpwr},
    {"staip",       info_staip},
    {NULL,          NULL}
};

static esp_err_t info_handler(httpd_req_t *req)
{
    char buff[32];
    httpd_req_get_url_query_str(req, buff, sizeof(buff));
    httpd_resp_set_hdr(req, "Connection", "close");
    httpd_resp_set_type(req, "text/plain");
    FILE *fp = funopen(req, NULL, httpd_write, NULL, NULL);

    for(int i=0; info_procs[i].key; i++){
        if(strstr(info_procs[i].key, buff)){
            info_procs[i].func(fp);
            break;
        }
    }

    fclose(fp);
    httpd_resp_sendstr_chunk(req, NULL);
    return ESP_OK;
}
    
static const httpd_uri_t uri_info = {
    .uri       = "/info",
    .method    = HTTP_GET,
    .handler   = info_handler
};

///////////////////////////////////////////////////////////////////////
// Settings
static esp_err_t settings_handler(httpd_req_t *req)
{
    esp_err_t ret;
    char ssid[32] = {0}, passwd[64] = {0};
    char *buf = NULL;
    struct settings_map_st {
        const char *key;
        void *store;
        enum type_e {
            TYPE_INT8,
            TYPE_UINT8,
            TYPE_UINT16,
            TYPE_UINT32,
            TYPE_CSTR,
            TYPE_FLAG8
        } type;
        int opt;
    } settings_map[] = {
        {"model",       &settings.flags,        TYPE_FLAG8,     FL_8840A                    },
        {"hostname",    settings.hostname,      TYPE_CSTR,      sizeof(settings.hostname)   },
        {"wifiap",      &settings.flags,        TYPE_FLAG8,     FL_WIFIAP                   },
        {"txpwr",       &settings.txpwr,        TYPE_INT8,      0                           },
        {"ntp",         &settings.flags,        TYPE_FLAG8,     FL_NTPUSE                   },
        {"ntp_server",  settings.ntp_server,    TYPE_CSTR,      sizeof(settings.ntp_server) },
        {"timezone",    settings.timezone,      TYPE_CSTR,      sizeof(settings.timezone)   },
        {"log_local",   &settings.flags,        TYPE_FLAG8,     FL_LOGLOCAL                 },
        {"log_rot",     &settings.log_rot,      TYPE_UINT8,     0                           },
        {"log_lines",   &settings.log_lines,    TYPE_UINT32,    0                           },
        {"log_flush",   &settings.flags,        TYPE_FLAG8,     FL_LOGFLUSH                 },
        {"log_skipov",  &settings.flags,        TYPE_FLAG8,     FL_LOGSKIPOV                },
        {"udpout",      &settings.flags,        TYPE_FLAG8,     FL_UDPOUT                   },
        {"peer_ip",     settings.peer_ip,       TYPE_CSTR,      sizeof(settings.peer_ip)    },
        {"peer_port",   &settings.peer_port,    TYPE_UINT16,    0                           },
        {"local_port",  &settings.local_port,   TYPE_UINT16,    0                           },
        {NULL,          NULL,                   0,              0                           }
    };

    size_t buf_len = httpd_req_get_url_query_len(req) + 1;
    if (buf_len > 1) {
        buf = malloc(buf_len);
        ESP_GOTO_ON_FALSE(buf, ESP_ERR_NO_MEM, error, TAG, "malloc failed");
        if (httpd_req_get_url_query_str(req, buf, buf_len) == ESP_OK) {
            // Have query string
            char param[EXAMPLE_HTTP_QUERY_KEY_MAX_LEN], dec_param[EXAMPLE_HTTP_QUERY_KEY_MAX_LEN];
            for(int i=0; settings_map[i].key; i++){
                struct settings_map_st *map = &settings_map[i];
                if(httpd_query_key_value(buf, map->key, param, sizeof(param)) == ESP_OK){
                    // Have key item
                    switch(map->type){
                        case TYPE_INT8:
                            *(int8_t *)map->store = atoi(param);
                            break;
                        case TYPE_UINT8:
                            *(uint8_t *)map->store = atoi(param);
                            break;
                        case TYPE_UINT16:
                            *(uint16_t *)map->store = atoi(param);
                            break;
                        case TYPE_UINT32:
                            *(uint32_t *)map->store = strtoul(param, NULL, 10);
                            break;
                        case TYPE_CSTR:
                            url_decode(dec_param, sizeof(dec_param), param);
                            strlcpy(map->store, dec_param, map->opt);
                            break;
                        case TYPE_FLAG8:
                            if(param[0] == '0'){
                                *(uint8_t *)map->store &= ~((uint8_t)map->opt);
                            } else {
                                *(uint8_t *)map->store |= (uint8_t)map->opt;
                            }
                            break;
                        default:
                            break;
                    }
                } else {
                    ESP_LOGW(TAG, "key '%s' not found", map->key);
                }
            }
            
            // WiFi SSID
            if (httpd_query_key_value(buf, "ssid", param, sizeof(param)) == ESP_OK) {
                url_decode(dec_param, sizeof(dec_param), param);
                strlcpy(ssid, dec_param, sizeof(ssid));
            }
            // WiFi Password
            if (httpd_query_key_value(buf, "passwd", param, sizeof(param)) == ESP_OK) {
                url_decode(dec_param, sizeof(dec_param), param);
                strlcpy(passwd, dec_param, sizeof(passwd));
            }
            // Current date/time
            if (httpd_query_key_value(buf, "time", param, sizeof(param)) == ESP_OK) {
                struct timeval tv = {};
                tv.tv_sec =  (time_t)atoll(param);
                settimeofday(&tv, NULL);
                rtc_pcf2129_systohc();
            }
            settings.txpwr = MAX(settings.txpwr, WIFI_TXPWR_MIN);
            settings.txpwr = MIN(settings.txpwr, WIFI_TXPWR_MAX);
            esp_wifi_set_max_tx_power(settings.txpwr);
            settings_save();
            wifi_setconf_sta(ssid, passwd);
        }
        free(buf);
        buf = NULL;
    }

    // Display current
    // Page header
    extern const unsigned char settings_header_start[] asm("_binary_settings_header_html_start");
    extern const unsigned char settings_header_end[]   asm("_binary_settings_header_html_end");
    const size_t settings_header_size = (settings_header_end - settings_header_start);
    httpd_resp_send_chunk(req, (const char *)settings_header_start, settings_header_size);

    // Dynamic Generated contents
    const size_t bufsize = 256;
    buf = malloc(bufsize);
    ESP_GOTO_ON_FALSE(buf, ESP_ERR_NO_MEM, error, TAG, "malloc failed");
    
    httpd_resp_sendstr_chunk(req, "\n<script>\nconst currentValues = {\n");

    for(int i=0; settings_map[i].key; i++){
        struct settings_map_st *map = &settings_map[i];
        switch(map->type){
            case TYPE_INT8:
                snprintf(buf, bufsize, "%s: %d,\n", map->key, *(int8_t *)map->store);
                break;
            case TYPE_UINT8:
                snprintf(buf, bufsize, "%s: %d,\n", map->key, *(uint8_t *)map->store);
                break;
            case TYPE_UINT16:
                snprintf(buf, bufsize, "%s: %d,\n", map->key, *(uint16_t *)map->store);
                break;
            case TYPE_UINT32:
                snprintf(buf, bufsize, "%s: %ld,\n", map->key, *(uint32_t *)map->store);
                break;
            case TYPE_CSTR:
                snprintf(buf, bufsize, "%s: '%s',\n", map->key, (char *)map->store);
                break;
            case TYPE_FLAG8:
                snprintf(buf, bufsize, "%s: %d,\n", map->key, (*(uint8_t *)map->store & (uint8_t)map->opt) ? 1 : 0);
                break;
            default:
                break;
        }
        httpd_resp_sendstr_chunk(req, buf);
    }

    // WiFi SSID, Password
    wifi_getconf_sta(ssid, passwd);
    snprintf(buf, bufsize, "ssid: '%s',\npasswd: '%s',\n", ssid, passwd);
    httpd_resp_sendstr_chunk(req, buf);
    // Current date/time
    time_t tt;
    time(&tt);
    snprintf(buf, bufsize, "time: %lld\n", (long long)tt);
    httpd_resp_sendstr_chunk(req, buf);
    // Page Footer
    httpd_resp_sendstr_chunk(req, "};\n</script></body></html>");
    // End
    httpd_resp_sendstr_chunk(req, NULL);
    free(buf);
    return ESP_OK;
error:
    if(buf) free(buf);
    return ret;
}

static const httpd_uri_t uri_settings = {
    .uri       = "/settings",
    .method    = HTTP_GET,
    .handler   = settings_handler
};

///////////////////////////////////////////////////////////////////////
// Websocket
int extsrc = 0;
static void fluke_command(httpd_req_t *req, const uint8_t *msg, size_t len)
{
    jparse_ctx_t jctx;
    int func = FUNC_RETAIN;
    int range = RANGE_RETAIN;
    int speed = SPEED_RETAIN;
    int trig = TRIG_RETAIN;
    int offset = -1;
    int tellconfig = 0;
    int acq = 0;
    int rec = 0;

    if(json_parse_start(&jctx, (const char *)msg, len) != OS_SUCCESS){
        ESP_LOGI(TAG, "json_parse_start failed");
        return;
    }
    json_obj_get_int(&jctx, "func", &func);
    json_obj_get_int(&jctx, "range", &range);
    json_obj_get_int(&jctx, "speed", &speed);
    json_obj_get_int(&jctx, "trig", &trig);
    json_obj_get_int(&jctx, "offset", &offset);
    json_obj_get_int(&jctx, "tellconfig", &tellconfig);
    json_obj_get_int(&jctx, "acq", &acq);
    json_obj_get_int(&jctx, "extsrc", &extsrc);
    json_obj_get_int(&jctx, "rec", &rec);

    if(func != FUNC_RETAIN || range != RANGE_RETAIN || speed != SPEED_RETAIN || trig != TRIG_RETAIN){
        fluke_setfrst(func, range, speed, trig);
    }
    if(offset != -1){
        fluke_offset(offset ? true:false);
    }
    if(tellconfig == 1){
        fluke_tellconfig();
    }
    if(acq == 1){
        fluke_trig();
    }
    if(rec == 1){
        fluke_auxevent();
    }
}

static esp_err_t ws_handler(httpd_req_t *req)
{
    if (req->method == HTTP_GET) {
        ESP_LOGI(TAG, "Handshake done, the new connection was opened");
        return ESP_OK;
    }
    httpd_ws_frame_t ws_pkt;
    memset(&ws_pkt, 0, sizeof(httpd_ws_frame_t));

    // First receive the full ws message
    /* Set max_len = 0 to get the frame len */
    esp_err_t ret = httpd_ws_recv_frame(req, &ws_pkt, 0);
    if (ret != ESP_OK) {
        ESP_LOGW(TAG, "httpd_ws_recv_frame failed: %d", ret);
        return ret;
    }
    // ESP_LOGI(TAG, "frame len is %d", ws_pkt.len);
    uint8_t *buf = NULL;
    if (ws_pkt.len) {
        /* ws_pkt.len + 1 is for NULL termination as we are expecting a string */
        buf = calloc(1, ws_pkt.len + 1);
        if (buf == NULL) {
            ESP_LOGE(TAG, "Failed to calloc memory for buf");
            return ESP_ERR_NO_MEM;
        }
        ws_pkt.payload = buf;
        /* Set max_len = ws_pkt.len to get the frame payload */
        ret = httpd_ws_recv_frame(req, &ws_pkt, ws_pkt.len);
        if (ret != ESP_OK) {
            ESP_LOGW(TAG, "httpd_ws_recv_frame failed: %d", ret);
            free(buf);
            return ret;
        }
    }

    // If it was a TEXT message, just echo it back
    if (ws_pkt.type == HTTPD_WS_TYPE_TEXT || ws_pkt.type == HTTPD_WS_TYPE_PING || ws_pkt.type == HTTPD_WS_TYPE_CLOSE) {
        if (ws_pkt.type == HTTPD_WS_TYPE_TEXT) {
            ESP_LOGI(TAG, "ws message: %s", ws_pkt.payload);
            fluke_command(req, ws_pkt.payload, ws_pkt.len);
        } else if (ws_pkt.type == HTTPD_WS_TYPE_PING) {
            // Response PONG packet to peer
            ESP_LOGI(TAG, "Got a WS PING frame, Replying PONG");
            ws_pkt.type = HTTPD_WS_TYPE_PONG;
        } else if (ws_pkt.type == HTTPD_WS_TYPE_CLOSE) {
            // Response CLOSE packet with no payload to peer
            ws_pkt.len = 0;
            ws_pkt.payload = NULL;
        }
        //ESP_LOGI(TAG, "ws_handler: httpd_handle_t=%p, sockfd=%d, client_info:%d", req->handle,
        //         httpd_req_to_sockfd(req), httpd_ws_get_fd_info(req->handle, httpd_req_to_sockfd(req)));
    }
    free(buf);
    return ESP_OK;
}

static const httpd_uri_t uri_ws = {
    .uri        = "/ws",
    .method     = HTTP_GET,
    .handler    = ws_handler,
    .user_ctx   = NULL,
    .is_websocket = true,
    .handle_ws_control_frames = true
};

struct async_resp_arg {
    httpd_handle_t hd;
    int fd;
    fluke_event_t event;
};

#define ASYNC_RESP_BUFFSIZE 5
static struct async_resp_arg async_resp_buff[ASYNC_RESP_BUFFSIZE];
static int async_resp_buff_index = 0;

static void send_fluke_event(void *arg)
{
    char sendbuff[128];
    char timebuff[48];
    struct async_resp_arg resp_arg = async_resp_buff[(int)arg];
    fluke_event_t *event = &resp_arg.event;
    struct tm *stm = &event->timestamp.tm_local;
    snprintf(timebuff, sizeof(timebuff), "%d-%02d-%02dT%02d:%02d:%02d.%03ld",
        stm->tm_year +1900, stm->tm_mon +1, stm->tm_mday,
        stm->tm_hour, stm->tm_min, stm->tm_sec, event->timestamp.tv.tv_usec /1000);
    
    switch(event->type){
        case EVENT_MEAS:
            snprintf(sendbuff, sizeof(sendbuff), "{\"time\": \"%s\", \"count\":%d, \"range\":%d, \"over\":%d}",
                timebuff, event->meas.count, event->meas.range, event->meas.over ? 1 : 0);
            break;
        case EVENT_CONFIG:
            snprintf(sendbuff, sizeof(sendbuff), "{\"time\": \"%s\", \"func\":%d, \"range\":%d, \"speed\":%d, \"flags\":%d, \"extsrc\":%d, \"rec\":%d}",
                timebuff, event->config.func, event->config.range, event->config.speed, event->config.flags, extsrc, logger_isrec() ? 1 : 0);
            break;
        case EVENT_ERROR:
            snprintf(sendbuff, sizeof(sendbuff), "{\"time\": \"%s\", \"error\":%d}",
                timebuff, event->errnum);
            break;
        case EVENT_LOCAL:
            snprintf(sendbuff, sizeof(sendbuff), "{\"rec\":%d}", logger_isrec() ? 1 : 0);
            break;
        default:
            ESP_LOGI(TAG, "Unintended event %d", event->type);
            break;
    }

    httpd_handle_t hd = resp_arg.hd;
    int fd = resp_arg.fd;
    httpd_ws_frame_t ws_pkt;
    memset(&ws_pkt, 0, sizeof(httpd_ws_frame_t));
    ws_pkt.payload = (uint8_t*)sendbuff;
    ws_pkt.len = strlen(sendbuff);
    ws_pkt.type = HTTPD_WS_TYPE_TEXT;
    httpd_ws_send_frame_async(hd, fd, &ws_pkt);
}

// Get all clients and send async message
static const size_t max_clients = 10;
esp_err_t ws_send_fluke_event(httpd_handle_t server, fluke_event_t event)
{
    if (!server) { // httpd might not have been created by now
        return ESP_ERR_NOT_ALLOWED;
    }

    size_t clients = max_clients;
    int    client_fds[max_clients];
    if (httpd_get_client_list(server, &clients, client_fds) == ESP_OK) {
        // ESP_LOGI(TAG, "ws %d clients", clients);
        for (size_t i=0; i < clients; ++i) {
            int sock = client_fds[i];
            if (httpd_ws_get_fd_info(server, sock) == HTTPD_WS_CLIENT_WEBSOCKET) {
                //ESP_LOGI(TAG, "Active client (fd=%d) -> sending async message", sock);
                // Use malloc() to pass data cause memory leak, 
                // in some case send_fluke_event() won't be called
                // struct async_resp_arg *resp_arg = malloc(sizeof(struct async_resp_arg));
                //if(!resp_arg){
                //    ESP_LOGE(TAG, "Failed to allocate memory");
                //    return ESP_ERR_NO_MEM;
                //}
                int index = async_resp_buff_index % ASYNC_RESP_BUFFSIZE;
                struct async_resp_arg *resp_arg = &async_resp_buff[index];
                resp_arg->hd = server;
                resp_arg->fd = sock;
                resp_arg->event = event;
                if (httpd_queue_work(server, send_fluke_event, (void *)index) != ESP_OK) {
                    ESP_LOGE(TAG, "httpd_queue_work failed!");
                    return ESP_FAIL;
                }
                async_resp_buff_index++;
            }
        }
    } else {
        ESP_LOGE(TAG, "httpd_get_client_list failed!");
        return ESP_FAIL;
    }
    return ESP_OK;
}

httpd_handle_t start_webserver(void)
{
    httpd_handle_t server = NULL;
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();
    // config.stack_size = 8192;
    config.lru_purge_enable = true;
    config.uri_match_fn = httpd_uri_match_wildcard;

    // Start the httpd server
    ESP_LOGI(TAG, "Starting server on port: '%d'", config.server_port);
    if (httpd_start(&server, &config) != ESP_OK) {
        ESP_LOGE(TAG, "httpd_start failed");
        return NULL;
    }
    // Set URI handlers
    httpd_register_uri_handler(server, &uri_settings);
    httpd_register_uri_handler(server, &uri_ws);
    httpd_register_uri_handler(server, &uri_info);
    ota_register_uri_handler(server);
    // Must be placed at last
    ESP_ERROR_CHECK(start_file_server("/spiffs", "/sdcard", server));

    ESP_LOGI(TAG, "start_webserver OK");
    return server;
}

esp_err_t stop_webserver(httpd_handle_t server)
{
    // Stop the httpd server
    return httpd_stop(server);
}
