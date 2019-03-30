SUMMARY = "Recipe for  build an external rtl8188eus Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
	   file://COPYING \
           file://core/*.c \
           file://core/*.h \
           file://core/efuse*.c \
           file://core/efuse*.h \
           file://hal/*.c \
           file://hal/*.h \
           file://hal/btc/*.c \
           file://hal/btc/*.h \
           file://hal/efuse/*.c \
           file://hal/efuse/*.h \
           file://hal/efuse/rtl8188e/*.c \
           file://hal/efuse/rtl8188e/*.h \
           file://hal/hal_hci/*.c \
           file://hal/led/*.c \
           file://hal/led/*.h \
           file://hal/OUTSRC/*.c \
           file://hal/OUTSRC/*.h \
           file://hal/OUTSRC/rtl8188e/*.c \
           file://hal/OUTSRC/rtl8188e/*.h \
           file://hal/OUTSRC-BTCoexist/*.c \
           file://hal/OUTSRC-BTCoexist/*.h \
           file://hal/phydm/*.c \
           file://hal/phydm/*.h \
           file://hal/phydm/rtl8188e/*.c \
           file://hal/phydm/rtl8188e/*.h \
           file://hal/phydm/txbf/*.c \
           file://hal/phydm/txbf/*.h \
           file://hal/rtl8188e/*.c \
           file://hal/rtl8188e/*.h \
           file://hal/rtl8188e/usb/*.c \
           file://hal/rtl8188e/usb/*.h \
           file://include/*.c \
           file://include/*.h \
           file://include/byteorder/*.c \
           file://include/byteorder/*.h \
           file://include/linux/*.c \
           file://include/linux/*.h \
           file://os_dep/*.c \
           file://os_dep/*.h \
           file://os_dep/linux/*.c \
           file://os_dep/linux/*.h \
           file://platform/*.c \
           file://platform/*.h \
          "

S = "${WORKDIR}"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.
