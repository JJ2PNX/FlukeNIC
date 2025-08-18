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

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include <esp_log.h>
#include <nvs_flash.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "esp_event.h"
#include "esp_check.h"
#include <esp_wifi.h>
#include "nvs_flash.h"
#include "driver/gpio.h"
#include "mdns.h"
#include "fluke.h"
#include "webserver.h"
#include "mount.h"
#include "rtc_pcf2129.h"
#include "wifi.h"
#include "nettime.h"
#include "settings.h"
#include "logger.h"

#define GPIO_LED    32
#define GPIO_EVIN   04
#define GPIO_EVOUT  02

static const char *TAG = "Main";

// Save console log to sdcard(for debug)
// Record drop may occur when used with FAST sampling
#ifdef CONFIG_FLUKENIC_LOG_SDCARD
static FILE* log_file = NULL;

static int my_log_vprintf(const char *fmt, va_list args) {
    if (log_file) {
        vfprintf(log_file, fmt, args);
        fflush(log_file);
        fsync(fileno(log_file));
    }
    return vprintf(fmt, args);
}

static void init_logging_to_file(void) {
    struct stat st;
    if(stat("/sdcard/log", &st) == -1){
        mkdir("/sdcard/log", 0755);
    }
    time_t tt;
    time(&tt);
    struct tm stm;
    localtime_r(&tt, &stm);
    char filename[128];
    sprintf(filename, "/sdcard/log/log%02d%02d%02d-%02d%02d%02d.txt",
        stm.tm_year %100, stm.tm_mon +1, stm.tm_mday, stm.tm_hour, stm.tm_min, stm.tm_sec);
    log_file = fopen(filename, "w");
    if (log_file) {
        esp_log_set_vprintf(my_log_vprintf);
    } else {
        ESP_LOGE("LOG", "Failed to open log file");
    }
}
#endif

static void connect_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    ESP_LOGI(TAG, "connect_handler");
    fluke_annun(ANNUN_LISTEN, true);
    if(settings.flags & FL_NTPUSE){
        nettime_set(settings.ntp_server);
    }
}

static void disconnect_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    ESP_LOGI(TAG, "disconnect_handler");
    fluke_annun(ANNUN_LISTEN, false);
}

static void srq_repeative_hits(void)
{
    TickType_t tick = pdTICKS_TO_MS(xTaskGetTickCount());
    static TickType_t prevtick = 0;
    static int nhits = 0;
    if(tick - prevtick < 500){
        nhits ++;
    } else {
        nhits = 0;
    }
    prevtick = tick;
    if(nhits > 5){
        nhits = 0;
        wifi_start_wps();
    }
}

static QueueHandle_t interruptQueue;
static void IRAM_ATTR gpio_interrupt_handler(void *args)
{
    int pinNumber = (int)args;
    xQueueSendFromISR(interruptQueue, &pinNumber, NULL);
}

static fluke_config_t config_last;

static void extrig_task(void *params)
{
    int pinNumber;
    while(true){
        if(xQueueReceive(interruptQueue, &pinNumber, pdMS_TO_TICKS(100))){
            if(config_last.flags & FL_EXTRIG && extsrc < 0){
                int level = gpio_get_level(pinNumber);
                if( (extsrc == -1 && level == 1) || (extsrc == -2 && level == 0)){
                    // BNC Trig
                    fluke_trig();
                }
            }
        } else {
            if(config_last.flags & FL_EXTRIG && extsrc > 0){
                time_t tt;
                static time_t ttprev;
                time(&tt);
                if((tt != ttprev) && (tt % extsrc == 0)){
                    // Timer Trig
                    fluke_trig();
                    ttprev = tt;
                }
            }
        }
    }
}

QueueHandle_t fluke_event_queue;

void app_main(void)
{
    // fluke_init must run at first stage of startup, otherwise fluke does not recognize card.
    // see esp-idf document to improve startup time.
    // https://docs.espressif.com/projects/esp-techpedia/en/latest/esp-friends/advanced-development/performance/reduce-boot-time.html
    ESP_ERROR_CHECK(fluke_init(100, &fluke_event_queue));
    
    gpio_reset_pin(GPIO_LED);
    gpio_reset_pin(GPIO_EVIN);
    gpio_reset_pin(GPIO_EVOUT);
    gpio_set_direction(GPIO_LED, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_EVIN, GPIO_MODE_INPUT);
    gpio_set_direction(GPIO_EVOUT, GPIO_MODE_OUTPUT);

    gpio_set_level(GPIO_LED, 1);

    // External trigger
    gpio_set_intr_type(GPIO_EVIN, GPIO_INTR_ANYEDGE);
    gpio_install_isr_service(0);
    gpio_isr_handler_add(GPIO_EVIN, gpio_interrupt_handler, (void *)GPIO_EVIN);
    interruptQueue = xQueueCreate(10, sizeof(int));
    assert(interruptQueue);
    assert(xTaskCreate(extrig_task, "extrig_task", 3072, NULL, 1, NULL) == pdPASS);

    // Load settings
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_LOGI(TAG, "nvs_flash_erase");
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);
    settings_load();
    fluke_setmodel(settings.flags & FL_8840A ? true : false);

    // Set Date/Time from RTC
    setenv("TZ", settings.timezone, 1);
    tzset();
    rtc_pcf2129_init();
    rtc_pcf2129_hctosys();

    // Network
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &connect_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_STA_DISCONNECTED, &disconnect_handler, NULL));
    wifi_start();

    // mDNS
    ESP_ERROR_CHECK(mdns_init());
    mdns_hostname_set(settings.hostname);

    // Mount storage
    if(mount_spiffs("/spiffs") != ESP_OK){
        ESP_LOGE(TAG, "SPIFFS mount failed, please update spiffs");
    }
    if(mount_sdcard("/sdcard") != ESP_OK){
        ESP_LOGW(TAG, "SD mount failed");
    }

    // Save console log to sdcard
#ifdef CONFIG_FLUKENIC_LOG_SDCARD
    init_logging_to_file();
#endif

    httpd_handle_t server = start_webserver();
    assert(server);
    
    fluke_event_t event;
    // Clear fluke event queue
    while(xQueueReceive(fluke_event_queue, (void *)&event, 0) == pdPASS) continue;
    // Get fluke event and process it
    while(true){
        if(xQueueReceive(fluke_event_queue, (void *)&event, pdMS_TO_TICKS(100))==pdPASS){
            switch(event.type){
            case EVENT_MEAS:
                //ESP_LOGI(TAG, "EVENT_MEAS count=%d, range=%d", event.meas.count, event.meas.range);
                ws_send_fluke_event(server, event);
                logger_record(&event, &config_last);
                break;
            case EVENT_CONFIG:
                ESP_LOGI(TAG, "EVENT_CONFIG func=%d, range=%d, speed=%d, flags=%d", 
                    event.config.func, event.config.range, event.config.speed, event.config.flags);
                config_last = event.config;
                ws_send_fluke_event(server, event);
                break;
            case EVENT_ERROR:
                ESP_LOGI(TAG, "EVENT_ERROR error=%d", event.errnum);
                ws_send_fluke_event(server, event);
                break;
            case EVENT_SRQ:
                ESP_LOGI(TAG, "EVENT_SRQ SRQ Pressed");
                srq_repeative_hits();
                break;
            case EVENT_LOCAL:
                ESP_LOGI(TAG, "EVENT_LOCAL LOCAL Pressed");
                if(~settings.flags & FL_LOGLOCAL) break;
                // fall through
            case EVENT_AUX: // Web rec button
                event.type = EVENT_LOCAL;
                //fluke_gotolocal();
                logger_startstop();
                ws_send_fluke_event(server, event);
                break;
            default:
                ESP_LOGW(TAG, "UNKNOWN EVENT");
                break;
            }
        }
 
        // LED blinker
        if(pdTICKS_TO_MS(xTaskGetTickCount()) % 1000 > 500){
            gpio_set_level(GPIO_LED, 1);
        } else {
            gpio_set_level(GPIO_LED, 0);
        }
    }
}