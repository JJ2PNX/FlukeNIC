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

#ifndef __FLUKE_H__
#define __FLUKE_H__

#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "esp_err.h"
#include "time.h"

typedef enum {
    EVENT_MEAS = 0,
    EVENT_CONFIG,
    EVENT_ERROR,
    EVENT_SRQ,
    EVENT_LOCAL,
    EVENT_AUX,
} fluke_event_type_t;

typedef enum {
    FL_EXTRIG = 0x1,
    FL_REARIN = 0x2,
    FL_MANUAL = 0x4,
    FL_OFFSET = 0x8,
} fluke_config_flags_t;

typedef struct {
    int count;
    int range;
    bool over;
} fluke_meas_t;

typedef struct {
    int func;
    int range;
    int speed;
    int flags;
} fluke_config_t;

typedef struct {
    fluke_event_type_t type;
    struct {
        struct timeval tv;
        struct tm tm_local;
    } timestamp;
    union {
        int errnum;
        fluke_meas_t meas;
        fluke_config_t config;
    };
} fluke_event_t;

typedef enum {
    FUNC_RETAIN = 0,
    FUNC_DCV = 1,
    FUNC_ACV = 2,
    FUNC_R2W = 3,
    FUNC_R4W = 4,
    FUNC_DCMA = 5,
    FUNC_ACMA = 6,
    FUNC_OVER
} fluke_func_t;

typedef enum {
    RANGE_RETAIN = 0,   // Note, Values are for 8842A, 8840A differs. Make consistent in fluke.c
    RANGE_R0 = 1,       // Autorange On
    RANGE_R8 = 2,       // 20mV, 20R
    RANGE_R1 = 3,       // 200mV, 200R
    RANGE_R2 = 4,       // 2V, 2kR
    RANGE_R3 = 5,       // 20V, 20kR
    RANGE_R4 = 6,       // 200V, 200kR, 200mA
    RANGE_R5 = 7,       // 1kV, 2000kR, 2000mA
    RANGE_R6 = 8,       // 20MR
    RANGE_R7 = 9,       // Autoragen Off
    RANGE_OVER
} fluke_range_t;

typedef enum {
    SPEED_RETAIN = 0,
    SPEED_SLOW = 1,
    SPEED_MID = 2,
    SPEED_FAST = 3,
    SPEED_OVER
} fluke_speed_t;

typedef enum {
    TRIG_RETAIN = 0,
    TRIG_INT = 1,
    TRIG_EXT_DELAY =2,
    TRIG_EXT_NODELAY = 3,
    TRIG_OVER
} fluke_trig_t;

typedef enum {
    ANNUN_NONE = 0,
    ANNUN_REMOTE = 0x1, // Local control is locked
    ANNUN_TALK = 0x2,
    ANNUN_LISTEN =0x4,
    ANNUN_SRQ =  0x8,
} fluke_annun_t; 

typedef struct {
    float lsb;
    int decimal;
    char *funcname;
    char *unit;
    char *rangename;
} fluke_auxinfo_t;

esp_err_t fluke_init(int queue_size, QueueHandle_t* fluke_queue);
void fluke_setmodel(bool is8840a_);
void fluke_setfrst(fluke_func_t func, fluke_range_t range, fluke_speed_t speed, fluke_trig_t trig);
void fluke_tellconfig(void);
void fluke_trig(void);
void fluke_offset(bool on);
void fluke_gotolocal();
void fluke_seleftest();
void fluke_initstate(void);
const fluke_auxinfo_t *fluke_auxinfo(fluke_func_t func, fluke_range_t range);
void fluke_annun(fluke_annun_t which, bool on);
void fluke_dumplast(FILE *fp);
void fluke_msgcount(FILE *fp);

#endif