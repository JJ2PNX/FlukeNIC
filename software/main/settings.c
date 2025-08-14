#include "esp_check.h"
#include <esp_log.h>
#include "nvs_flash.h"
#include "settings.h"

static const char *TAG = "Settings";
#define NVS_NAMESPACE "Settings"

struct settings_st settings = {
    .flags = FL_NTPUSE|FL_LOGLOCAL|FL_LOGFLUSH,
    .hostname = "flukenic",
    .ntp_server = "time.nist.gov",
    .timezone = "GMT0",
    .log_rot = LOGROT_OFF,
    .log_lines = 0,
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