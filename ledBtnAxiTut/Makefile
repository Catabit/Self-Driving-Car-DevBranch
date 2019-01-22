BOOT_PARTITION = /media/catabit/BOOT

package:
	petalinux-package --boot --format BIN --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/design_1_wrapper.bit --u-boot --force

deploy:./images/linux/BOOT.BIN ./images/linux/image.ub
	ls $(BOOT_PARTITION)
	rm -f $(BOOT_PARTITION)/BOOT.BIN $(BOOT_PARTITION)/image.ub
	cp ./images/linux/BOOT.BIN $(BOOT_PARTITION)
	cp ./images/linux/image.ub $(BOOT_PARTITION)
	umount $(BOOT_PARTITION)

hardware-change:
	petalinux-config --get-hw-description=./project_2/project_2.sdk/ --oldconfig
	petalinux-build
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

hardware-change-deploy:
	petalinux-config --get-hw-description=./project_2/project_2.sdk/ --oldconfig
	petalinux-build
	make package
	make deploy	
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

