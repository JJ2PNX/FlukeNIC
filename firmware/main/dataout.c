
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
#include <sys/param.h>
#include <time.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_log.h"
#include "nvs_flash.h"
#include "esp_netif.h"
#include "esp_event.h"
#include "lwip/err.h"
#include "lwip/sockets.h"
#include "settings.h"
#include "dataout.h"

static const char *TAG = "Dataout";

void dataout_send(fluke_event_t *event, fluke_config_t *config)
{
    static int sd = 0;
    if(~settings.flags & FL_UDPOUT){
        if(sd > 0){
            close(sd);
            sd = 0;
        }
        return;
    }

    struct sockaddr_in sin_peer = {0};
    sin_peer.sin_family = AF_INET;
    sin_peer.sin_addr.s_addr = inet_addr(settings.peer_ip);
    sin_peer.sin_port = htons(settings.peer_port);
    
    if(sd == 0){
        sd = socket(AF_INET, SOCK_DGRAM, 0);
        if (sd < 0) {
            ESP_LOGE(TAG, "socket() failed, errno=%d", errno);
            return;
        }
        struct sockaddr_in sin_local = {0};
        sin_local.sin_family = AF_INET;
        sin_local.sin_addr.s_addr = htonl(INADDR_ANY);
        sin_local.sin_port = htons(settings.local_port);
        if (bind(sd, (struct sockaddr*)&sin_local, sizeof(sin_local)) < 0) {
            ESP_LOGE(TAG, "bind() failed, errno=%d", errno);
            return;
        }
    }

    const fluke_auxinfo_t *auxinfo = fluke_auxinfo(config->func, event->meas.range);    
    double value;
    int decimal;
    if(event->meas.over){
        value = (event->meas.count > 0) ? 9.99999E9 : -9.99999E9; // Overrange value
        decimal = 0;
    } else {
        value = (float)event->meas.count * auxinfo->lsb;
        decimal = auxinfo->decimal;
    }
    struct tm stm;
    localtime_r(&event->time.tv_sec, &stm);
    char buff[128];
    assert( snprintf(buff, sizeof(buff), "date=%02d/%02d/%02d,time=%02d:%02d:%02d.%03ld,func=%s,range=%s,value=%.*f\n",
        stm.tm_year %100, stm.tm_mon +1, stm.tm_mday,
        stm.tm_hour, stm.tm_min, stm.tm_sec, event->time.tv_usec / 1000,
        auxinfo->funcname, auxinfo->rangename,
        decimal, value) < sizeof(buff) );

    sendto(sd, buff, strlen(buff), 0, (struct sockaddr *)&sin_peer, sizeof(sin_peer));
}