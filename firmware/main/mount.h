#ifndef __MOUNT_H__
#define __MOUNT_H__

esp_err_t mount_sdcard(const char* base_path);
esp_err_t mount_spiffs(const char* base_path);

#endif