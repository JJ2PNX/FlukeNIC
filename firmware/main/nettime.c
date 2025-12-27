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

#include <time.h>
#include <sys/time.h>
#include "esp_log.h"
#include "esp_netif_sntp.h"
#include "esp_sntp.h"
#include "rtc_pcf2129.h"
#include "nettime.h"

static const char *TAG = "NetTime";

static void nettime_notify_cb(struct timeval *tv)
{
    sntp_sync_status_t status = sntp_get_sync_status();
    ESP_LOGI(TAG, "nettime_notify_cb status=%d", status);
    if(status == SNTP_SYNC_STATUS_COMPLETED){
        ESP_LOGI(TAG, "Sync completed, Set RTC");
        rtc_pcf2129_systohc();
        sntp_set_sync_mode(SNTP_SYNC_MODE_SMOOTH);
        //esp_sntp_stop();
    }
}

#define TIMESERVER "time.nist.gov"

void nettime_set(const char *timeserver)
{
    ESP_LOGI(TAG, "nettime_set");
    esp_sntp_config_t config = ESP_NETIF_SNTP_DEFAULT_CONFIG(TIMESERVER);
    if(timeserver){
        config.num_of_servers = 1;
        config.servers[0] = strdup(timeserver);
    }
    config.sync_cb = nettime_notify_cb;
    esp_netif_sntp_init(&config);
}