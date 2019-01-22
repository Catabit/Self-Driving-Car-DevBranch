BOOT_PARTITION = /media/catabit/BOOT
ROOTFS_PARTITION = /media/catabit/rootfs
SSH_IP = 192.168.1.2

package:
	petalinux-package --boot --format BIN --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/design_1_wrapper.bit --u-boot --force

deploy-kernel:./images/linux/BOOT.BIN ./images/linux/image.ub
	ls $(BOOT_PARTITION)
	rm -f $(BOOT_PARTITION)/BOOT.BIN $(BOOT_PARTITION)/image.ub
	cp ./images/linux/BOOT.BIN $(BOOT_PARTITION)
	cp ./images/linux/image.ub $(BOOT_PARTITION)

deploy-rootfs:
	sudo -v
	ls $(ROOTFS_PARTITION)
	sudo rm -rf $(ROOTFS_PARTITION)/*
	sudo cp ./images/linux/rootfs.cpio $(ROOTFS_PARTITION)
	cd $(ROOTFS_PARTITION); \
	sudo pax -rvf rootfs.cpio &>/dev/null

unmount:
	umount $(BOOT_PARTITION)
	umount $(ROOTFS_PARTITION)

hardware-change:
	petalinux-config --get-hw-description=./videotest/videotest.sdk/ --oldconfig
	petalinux-build
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

hardware-change-deploy:
	sudo -v
	petalinux-config --get-hw-description=./videotest/videotest.sdk/ --oldconfig
	petalinux-build
	make package
	make deploy-kernel
	make deploy-rootfs
	make unmount
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

cameratest:
	cd ./videotest/videotest.sdk/cameratest/Debug/; \
	scp cameratest.elf root@$(SSH_IP):
	ssh $(SSH_IP) ./cameratest.elf
	scp $(SSH_IP):outimg.ppm .
	eog outimg.ppm
