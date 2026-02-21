URLPREFIX ?= http://flukenic.local
.PHONY: build merge.bin
all: build merge.bin
build:
	idf.py build
ota: ota_firm ota_spiffs
ota_firm:
	curl $(URLPREFIX)/ota/ --no-buffer --data-binary @- < build/firmware.bin
ota_spiffs:
	curl $(URLPREFIX)/ota/spiffs --no-buffer --data-binary @- < build/spiffs.bin
merge.bin:
	esptool.py --chip esp32 merge_bin -o merge.bin \
		0x001000 build/bootloader/bootloader.bin \
		0x008000 build/partition_table/partition-table.bin \
		0x00d000 build/ota_data_initial.bin \
		0x010000 build/firmware.bin \
		0x310000 build/spiffs.bin
clean:
	idf.py fullclean