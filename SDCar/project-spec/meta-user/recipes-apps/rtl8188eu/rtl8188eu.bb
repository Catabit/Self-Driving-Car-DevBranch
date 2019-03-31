#
# This file is the rtl8188eu recipe.
#

SUMMARY = "rtl8188eu USB Wi-FI Dongle driver"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://rtl8188eu.ko \
	"
inherit module-base

S = "${WORKDIR}"

KERNEL_MODULE_AUTOLOAD+="rtl8188eu.ko"


do_install() {
	install -d ${D}${base_libdir}/modules/${KERNEL_VERSION}/extra
	install -m 0755 ${S}/rtl8188eu.ko ${D}/${base_libdir}/modules/${KERNEL_VERSION}/extra/
}

FILES_${PN} = "${base_libdir}/modules/"
