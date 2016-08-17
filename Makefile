# Makefile
# Build and upload a sketch using make. Arduino-Makefile must be installed.
# See `test/scripts/arduino.sh` for a working client bootstrap.

# set PROJECT_DIR to the location of the Arduboy library
# example:
#  `git clone -b develop ~/Arduboy-Project/libraries/Arduboy'
PROJECT_DIR ?= $(HOME)/Arduboy-Project/libraries/Arduboy

# set ARDUINO_DIR to the location of your Arduino installation
# default setting generated from `test/scripts/arduino.sh`
ARDUINO_DIR ?= /var/tmp/Arduboy/arduino-nightly

# set to location Arduino-Makefile install
#  https://github.com/sudar/Arduino-Makefile
# default location generated by Ubuntu
ARDMK_DIR = /usr/share/arduino

BOARD_TAG = leonardo

MONITOR_BAUDRATE = 115200

MONITOR_PORT = *

LOCAL_INO_SRCS = $(PROJECT_DIR)/examples/PerformExample/PerformExample.ino

USER_LIB_PATH = $(HOME)/Arduboy-Project/libraries

ARDUINO_LIBS = Arduboy SPI EEPROM

CXXFLAGS_STD = -std=gnu++11 -fno-threadsafe-statics

CURRENT_DIR = $(shell basename $(CURDIR))

OBJDIR = $(PROJECT_DIR)/bin/Arduboy

include $(ARDMK_DIR)/Arduino.mk
