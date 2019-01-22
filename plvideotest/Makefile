package:
	petalinux-package --boot --format BIN --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/design_1_wrapper.bit --u-boot --force

deploy-kernel:./images/linux/BOOT.BIN ./images/linux/image.ub
	ls /media/catabit/BOOT/
	rm -f /media/catabit/BOOT/BOOT.BIN /media/catabit/BOOT/image.ub
	cp ./images/linux/BOOT.BIN /media/catabit/BOOT/
	cp ./images/linux/image.ub /media/catabit/BOOT/

deploy-rootfs:
	sudo -v
	ls /media/catabit/rootfs/
	sudo rm -rf /media/catabit/rootfs/*
	sudo cp ./images/linux/rootfs.cpio /media/catabit/rootfs/
	cd /media/catabit/rootfs; \
	sudo pax -rvf rootfs.cpio &>/dev/null

unmount:
	umount /media/catabit/BOOT/
	umount /media/catabit/rootfs/

hardware-change:
	petalinux-config --get-hw-description=/home/catabit/Zybo/videotest/videotest.sdk/ --oldconfig
	petalinux-build
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

hardware-change-deploy:
	sudo -v
	petalinux-config --get-hw-description=/home/catabit/Zybo/videotest/videotest.sdk/ --oldconfig
	petalinux-build
	make package
	make deploy-kernel
	make deploy-rootfs
	make unmount
	paplay /usr/share/sounds/ubuntu/notifications/Amsterdam.ogg

cameratest:
	cd ../videotest/videotest.sdk/cameratest/Debug/; \
	scp cameratest.elf root@192.168.1.2:
	ssh root@192.168.1.2 ./cameratest.elf
	scp root@192.168.1.2:outimg.ppm .
	eog outimg.ppm
