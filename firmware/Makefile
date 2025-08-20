URLPREFIX = http://flukenic.local
ota: ota_firm ota_spiffs
ota_firm:
	curl $(URLPREFIX)/ota/ --no-buffer --data-binary @- < build/firmware.bin
ota_spiffs:
	curl $(URLPREFIX)/ota/spiffs --no-buffer --data-binary @- < build/spiffs.bin
