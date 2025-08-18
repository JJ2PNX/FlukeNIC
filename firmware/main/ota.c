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

#include "esp_ota_ops.h"
#include "esp_log.h"
#include "ota.h"

static const char *TAG = "ota";
#define SPIFFS_PART_LABEL "spiffs"

static void print_part_info(const esp_partition_t *part)
{
    printf("label: %s\n", part->label);
    printf("address: 0x%lx\n", part->address);
    printf("size: 0x%lx\n", part->size);
    printf("type: %d\n", part->type);
    printf("subtype: %d\n", part->subtype);
}

static esp_err_t ota_handler(httpd_req_t *req)
{
    if(req->method != HTTP_POST){
        // Send simple ota webpage
        extern const unsigned char simple_ota_start[] asm("_binary_simple_ota_html_start");
        extern const unsigned char simple_ota_end[]   asm("_binary_simple_ota_html_end");
        const size_t simple_ota_size = (simple_ota_end - simple_ota_start);
        httpd_resp_send_chunk(req, (const char *)simple_ota_start, simple_ota_size);
        httpd_resp_sendstr_chunk(req, NULL);
        return ESP_OK;
    }

    // Handle POST
    bool is_spiffs = strstr(req->uri,"spiffs") ? true : false;
    ESP_LOGI(TAG, "Update %s", is_spiffs ? "spiffs" : "firmware");
    const esp_partition_t *part;

    ESP_ERROR_CHECK(httpd_resp_set_type(req, "text/plain"));
    if(is_spiffs){
        ESP_ERROR_CHECK(httpd_resp_sendstr_chunk(req, "Update spiffs"));
        part = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_SPIFFS, SPIFFS_PART_LABEL);
    } else {
        ESP_ERROR_CHECK(httpd_resp_sendstr_chunk(req, "Update firmware"));
        part = esp_ota_get_next_update_partition(NULL);
    }

    print_part_info(part);

    size_t size = req->content_len;
    ESP_LOGI(TAG, "Size: %d bytes", size);
    esp_ota_handle_t handle;
    
    if(is_spiffs){
        ESP_ERROR_CHECK(esp_partition_erase_range(part, 0, part->size));
    } else {
        ESP_ERROR_CHECK(esp_ota_begin(part, size, &handle));
    }

    size_t left = size;
    size_t offset = 0;
    size_t nrecv;
    int n4k = 0;
    char buff[512];
    while(left){
        nrecv = httpd_req_recv(req, buff, sizeof(buff));
        if (nrecv <= 0) {
            if (nrecv == HTTPD_SOCK_ERR_TIMEOUT) {
                continue;
            }
            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Download failed");
            ESP_LOGW(TAG, "Download failed");
            return ESP_FAIL;
        }

        if(is_spiffs){
            ESP_ERROR_CHECK(esp_partition_write(part, offset, buff, nrecv));
        } else {
            ESP_ERROR_CHECK(esp_ota_write(handle, buff, nrecv));
        }
        offset += nrecv;
        left -= nrecv;
        if(offset /4096 > n4k){
            httpd_resp_sendstr_chunk(req, ".");
            n4k ++;
        }
    }

    if(!is_spiffs){
        ESP_ERROR_CHECK(esp_ota_end(handle));
        ESP_ERROR_CHECK(esp_ota_set_boot_partition(part));
    }
    
    httpd_resp_sendstr_chunk(req, "Done\n");
    httpd_resp_sendstr_chunk(req, NULL);
    ESP_LOGI(TAG, "Done");
    return ESP_OK;
}

static httpd_uri_t uri_ota = {
    .uri       = "/ota/*",
    .method    = HTTP_ANY,
    .handler   = ota_handler,
    .user_ctx  = NULL
};

void ota_register_uri_handler(httpd_handle_t server)
{
    ESP_ERROR_CHECK(httpd_register_uri_handler(server, &uri_ota));
}