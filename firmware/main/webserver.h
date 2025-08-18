#ifndef __WEBSERVER_H__
#define __WEBSERVER_H__

#include <esp_http_server.h>

extern int extsrc;
httpd_handle_t start_webserver(void);
esp_err_t stop_webserver(httpd_handle_t server);
esp_err_t ws_send_fluke_event(httpd_handle_t server, fluke_event_t event);

#endif