package:
	petalinux-package --boot --format BIN --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/design_1_wrapper.bit --u-boot --force

deploy:./images/linux/BOOT.BIN ./images/linux/image.ub
	ls /media/catabit/BOOT/
	rm -f /media/catabit/BOOT/BOOT.BIN /media/catabit/BOOT/image.ub
	cp ./images/linux/BOOT.BIN /media/catabit/BOOT/
	cp ./images/linux/image.ub /media/catabit/BOOT/
	umount /media/catabit/BOOT/

hardware-change:
	petalinux-config --get-hw-description=/home/catabit/Zybo/project_2/project_2.sdk/ --oldconfig
	petalinux-build
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

hardware-change-deploy:
	petalinux-config --get-hw-description=/home/catabit/Zybo/project_2/project_2.sdk/ --oldconfig
	petalinux-build
	make package
	make deploy	
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

jtag:
	petalinux-package --prebuilt --clean
	petalinux-package --prebuilt --fpga images/linux/design_1_wrapper.bit --force
	cp pre-built/linux/implementation/design_1_wrapper.bit pre-built/linux/implementation/download.bit
	petalinux-boot --jtag --prebuilt 3
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

