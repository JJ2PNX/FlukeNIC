set(requires "")
idf_build_get_property(target IDF_TARGET)

idf_component_register(SRCS "ota.c" "logger.c" "settings.c" "nettime.c" "wifi.c" "file_server.c" "mount.c" "webserver.c" "fluke.c" "main.c"
                     "file_server.c" "mount.c" "rtc_pcf2129.c" "json_parser.c" "logger.c" "wifi.c" "ota.c"
                    INCLUDE_DIRS "."
                    REQUIRES ${requires}
                    EMBED_FILES "favicon.ico" "dir_header.html" "dir_footer.html" "settings_header.html" "simple_ota.html")

spiffs_create_partition_image(spiffs spiffs_root FLASH_IN_PROJECT "spiffs_root")