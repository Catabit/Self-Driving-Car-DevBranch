/*
 * Triple buffering example for Xilinx VDMA v6.2 IP-core,
 * loosely based on Ales Ruda's work.
 *
 *  Created on: 17.3.2013
 *      Author: Ales Ruda
 *         web: www.arbot.cz
 *
 *  Modified on: 18.12.2014
 *       Author: Lauri Vosandi
 *          web: lauri.vosandi.com
 */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <uiotools/uiotools.h>
#include <time.h>
#include "cameraiic.h"



//#include "charvideo_ioctl.h"
//#######################################

#include <linux/ioctl.h>

#define CHARVIDEO_IOC_MAGIC  '8'

#define CHARVIDEO_IOCHALT    _IO(CHARVIDEO_IOC_MAGIC, 0)
#define CHARVIDEO_IOCSTART    _IO(CHARVIDEO_IOC_MAGIC, 1)
#define CHARVIDEO_IOCSTATUS    _IO(CHARVIDEO_IOC_MAGIC, 2)

#define CHARVIDEO_IOCQHEIGHT _IOR(CHARVIDEO_IOC_MAGIC,  3, int)
#define CHARVIDEO_IOCQWIDTH _IOR(CHARVIDEO_IOC_MAGIC,  4, int)
#define CHARVIDEO_IOCQPIXELLEN _IOR(CHARVIDEO_IOC_MAGIC,  5, int)
#define CHARVIDEO_IOCQBUFSIZE _IOR(CHARVIDEO_IOC_MAGIC,  6, int)

#define CHARVIDEO_IOC_MAXNR 6

//########################################

#define CSI_2_RX_NAME "MIPI_CSI_2_RX"
#define D_PHY_RX_NAME "MIPI_D_PHY_RX"

#define MIPI_MAP_SIZE 0x10000
#define MIPI_PIPELINE_ENABLE 0x2
#define MIPI_PIPELINE_RESET 0x1

#define IMAGEDUMP
#define BURSTDUMP 5



void pixelSplit(uint32_t pixel10bit, int rLeftOffset, uint8_t *r, uint8_t *g, uint8_t *b) {
	//(2bit unused)(8bit red)(2bit unused)(8bit blue)(2bit unused)(8bit green)(2bit unused)
	int gLeftOffset = rLeftOffset+10;
	int bLeftOffset = rLeftOffset+20;

	uint16_t temp = ((pixel10bit<<rLeftOffset) >> (32-10-rLeftOffset));
	*r = temp;

	temp = ((pixel10bit<<gLeftOffset) >> (32-10-rLeftOffset));
	*b = temp;

	temp = ((pixel10bit<<bLeftOffset) >> (32-10-rLeftOffset));
	*g = temp;
}


int main() {

    //Reset the MIPI video pipeline
	int fd;
	void *ptr;
	uint32_t height,width, pixellen;

	fd = findDeviceByName(CSI_2_RX_NAME);
	ptr = mmap(NULL, MIPI_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	*((unsigned *)(ptr)) = MIPI_PIPELINE_ENABLE;
	munmap(ptr, MIPI_MAP_SIZE);
	close(fd);

	fd = findDeviceByName(D_PHY_RX_NAME);
	ptr = mmap(NULL, MIPI_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	*((unsigned *)(ptr)) = MIPI_PIPELINE_ENABLE;
	munmap(ptr, MIPI_MAP_SIZE);
	close(fd);

	int camerafd=-1;
	camerafd = cameraInit();
	if (camerafd<0) {
		printf("Camera error!\n\n");
		return -1;
	}


	printf("Successfully setup the camera!\n");

	int test = open("/dev/video", O_RDONLY);
	if(!test){
		printf("Can't open file\n");
		return -1;
	}
	printf("IOCTL TESTS:\n");
	width = ioctl(test, CHARVIDEO_IOCQWIDTH);
	height = ioctl(test, CHARVIDEO_IOCQHEIGHT);
	pixellen = ioctl(test, CHARVIDEO_IOCQPIXELLEN);

	printf("width: %d\n", width);
	printf("height: %d\n", height);
	printf("pixellen: %d\n", pixellen);
	printf("bufsize: %d\n", ioctl(test, CHARVIDEO_IOCQBUFSIZE));

	ioctl(test, CHARVIDEO_IOCSTART);


	unsigned char buf[height*width*pixellen];
	clock_t begin = clock();
	int result = read(test, buf, height*width*pixellen);
	clock_t end = clock();
	printf("Read %d\n", result);


	double time_spent1 = (double)(end - begin)/1000.0; //in microseconds
	begin = clock();


	char filename[100];
	sprintf(filename, "/home/root/outimg0.ppm");
	FILE *outimg = fopen(filename, "w");
	//fprintf(outimg, "P3\n%d %d\n%d\n", width, height, 255);
	fprintf(outimg, "P6\n%d %d\n%d\n", width, height, 255);

	printf("Opened %s\n", filename);

	fwrite(buf, 1, width*height*pixellen, outimg);

	fclose(outimg);


	close(test);
	end = clock();
	double time_spent2 = (double)(end - begin)/1000.0; //in microseconds

	printf("Time spent read()ing %f ms\n", time_spent1);
	printf("Time spent writing file %f ms\n", time_spent2);

    //cam_reset(camerafd);
	return 0;
}
