SUMMARY = "Recipe for  build an external mt7601u Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
	   	file://COPYING \
	   	file://core.c \
		file://debugfs.c \
		file://dma.c \
		file://dma.h \
		file://eeprom.c \
		file://eeprom.h \
		file://init.c \
		file://initvals.h \
		file://initvals_phy.h \
		file://Kbuild \
		file://mac.c \
		file://mac.h \
		file://main.c \
		file://mcu.c \
		file://mcu.h \
		file://mt7601u.h \
		file://phy.c \
		file://regs.h \
		file://trace.c \
		file://trace.h \
		file://tx.c \
		file://usb.c \
		file://usb.h \
		file://util.c \
		file://util.h \
          "

S = "${WORKDIR}"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.
