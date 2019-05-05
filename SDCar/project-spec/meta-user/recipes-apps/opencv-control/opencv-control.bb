#
# This file is the opencv-control recipe.
#

SUMMARY = "Simple opencv-control application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://opencv-control.cc \
	   file://cardQueue.h \
	   file://cards.h \
	   file://PN532_rfid.h \
	   file://acl.h \
	   file://config.hpp \
	   file://README.txt \
	   file://utils.hpp \
           file://Makefile \
		  "

S = "${WORKDIR}"

DEPENDS += " opencv uiotools"

do_compile() {
	     oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 opencv-control ${D}${bindir}
}
