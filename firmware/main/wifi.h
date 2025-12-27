#ifndef __WIFI_H__
#define __WIFI_H__

void wifi_start(void);
void wifi_start_wps(void);
void wifi_getconf_sta(char *ssid, char *passwd);
void wifi_setconf_sta(const char *ssid, const char *passwd);

#endif