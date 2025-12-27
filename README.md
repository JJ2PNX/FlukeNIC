# FlukeNIC - Fluke 884x Web Control & Logger Card

## Overview
The Fluke 884x is an outstanding multimeter.  
Even after 40+ years since its production, most units still function properly and maintain excellent accuracy.  
It's likely more reliable than many cheap modern benchtop meters.  
Its value increases when used in ways unique to benchtop instruments, beyond what handheld meters offer.  
GPIB was the traditional method, but a bit far from modern solution.  
I developed built-in web control and logger card that replaces the original GPIB board.  
NIC ... acronym of Network Interface Card.

![ScreenShot1](images/screenshot1.png)

![pcb1](images/pcb1.jpg)

![cutout1](images/cutout1.jpg)

---

## Features of This Card
- **WiFi Connectivity**
- **Web-based Control**
- **SD Card Stand-alone Logging**
- **Built-in, No modifications to the main unit required**

---

## How to Get

### 1. Hardware
Currently, no pre-assembled units or kits are available. Please build from the PCB.  
PCB fabrication files (UnitA/B.zip) are for JLCPCB.  
All necessary design materials are in the *hardware* directory.

### 2. Firmware
#### Method 1: Using ESP-IDF

1. Set up the ESP-IDF environment.
2. Clone the repository.
3. Refer to `firmware/README.md` for firmware download instructions.

#### Method 2: Using Flash Download Tool

1. Download **Flash Download Tool** from Espressif.  
   https://docs.espressif.com/projects/esp-test-tools/en/latest/esp32/production_stage/tools/flash_download_tool.html
2. Download `merge.bin` from the `firmware` directory to flash memory at address `0x0`.

![ScreenShot2](images/FlashDownloadTool.png)

---

## Help / How to Use

### 1. WiFi Connection
By default, FlukeNIC operates as a WiFi access point (AP).
- **SSID:** FlukeNIC  
- **Password:** 88408842  
- **IP Address:** 192.168.4.1  

You can configure WiFi Station settings by connecting to this AP, or by using the WPS push-button method.

#### WPS Push-Button Setup

1. Press the **SRQ** button repeatedly until the **SRQ** indicator lights.
2. When WPS succeeds, the **SRQ** indicator turns off and the **LISTEN** indicator turns on.

Settings are saved to flash memory, so the **LISTEN** indicator should light automatically upon the next power-on.

**Fluke Indicator Summary:**
| Indicator | Meaning |
|-----------|---------|
| SRQ | WiFi WPS Request |
| LISTEN | WiFi Associated |
| TALK | Logging is Active |ESP_ERROR_CHECK

---

### 2. Browser Access
Currently, only DHCP-assigned IPs are supported.  
In most cases, you can access it via:
http://flukenic.local/
If that doesn't work, check the DHCP-assigned IP address on your WiFi router.  
If you got the web interface, you probably won’t need further instructions!

---

### 3. Logging
microSD card is required.  
Start/stop operation can be performed using web-control or front panel **LOCAL** button.  
When logging is active, **TALK** indicator lights up.  
Results can be obtained using File Manager menu, or directly from microSD card, But hot swap is not supported.

---

### 4. Configuration
- Be sure to select the correct model (**8840 / 8842**).
- Other settings are optional.
- All configurations are saved to flash memory.

---

### 5. Troubleshooting
Communication with the Fluke unit is based on reverse-engineering and may malfunction with unexpected inputs.  
In such cases, use the **“Last bytes”** function in the Info menu to inspect the last communication log.  
Feel free to contact me — there may be a fix. Contributions are welcome!

---

### 6. Additional Notes
- SD card hot-swapping is not supported.  
Please insert or remove the card only when the power is off.
- BNC output is not implimented now.