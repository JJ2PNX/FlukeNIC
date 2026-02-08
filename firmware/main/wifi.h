#ifndef __WIFI_H__
#define __WIFI_H__

#define WIFI_TXPWR_MIN  8   // (2dBm)
#define WIFI_TXPWR_MAX  84  // (21dBm)
#define WIFI_TXPWR_DEF  40  // (10dBm)

void wifi_start(void);
void wifi_start_wps(void);
void wifi_getconf_sta(char *ssid, char *passwd);
void wifi_setconf_sta(const char *ssid, const char *passwd);

#endif