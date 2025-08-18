#ifndef __SETTINGS_H__
#define __SETTINGS_H__

#include <stdint.h>
#include "esp_err.h"

#define HOST_SIZE 64
#define TZ_SIZE 32

typedef enum {
    FL_8840A = 0x01,
    FL_NTPUSE = 0x02,
    FL_LOGLOCAL = 0x04,
    FL_LOGFLUSH = 0x08,
    FL_LOGSKIPOV = 0x10
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
};

extern struct settings_st settings;
esp_err_t settings_load(void);
esp_err_t settings_save(void);

#endif