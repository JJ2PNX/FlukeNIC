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

#ifndef __SETTINGS_H__
#define __SETTINGS_H__

#include <stdint.h>
#include "esp_err.h"

#define HOST_SIZE 64
#define TZ_SIZE 32
#define IP_SIZE 32

typedef enum {
    FL_8840A = 0x01,
    FL_NTPUSE = 0x02,
    FL_LOGLOCAL = 0x04,
    FL_LOGFLUSH = 0x08,
    FL_LOGSKIPOV = 0x10,
    FL_UDPOUT = 0x20,
    FL_WIFIAP = 0x40,
} settings_flags_t;

typedef enum {
    LOGROT_OFF = 0,
    LOGROT_HOURLY,
    LOGROT_DAYLY,
    LOGROT_LINE
} logrot_t;

struct settings_st {
    uint8_t flags;
    char hostname[HOST_SIZE];
    char ntp_server[HOST_SIZE];
    char timezone[TZ_SIZE];
    uint32_t log_lines;
    uint8_t log_rot;
    char peer_ip[IP_SIZE];
    uint16_t peer_port;
    uint16_t local_port;
};

extern struct settings_st settings;
esp_err_t settings_load(void);
esp_err_t settings_save(void);

#endif