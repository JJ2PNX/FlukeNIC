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

#ifndef __RTC_PCF2129_H__
#define __RTC_PCF2129_H__

#include "time.h"

esp_err_t rtc_pcf2129_init(void);
esp_err_t rtc_pcf2129_gettime(struct tm *stm);
esp_err_t rtc_pcf2129_settime(const struct tm *stm);
esp_err_t rtc_pcf2129_hctosys(void);
esp_err_t rtc_pcf2129_systohc(void);

#endif