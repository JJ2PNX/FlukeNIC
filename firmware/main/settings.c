//   Copyright 2025 H.Momose / JJ2PNX
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.

// RTC wont be required, in most cases where NTP server is available.
// Set CONFIG_FLUKENIC_RTC_PCF2129 using SDK configuration, if required.

#include "esp_check.h"
#include <esp_log.h>
#include "nvs_flash.h"
#include "settings.h"
#include "wifi.h"

static const char *TAG = "Settings";
#define NVS_NAMESPACE "Settings"

struct settings_st settings = {
    .flags = FL_NTPUSE|FL_LOGLOCAL|FL_WIFIAP,
    .hostname = "flukenic",
    .ntp_server = "time.nist.gov",
    .timezone = "GMT0",
    .log_rot = LOGROT_OFF,
    .log_lines = 0,
    .peer_ip = "192.168.0.123",
    .peer_port = 12345,
    .local_port = 12345,
    .txpwr = WIFI_TXPWR_DEF,
};

esp_err_t settings_load(void)
{
    nvs_handle h;
    ESP_LOGI(TAG, "settings_load");
    esp_err_t ret = nvs_open(NVS_NAMESPACE, NVS_READONLY, &h);
    ESP_RETURN_ON_ERROR(ret, TAG, "nvs_open failed, use default settings");
    size_t len = sizeof(settings);
    ret = nvs_get_blob(h, "settings", &settings, &len);
    if(ret != ESP_OK){
        ESP_LOGE(TAG, "nvs_get_blob failed, use default settings");
    }
    nvs_close(h);
    if(settings.txpwr < WIFI_TXPWR_MIN || settings.txpwr > WIFI_TXPWR_MAX){
        settings.txpwr = WIFI_TXPWR_DEF;
    }
    return ret;
}

esp_err_t settings_save(void)
{
    nvs_handle h;
    ESP_LOGI(TAG, "settings_save");
    esp_err_t ret = nvs_open(NVS_NAMESPACE, NVS_READWRITE, &h);
    ESP_RETURN_ON_ERROR(ret, TAG, "nvs_open failed, settings not saved");
    size_t len = sizeof(settings);
    ret = nvs_set_blob(h, "settings", &settings, len);
    if(ret != ESP_OK){
        ESP_LOGE(TAG, "nvs_set_blob");
    }
    nvs_close(h);
    return ret;
}