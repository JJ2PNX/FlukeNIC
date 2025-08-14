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

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <esp_log.h>
#include <sys/stat.h>
#include "fluke.h"
#include "settings.h"
#include "logger.h"

static const char *TAG = "Logger";
static FILE *fplog = NULL;
static int log_lines;
static time_t log_prevtt;
static time_t offset_tt;

void logger_startstop(void)
{
    if(!fplog){
        logger_start();
    } else {
        logger_stop();
    }
}

void logger_start()
{
    if(!fplog){
        struct stat st;
        if(stat("/sdcard/fluke", &st) == -1){
            mkdir("/sdcard/fluke", 0755);
        }
        time_t tt;
        time(&tt);
        struct tm stm;
        localtime_r(&tt, &stm);
        char filename[128];
        sprintf(filename, "/sdcard/fluke/%02d%02d%02d-%02d%02d%02d.csv",
            stm.tm_year %100, stm.tm_mon +1, stm.tm_mday, stm.tm_hour, stm.tm_min, stm.tm_sec);
        fplog = fopen(filename, "w");
        if(!fplog){
            ESP_LOGW(TAG, "Can't open %s", filename);
            return;
        }
        ESP_LOGI(TAG, "Start %s", filename);
        log_lines = 0;
        log_prevtt = 0;
        // Get local time offset
        struct tm stm0;
        gmtime_r(&tt, &stm0);
        time_t tt0 = mktime(&stm0);
        offset_tt = difftime(tt, tt0);
        fluke_annun(ANNUN_TALK, true);
    }
}

void logger_stop()
{
    if(fplog){
        fclose(fplog);
        fplog = NULL;
        ESP_LOGI(TAG, "Stop");
        fluke_annun(ANNUN_TALK, false);
    }
}

bool logger_isrec()
{
    return fplog ? true : false;
}

void logger_record(fluke_event_t *event, fluke_config_t *config)
{
    if(!fplog) return;
    struct tm stm;
    localtime_r(&event->time.tv_sec, &stm);
    const fluke_auxinfo_t *auxinfo = fluke_auxinfo(config->func, event->meas.range);

    if(event->meas.over && settings.flags & FL_LOGSKIPOV) return;

    // Rotation
    log_lines ++;
    time_t local_tt = event->time.tv_sec + offset_tt;
    if( ((settings.log_rot == LOGROT_LINE) && (log_lines == settings.log_lines))
     || ((settings.log_rot == LOGROT_HOURLY) && (local_tt %3600 < log_prevtt %3600))
     || ((settings.log_rot == LOGROT_DAYLY) && (local_tt %86400 < log_prevtt %86400)) ){
        logger_stop();
        logger_start();
    }
    log_prevtt = local_tt;
 
    // Timestamp format YY/MM/DD hh:mm:ss.sss
    if(event->meas.over){
        // Overrange
        const double value = 9.99999E9; // Overrange value
        fprintf(fplog, "%02d/%02d/%02d %02d:%02d:%02d.%03ld,%f,%s\n",
            stm.tm_year %100, stm.tm_mon +1, stm.tm_mday,
            stm.tm_hour, stm.tm_min, stm.tm_sec, event->time.tv_usec / 1000,
            event->meas.count > 0 ? value : -value, auxinfo->funcname);
    } else {
        // Normal
        fprintf(fplog, "%02d/%02d/%02d %02d:%02d:%02d.%03ld,%.*f,%s\n",
            stm.tm_year %100, stm.tm_mon +1, stm.tm_mday,
            stm.tm_hour, stm.tm_min, stm.tm_sec, event->time.tv_usec / 1000,
            auxinfo->decimal, (float)event->meas.count * auxinfo->lsb, auxinfo->funcname);
    }

    if(settings.flags & FL_LOGFLUSH){
        fflush(fplog);
        fsync(fileno(fplog));
    }
}