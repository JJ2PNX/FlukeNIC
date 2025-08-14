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

#include "sdkconfig.h"
#include "esp_log.h"
#include "esp_check.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "time.h"
#include "driver/i2c_master.h"
#include "rtc_pcf2129.h"
#include "sys/time.h"
#include "rtc_pcf2129.h"

#define SCL_IO_PIN          22
#define SDA_IO_PIN          21
#define MASTER_FREQUENCY    400000
#define RTCDEV_ADDR         0x51
#define BCD2BIN(X)          ((((X)>>4)*10) + ((X)&0xF))
#define BIN2BCD(X)          (((X)/10)<<4 | (X)%10)

static const char *TAG = "RTC2129";
static i2c_master_dev_handle_t hdev;
static bool rtcok = false;

esp_err_t rtc_pcf2129_init(void)
{
    esp_err_t ret;
    i2c_master_bus_config_t i2c_bus_config = {
        .clk_source = I2C_CLK_SRC_DEFAULT,
        .i2c_port = I2C_NUM_0,
        .scl_io_num = SCL_IO_PIN,
        .sda_io_num = SDA_IO_PIN,
        .glitch_ignore_cnt = 7,
        .flags.enable_internal_pullup = true,
    };
    i2c_master_bus_handle_t hbus;
    ESP_GOTO_ON_ERROR(i2c_new_master_bus(&i2c_bus_config, &hbus), error, TAG, "i2c_new_master_bus failed, RTC disabled");

    i2c_device_config_t i2c_dev_conf = {
        .scl_speed_hz = MASTER_FREQUENCY,
        .device_address = RTCDEV_ADDR,
    };
    ESP_GOTO_ON_ERROR(i2c_master_bus_add_device(hbus, &i2c_dev_conf, &hdev), error, TAG, "i2c_master_bus_add_device failed, RTC disabled");

    // Chip setup code
    uint8_t buff[4];
    buff[0] = 0x00; // Reg addr start
    buff[1] = 0x00; // Control reg 1
    buff[2] = 0x00; // Control reg 2
    buff[3] = 0x00; // Control reg 3
    ESP_GOTO_ON_ERROR(i2c_master_transmit(hdev, buff, sizeof(buff), -1), error, TAG, "i2c_master_transmit failed, RTC disabled");
    rtcok = true;
    return ESP_OK;
error:
    rtcok = false;
    return ret;
}

esp_err_t rtc_pcf2129_gettime(struct tm *stm)
{
    if(!rtcok){
        ESP_LOGW(TAG, "%s RTC disabled", __func__);
        return ESP_OK;
    }
    // Set reg addr
    uint8_t addr = 0x03;
    ESP_RETURN_ON_ERROR(i2c_master_transmit(hdev, &addr, sizeof(addr), -1), TAG, "i2c_master_transmit");

    // Read 0x03 to 0x09
    uint8_t buff[7];
    ESP_RETURN_ON_ERROR(i2c_master_receive(hdev, buff, sizeof(buff), -1), TAG, "i2c_master_receive");

    stm->tm_sec = BCD2BIN(buff[0] & 0x7F);
    stm->tm_min = BCD2BIN(buff[1] & 0x7F);
    stm->tm_hour = BCD2BIN(buff[2] & 0x3F);
    stm->tm_mday = BCD2BIN(buff[3] & 0x3F);
    stm->tm_wday = buff[4] & 0x07;
    stm->tm_mon = BCD2BIN(buff[5] & 0x1F) - 1;
    stm->tm_year = BCD2BIN(buff[6]);
    stm->tm_year += 100;

    char strftime_buf[64];
    strftime(strftime_buf, sizeof(strftime_buf), "%c", stm);
    ESP_LOGI(TAG, "Get %s", strftime_buf);
    return ESP_OK;
}

esp_err_t rtc_pcf2129_settime(const struct tm *stm)
{
    if(!rtcok){
        ESP_LOGW(TAG, "%s RTC disabled", __func__);
        return ESP_OK;
    }
    uint8_t buff[8];
    char strftime_buf[64];
    strftime(strftime_buf, sizeof(strftime_buf), "%c", stm);
    ESP_LOGI(TAG, "Set %s", strftime_buf);
    buff[0] = 0x03; // Reg addr start
    buff[1] = BIN2BCD(stm->tm_sec);
    buff[2] = BIN2BCD(stm->tm_min);
    buff[3] = BIN2BCD(stm->tm_hour);
    buff[4] = BIN2BCD(stm->tm_mday);
    buff[5] = stm->tm_wday & 0x7;
    buff[6] = BIN2BCD(stm->tm_mon +1);
    buff[7] = BIN2BCD(stm->tm_year - 100);
    ESP_RETURN_ON_ERROR(i2c_master_transmit(hdev, buff, sizeof(buff), -1), TAG, "i2c_master_transmit");
    return ESP_OK;
}

esp_err_t rtc_pcf2129_hctosys(void)
{
    struct tm stm;
    ESP_RETURN_ON_ERROR(rtc_pcf2129_gettime(&stm), TAG, "rtc_pcf2129_gettime");
    struct timeval tv = {};
    tv.tv_sec = mktime(&stm);
    settimeofday(&tv, NULL);
    return ESP_OK;
}

esp_err_t rtc_pcf2129_systohc(void)
{
    time_t tt;
    time(&tt);
    struct tm stm;
    localtime_r(&tt, &stm);
    ESP_RETURN_ON_ERROR(rtc_pcf2129_settime(&stm), TAG, "rtc_pcf2129_settime");
    return ESP_OK;
}