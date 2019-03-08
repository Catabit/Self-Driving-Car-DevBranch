LOCAL_USERNAME = catabit

BOOT_PARTITION = /media/$(LOCAL_USERNAME)/BOOT
ROOTFS_PARTITION = /media/$(LOCAL_USERNAME)/rootfs
SSH_IP = 10.20.30.4
VIVADO_PROJECT_NAME = videotest
TOOLS = ../tools

PETALINUX_APPS = \
	cameratest \

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
	petalinux-config --get-hw-description=./$(VIVADO_PROJECT_NAME)/$(VIVADO_PROJECT_NAME).sdk/ --oldconfig
	petalinux-build
	make package
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

hardware-change-deploy:
	sudo -v
	make hardware-change
	make package
	make deploy-kernel
	make deploy-rootfs
	make unmount
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

fixlinks:
	$(TOOLS)/addLinks.sh $(VIVADO_PROJECT_NAME) $(PETALINUX_APPS)

cameratest:
	cd ./$(VIVADO_PROJECT_NAME)/$(VIVADO_PROJECT_NAME).sdk/cameratest/Debug/; \
	scp cameratest.elf root@$(SSH_IP):
	ssh $(SSH_IP) ./cameratest.elf
	scp $(SSH_IP):outimg.ppm .
	eog outimg.ppm

sendelfs:
	scp `find $(VIVADO_PROJECT_NAME)/ -name *.elf -path */Debug/*` root@$(SSH_IP):

resetssh:
	ssh-keygen -f "/home/$(LOCAL_USERNAME)/.ssh/known_hosts" -R $(SSH_IP)
	ssh-copy-id root@$(SSH_IP)

clean:
	$(TOOLS)/confirm.sh $@
	petalinux-build -x mrproper
