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
static const char *Version = "1.04";

///////////////////////////////////////////////////////////////////////
// Common
static int hex_to_int(char c)
{
    if ('0' <= c && c <= '9') return c - '0';
    if ('A' <= c && c <= 'F') return c - 'A' + 10;
    if ('a' <= c && c <= 'f') return c - 'a' + 10;
    return -1;
}

static int url_decode(char *dest, size_t dest_size, const char *src)
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
    return (int)i;
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
    // Parse and update
    char*  buf = NULL;
    size_t buf_len = httpd_req_get_url_query_len(req) + 1;
    if (buf_len > 1) {
        buf = malloc(buf_len);
        ESP_GOTO_ON_FALSE(buf, ESP_ERR_NO_MEM, error, TAG, "malloc failed");
        if (httpd_req_get_url_query_str(req, buf, buf_len) == ESP_OK) {
            char param[EXAMPLE_HTTP_QUERY_KEY_MAX_LEN], dec_param[EXAMPLE_HTTP_QUERY_KEY_MAX_LEN] = {0};
            // Fluke model (8840A or 8842A)
            if (httpd_query_key_value(buf, "model", param, sizeof(param)) == ESP_OK) {
                if(strcmp(param, "1")==0){
                    settings.flags |= FL_8840A;
                } else {
                    settings.flags &= ~FL_8840A;
                }
            }
            // Hostname
            if (httpd_query_key_value(buf, "hostname", param, sizeof(param)) == ESP_OK) {
                url_decode(dec_param, sizeof(dec_param), param);
                strncpy(settings.hostname, dec_param, sizeof(settings.hostname) -1);
                settings.hostname[sizeof(settings.hostname) -1] = '\0';
            }
            // WiFi SSID
            if (httpd_query_key_value(buf, "ssid", param, sizeof(param)) == ESP_OK) {
                strcpy(ssid, param);
            }
            // WiFi Password
            if (httpd_query_key_value(buf, "passwd", param, sizeof(param)) == ESP_OK) {
                strcpy(passwd, param);
            }
            // WiFi Accesspoint
            if (httpd_query_key_value(buf, "wifiap", param, sizeof(param)) == ESP_OK) {
                if(param[0] == '0'){
                    settings.flags &= ~FL_WIFIAP;
                } else {
                    settings.flags |= FL_WIFIAP;
                }
            }
            // WiFi TX Power
            if (httpd_query_key_value(buf, "txpwr", param, sizeof(param)) == ESP_OK) {
                url_decode(dec_param, sizeof(dec_param), param);
                settings.txpwr = atoi(dec_param);
                settings.txpwr = MAX(settings.txpwr, WIFI_TXPWR_MIN);
                settings.txpwr = MIN(settings.txpwr, WIFI_TXPWR_MAX);
                esp_wifi_set_max_tx_power(settings.txpwr);
            }
            // Current date/time
            if (httpd_query_key_value(buf, "time", param, sizeof(param)) == ESP_OK) {
                struct timeval tv = {};
                tv.tv_sec =  (time_t)atoll(param);
                settimeofday(&tv, NULL);
                rtc_pcf2129_systohc();
            }
            // Ntp
            if (httpd_query_key_value(buf, "ntp", param, sizeof(param)) == ESP_OK) {
                if(param[0] == '0'){
                    settings.flags &= ~FL_NTPUSE;
                } else {
                    settings.flags |= FL_NTPUSE;
                }
            }
            // Ntp server
            if (httpd_query_key_value(buf, "ntp_server", param, sizeof(param)) == ESP_OK) {
                url_decode(dec_param, sizeof(dec_param), param);
                strncpy(settings.ntp_server, dec_param, sizeof(settings.ntp_server) -1);
                settings.ntp_server[sizeof(settings.ntp_server) -1] = '\0';
            }
            // Timezone
            if (httpd_query_key_value(buf, "timezone", param, sizeof(param)) == ESP_OK) {
                url_decode(dec_param, sizeof(dec_param), param);
                strncpy(settings.timezone, dec_param, sizeof(settings.timezone) -1);
                settings.timezone[sizeof(settings.timezone) -1] = '\0';
            }
            // Log start/stop using LOCAL key
            if (httpd_query_key_value(buf, "log_local", param, sizeof(param)) == ESP_OK) {
                if(param[0] == '0'){
                    settings.flags &= ~FL_LOGLOCAL;
                } else {
                    settings.flags |= FL_LOGLOCAL;
                }
            }
            // Log rotation
            if (httpd_query_key_value(buf, "log_rot", param, sizeof(param)) == ESP_OK) {
                settings.log_rot = atoi(param);
            }
            // Log rotation lines
            if (httpd_query_key_value(buf, "log_lines", param, sizeof(param)) == ESP_OK) {
                settings.log_lines = atoi(param);
            }
            // Log flush every line
            if (httpd_query_key_value(buf, "log_flush", param, sizeof(param)) == ESP_OK) {
                if(param[0] == '0'){
                    settings.flags &= ~FL_LOGFLUSH;
                } else {
                    settings.flags |= FL_LOGFLUSH;
                }
            }
            // Log skip overrange
            if (httpd_query_key_value(buf, "log_skipov", param, sizeof(param)) == ESP_OK) {
                if(param[0] == '0'){
                    settings.flags &= ~FL_LOGSKIPOV;
                } else {
                    settings.flags |= FL_LOGSKIPOV;
                }
            }
            // UDP Data output
            if (httpd_query_key_value(buf, "udpout", param, sizeof(param)) == ESP_OK) {
                if(param[0] == '0'){
                    settings.flags &= ~FL_UDPOUT;
                } else {
                    settings.flags |= FL_UDPOUT;
                }
            }
            // Peer ip
            if (httpd_query_key_value(buf, "peer_ip", param, sizeof(param)) == ESP_OK) {
                url_decode(dec_param, sizeof(dec_param), param);
                strncpy(settings.peer_ip, dec_param, sizeof(settings.peer_ip) -1);
                settings.peer_ip[sizeof(settings.peer_ip) -1] = '\0';
            }
            // Peer port
            if (httpd_query_key_value(buf, "peer_port", param, sizeof(param)) == ESP_OK) {
                settings.peer_port = MIN(atoi(param), UINT16_MAX);
            }
            // Local port
            if (httpd_query_key_value(buf, "local_port", param, sizeof(param)) == ESP_OK) {
                settings.local_port = MIN(atoi(param), UINT16_MAX);
            }
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
    // Model
    snprintf(buf, bufsize, "model: %d,\n", settings.flags & FL_8840A ? 1 : 0);
    httpd_resp_sendstr_chunk(req, buf);
    // Hostname
    snprintf(buf, bufsize, "hostname: '%s',\n", settings.hostname);
    httpd_resp_sendstr_chunk(req, buf);
    // WiFi SSID, Password
    wifi_getconf_sta(ssid, passwd);
    snprintf(buf, bufsize, "ssid: '%s',\npasswd: '%s',\n", ssid, passwd);
    httpd_resp_sendstr_chunk(req, buf);
    // WiFi Accesspoint
    snprintf(buf, bufsize, "wifiap: %d,\n", settings.flags & FL_WIFIAP ? 1 : 0);
    httpd_resp_sendstr_chunk(req, buf);
    // WiFi TX Power
    snprintf(buf, bufsize, "txpwr: %d,\n", settings.txpwr);
    httpd_resp_sendstr_chunk(req, buf);
    // Current date/time
    time_t tt;
    time(&tt);
    snprintf(buf, bufsize, "time: %lld,\n", (long long)tt);
    httpd_resp_sendstr_chunk(req, buf);
    // Ntp
    snprintf(buf, bufsize, "ntp: %d,\n", settings.flags & FL_NTPUSE ? 1 : 0);
    httpd_resp_sendstr_chunk(req, buf);
    // Ntp server
    snprintf(buf, bufsize, "ntp_server: '%s',\n", settings.ntp_server);
    httpd_resp_sendstr_chunk(req, buf);
    // Timezone
    snprintf(buf, bufsize, "timezone: '%s',\n", settings.timezone);
    httpd_resp_sendstr_chunk(req, buf);
    // Log start/stop using LOCAL key
    snprintf(buf, bufsize, "log_local: %d,\n", settings.flags & FL_LOGLOCAL ? 1 : 0);
    httpd_resp_sendstr_chunk(req, buf);
    // Log rotation
    snprintf(buf, bufsize, "log_rot: %d,\n", settings.log_rot);
    httpd_resp_sendstr_chunk(req, buf);
    // Log rotation lines
    snprintf(buf, bufsize, "log_lines: %ld,\n", settings.log_lines);
    httpd_resp_sendstr_chunk(req, buf);
    // Log flush every line
    snprintf(buf, bufsize, "log_flush: %d,\n", settings.flags & FL_LOGFLUSH ? 1 : 0);
    httpd_resp_sendstr_chunk(req, buf);
    // Log skip overrange
    snprintf(buf, bufsize, "log_skipov: %d,\n", settings.flags & FL_LOGSKIPOV ? 1 : 0);
    httpd_resp_sendstr_chunk(req, buf);
    // UDP Data output
    snprintf(buf, bufsize, "udpout: %d,\n", settings.flags & FL_UDPOUT ? 1 : 0);
    httpd_resp_sendstr_chunk(req, buf);
    // Peer ip
    snprintf(buf, bufsize, "peer_ip: '%s',\n", settings.peer_ip);
    httpd_resp_sendstr_chunk(req, buf);
    // Peer port
    snprintf(buf, bufsize, "peer_port: %d,\n", settings.peer_port);
    httpd_resp_sendstr_chunk(req, buf);
    // Local port
    snprintf(buf, bufsize, "local_port: %d\n", settings.local_port);
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
extern QueueHandle_t fluke_event_queue;
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
        fluke_event_t event;
        event.type = EVENT_AUX;
        gettimeofday(&event.timestamp.tv, NULL);
        localtime_r(&event.timestamp.tv.tv_sec, &event.timestamp.tm_local);
        if(xQueueSendToBack(fluke_event_queue, &event, 0) == errQUEUE_FULL){
            // Force queue clear if append failed
            // This mostly occurs when SD card writing falls behind during FAST rate
            xQueueReset(fluke_event_queue);
            xQueueSendToBack(fluke_event_queue, &event, 0);
            ESP_LOGW(TAG, "Event queue reset");
        }
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
