// Derived from esp-idf sample code
/* WiFi Connection Example using WPS

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/

/*
   This example demonstrates how to use WPS.
   It supports two modes, which can be selected in menuconfig.

   WPS_TYPE_PBC:
        Start ESP32 and it will enter WPS PBC mode. Then push WPS button on the router.
        ESP32 will receive SSID and password, and connect to the router.

   WPS_TYPE_PIN:
        Start ESP32, you'll see an eight-digit PIN number in log output.
        Enter the PIN code on the router and then the ESP32 will get connected to router.
*/

#include "freertos/FreeRTOS.h"
#include "freertos/event_groups.h"
#include "esp_wifi.h"
#include "esp_log.h"
#include "esp_wps.h"
#include "esp_event.h"
#include "nvs_flash.h"
#include <string.h>
#include "fluke.h"
#include "settings.h"

#define WPS_MODE WPS_TYPE_PBC

#define MAX_RETRY_ATTEMPTS     2

#ifndef PIN2STR
#define PIN2STR(a) (a)[0], (a)[1], (a)[2], (a)[3], (a)[4], (a)[5], (a)[6], (a)[7]
#define PINSTR "%c%c%c%c%c%c%c%c"
#endif

static const char *TAG = "WiFi";
static esp_wps_config_t wps_config = WPS_CONFIG_INIT_DEFAULT(WPS_MODE);
static wifi_config_t wps_ap_creds[MAX_WPS_AP_CRED];
static int s_ap_creds_num = 0;
static int s_retry_num = 0;
static bool is_wps = false;

// STA 成功 CHANNEL_CHANGE, START, CHANNEL_CHANGE, STA_CONNECTED
// STA 失敗 CHANNEL_CHANGE, START, DISCONNECTED, DISCONNECTED 
// WPS 成功 CHAN_CHANGE, START, CHAN_CHANGE, DISCONNECTED, CONNECTED, EPS_ER_SUCCESS, DISCONNECTED, CONNECTED, 
// WPS 失敗 CHAN_CHANGE, START, WPS_ER_TIMEOUT, STA_STOP

// 接続後にアクセス禁止 ... STA_DISCONNECTED, ... _STA_STOP
static void wifi_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    switch (event_id) {
        case WIFI_EVENT_STA_START:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_START");
            if(!is_wps){
                esp_wifi_connect(); // Not required for WPS
            }
            break;
        case WIFI_EVENT_STA_DISCONNECTED:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_DISCONNECTED");
            if (s_retry_num < MAX_RETRY_ATTEMPTS) {
                esp_wifi_connect();
                s_retry_num++;
                ESP_LOGI(TAG, "retry to connect to the AP(%d/%d)",s_retry_num, MAX_RETRY_ATTEMPTS);
            } else {
                ESP_LOGI(TAG, "Failed to connect!");
                // xEventGroupSetBits(s_wifi_event_group, WIFI_FAIL_BIT);
                //ESP_ERROR_CHECK(esp_wifi_stop() );
                //ESP_ERROR_CHECK(esp_wifi_deinit());
            }
            break;
        case WIFI_EVENT_STA_WPS_ER_SUCCESS:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_WPS_ER_SUCCESS");
            {
                wifi_event_sta_wps_er_success_t *evt =
                    (wifi_event_sta_wps_er_success_t *)event_data;
                int i;

                if (evt) {
                        s_ap_creds_num = evt->ap_cred_cnt;
                    for (i = 0; i < s_ap_creds_num; i++) {
                        memcpy(wps_ap_creds[i].sta.ssid, evt->ap_cred[i].ssid,
                               sizeof(evt->ap_cred[i].ssid));
                        memcpy(wps_ap_creds[i].sta.password, evt->ap_cred[i].passphrase,
                               sizeof(evt->ap_cred[i].passphrase));
                    }
                    /* If multiple AP credentials are received from WPS, connect with first one */
                    ESP_LOGI(TAG, "Connecting to SSID: %s, Passphrase: %s",
                             wps_ap_creds[0].sta.ssid, wps_ap_creds[0].sta.password);
                    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wps_ap_creds[0]) );
                }
                /*
                 * If only one AP credential is received from WPS, there will be no event data and
                 * esp_wifi_set_config() is already called by WPS modules for backward compatibility
                 * with legacy apps. So directly attempt connection here.
                 */
                // Also credential is saved to nvs by esp_wifi_set_config()
                ESP_ERROR_CHECK(esp_wifi_wps_disable());
                fluke_annun(ANNUN_SRQ, false); // Turn off SRQ for WPS end
                esp_wifi_connect();
            }
            wifi_config_t wifi_config;
            esp_err_t err = esp_wifi_get_config(WIFI_IF_STA, &wifi_config);
            if (err == ESP_OK) {
                ESP_LOGI(TAG, "SSID=%s", wifi_config.sta.ssid);
                ESP_LOGI(TAG, "PASS=%s", wifi_config.sta.password);
            }
            break;
        case WIFI_EVENT_STA_WPS_ER_FAILED:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_WPS_ER_FAILED");
            ESP_ERROR_CHECK(esp_wifi_wps_disable());
            ESP_ERROR_CHECK(esp_wifi_wps_enable(&wps_config));
            ESP_ERROR_CHECK(esp_wifi_wps_start(0));
            break;
        case WIFI_EVENT_STA_WPS_ER_TIMEOUT:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_WPS_ER_TIMEOUT");
            ESP_ERROR_CHECK(esp_wifi_wps_disable());
            fluke_annun(ANNUN_SRQ, false); // Turn off SRQ for WPS end
            //ESP_ERROR_CHECK(esp_wifi_wps_enable(&wps_config));
            //ESP_ERROR_CHECK(esp_wifi_wps_start(0));
            break;
        case WIFI_EVENT_STA_WPS_ER_PIN:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_WPS_ER_PIN");
            /* display the PIN code */
            wifi_event_sta_wps_er_pin_t* event = (wifi_event_sta_wps_er_pin_t*) event_data;
            ESP_LOGI(TAG, "WPS_PIN = " PINSTR, PIN2STR(event->pin_code));
            break;
        case WIFI_EVENT_STA_STOP:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_STOP");
            break;
        case WIFI_EVENT_HOME_CHANNEL_CHANGE:
            ESP_LOGI(TAG, "WIFI_EVENT_HOME_CHANNEL_CHANGE");
            wifi_event_home_channel_change_t *e = (wifi_event_home_channel_change_t*)event_data;
            ESP_LOGI(TAG, "old_chan=%d, new_chan=%d", e->old_chan, e->new_chan);
            break;
        case WIFI_EVENT_STA_CONNECTED:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_CONNECTED");
            break;
        case WIFI_EVENT_AP_START:
            ESP_LOGI(TAG, "WIFI_EVENT_AP_START");
            break;
        case WIFI_EVENT_AP_STOP:
            ESP_LOGI(TAG, "WIFI_EVENT_AP_STOP");
            break;
        case WIFI_EVENT_AP_STACONNECTED:
            ESP_LOGI(TAG, "WIFI_EVENT_AP_STACONNECTED");
            break;
        case WIFI_EVENT_AP_STADISCONNECTED:
            ESP_LOGI(TAG, "WIFI_EVENT_AP_STADISCONNECTED");
            break;
        case WIFI_EVENT_AP_PROBEREQRECVED:
            ESP_LOGI(TAG, "WIFI_EVENT_AP_PROBEREQRECVED");
            break;
        default:
            ESP_LOGI(TAG, "EVENT %ld not handled", event_id);
            break;
    }
}

static void got_ip_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
    ESP_LOGI(TAG, "got ip=" IPSTR, IP2STR(&event->ip_info.ip));
}

static void wifi_setup_sta(void)
{
    esp_netif_t *netif_sta = esp_netif_create_default_wifi_sta();
    wifi_config_t wifi_config_sta = {
        .sta = {
            //.ssid = EXAMPLE_ESP_WIFI_SSID,
            //.password = EXAMPLE_ESP_WIFI_PASS,
            /* Authmode threshold resets to WPA2 as default if password matches WPA2 standards (password len => 8).
             * If you want to connect the device to deprecated WEP/WPA networks, Please set the threshold value
             * to WIFI_AUTH_WEP/WIFI_AUTH_WPA_PSK and set the password with length and format matching to
             * WIFI_AUTH_WEP/WIFI_AUTH_WPA_PSK standards.
             */
            .threshold.authmode = WIFI_AUTH_WPA2_PSK,
            .sae_pwe_h2e = WPA3_SAE_PWE_BOTH,
            .sae_h2e_identifier = "",
        },
    };

    // Load credential from nvs
    esp_err_t err = esp_wifi_get_config(WIFI_IF_STA, &wifi_config_sta);
    if(err != ESP_OK){
        ESP_LOGI(TAG, "esp_wifi_get_config: %s", esp_err_to_name(err));
    } else {
        ESP_LOGI(TAG, "SSID=%s", wifi_config_sta.sta.ssid);
        ESP_LOGI(TAG, "PASS=%s", wifi_config_sta.sta.password);
    }
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config_sta) );
    // Set hostname
    esp_netif_set_hostname(netif_sta, settings.hostname);
}

static void wifi_setup_ap(void)
{
    esp_netif_t *netif_ap = esp_netif_create_default_wifi_ap();
    wifi_config_t wifi_config_ap = {
        .ap = {
            .ssid = CONFIG_FLUKENIC_WIFIAP_SSID,
            .ssid_len = strlen(CONFIG_FLUKENIC_WIFIAP_SSID),
            .channel = CONFIG_FLUKENIC_WIFIAP_CHAN,
            .password = CONFIG_FLUKENIC_WIFIAP_PASSWD,
            .max_connection = 2,
            .authmode = WIFI_AUTH_WPA2_PSK,
            .pmf_cfg = {
                .required = false,
            },
        },
    };
    
    esp_err_t err = esp_netif_dhcps_stop(netif_ap);
    if (err != ESP_OK && err != ESP_ERR_ESP_NETIF_DHCP_ALREADY_STOPPED) {
        ESP_ERROR_CHECK(err);
    }
    // Remove the default gateway provided by DHCP
    esp_netif_ip_info_t ip_info;
    ESP_ERROR_CHECK(esp_netif_get_ip_info(netif_ap, &ip_info));
    ip_info.gw.addr = 0;
    ESP_ERROR_CHECK(esp_netif_set_ip_info(netif_ap, &ip_info));

    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_AP, &wifi_config_ap));
    ESP_ERROR_CHECK_WITHOUT_ABORT(esp_netif_dhcps_start(netif_ap));
}

void wifi_start_wps(void)
{
    ESP_LOGI(TAG, "wifi_start_wps");
    is_wps = true;
    s_retry_num = 0;
    fluke_annun(ANNUN_SRQ, true); // Lit SRQ for WPS 
    ESP_ERROR_CHECK(esp_wifi_restore());
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());
    ESP_ERROR_CHECK(esp_wifi_wps_enable(&wps_config));
    ESP_ERROR_CHECK(esp_wifi_wps_start(0));
    ESP_LOGI(TAG, "Waiting for wps association");
}

void wifi_start(void)
{
    ESP_LOGI(TAG, "wifi_start");
    is_wps = false;
    s_retry_num = 0;
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &got_ip_event_handler, NULL));

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    if(settings.flags & FL_WIFIAP) {
        ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_APSTA));
        wifi_setup_sta();
        wifi_setup_ap();
    } else {
        ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
        wifi_setup_sta();
    }

    // Disable WiFi Power save
    // esp_wifi_set_ps (WIFI_PS_NONE);
    ESP_ERROR_CHECK(esp_wifi_start());
    esp_wifi_set_max_tx_power(settings.txpwr);
}

void wifi_getconf_sta(char *ssid, char *passwd)
{
    ESP_LOGI(TAG, "wifi_getconf_sta");
    wifi_config_t wifi_config_sta;
    esp_err_t err = esp_wifi_get_config(WIFI_IF_STA, &wifi_config_sta);
    if(err == ESP_OK){
        strcpy(ssid, (char *)wifi_config_sta.sta.ssid);
        strcpy(passwd, (char *)wifi_config_sta.sta.password);
    } else {
        ssid[0] = '\0';
        passwd[0] = '\0';
    }
}

void wifi_setconf_sta(const char *ssid, const char *passwd)
{
    ESP_LOGI(TAG, "wifi_setconf_sta");
    wifi_config_t wifi_config_sta = {
        .sta = {
            .threshold.authmode = WIFI_AUTH_WPA2_PSK,
            .sae_pwe_h2e = WPA3_SAE_PWE_BOTH,
            .sae_h2e_identifier = "",
        },
    };
    strncpy((char *)wifi_config_sta.sta.ssid, ssid, sizeof(wifi_config_sta.sta.ssid));
    strncpy((char *)wifi_config_sta.sta.password, passwd, sizeof(wifi_config_sta.sta.password));
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config_sta) );
}