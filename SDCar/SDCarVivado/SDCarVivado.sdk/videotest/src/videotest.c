#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/ioctl.h>

#define CHARVIDEO_IOC_MAGIC  '8'

#define CHARVIDEO_IOCHALT    _IO(CHARVIDEO_IOC_MAGIC, 0)
#define CHARVIDEO_IOCSTART    _IO(CHARVIDEO_IOC_MAGIC, 1)
#define CHARVIDEO_IOCSTATUS    _IO(CHARVIDEO_IOC_MAGIC, 2)

#define CHARVIDEO_IOCQHEIGHT _IOR(CHARVIDEO_IOC_MAGIC,  3, int)
#define CHARVIDEO_IOCQWIDTH _IOR(CHARVIDEO_IOC_MAGIC,  4, int)
#define CHARVIDEO_IOCQPIXELLEN _IOR(CHARVIDEO_IOC_MAGIC,  5, int)
#define CHARVIDEO_IOCQBUFSIZE _IOR(CHARVIDEO_IOC_MAGIC,  6, int)

int main(int argc, char *argv[]) {
	if (argc < 3) {
		printf("Usage ./%s /dev/videoX out_name\n", argv[0]);
		return -1;
	}

	int fd;
	fd = open(argv[1], O_RDONLY);
	if (fd < 0) {
		printf("Can't open %s\n", argv[1]);
		return -1;
	}

	ioctl(fd, CHARVIDEO_IOCSTATUS);

	int h, w, l;
	h = ioctl(fd, CHARVIDEO_IOCQHEIGHT);
	w = ioctl(fd, CHARVIDEO_IOCQWIDTH);
	l = ioctl(fd, CHARVIDEO_IOCQPIXELLEN);

	unsigned char buf[h * w * l];
	read(fd, buf, w * h * l);
	close(fd);

	char filename[100];
	sprintf(filename, "/home/root/%s.ppm", argv[2]);
	FILE *outimg = fopen(filename, "wt");
	if (l == 1)
		fprintf(outimg, "P5\n%d %d\n%d\n", w, h, 255);
	else
		fprintf(outimg, "P6\n%d %d\n%d\n", w, h, 255);

	printf("Opened %s\n", filename);

	if (l != 1) { //BGR to RGB
		for (int i = 0; i < w * h * l; i += 3) {
			uint8_t aux = buf[i + 2];
			buf[i + 2] = buf[i];
			buf[i] = aux;
		}
	}

	fwrite(buf, 1, w * h * l, outimg);

	fclose(outimg);

	return 0;
}
