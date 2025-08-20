## Build and Flash Firmware

```bash
# Move to the firmware directory
$ cd firmware

# Initialize and update submodules
$ git submodule init
$ git submodule update

# Build the firmware (this will take a while)
$ idf.py build

# Flash to device (change the device name to match your PC)
$ idf.py -p /dev/ttyUSB0 flash
