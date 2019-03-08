/*
* Program that parses the input file 'test' from the zybo into a outimg0.ppm image to be viewed locally
*/

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>

#define HEIGHT 720
#define WIDTH 1280

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


void main()
{
	int test = open("test", O_RDONLY);
	if(!test){
		printf("Can't open file\n");
		return -1;
	}

	unsigned char buf[HEIGHT*WIDTH*4];
	int result = read(test, buf, HEIGHT*WIDTH*4);
	//printf("Read %d\n", result);

	char filename[100];
	sprintf(filename, "outimg0.ppm");
	FILE *outimg = fopen(filename, "w");
	fprintf(outimg, "P3\n%d %d\n%d\n", WIDTH, HEIGHT, 255);

	//printf("Opened %s\n", filename);

	for (int line=0; line<HEIGHT; line++){
		for (int col=0; col<WIDTH*4; col+=4)
		{
			uint8_t r, g, b;
			unsigned int pixel = (buf[(line*(WIDTH)*(4)) + col+3] <<24) +
								(buf[(line*(WIDTH)*(4)) + col+2] <<16) +
								(buf[(line*(WIDTH)*(4)) + col+1] <<8) +
								buf[(line*(WIDTH)*(4)) + col+0];

			pixelSplit(pixel, 0, &r, &g, &b);

			//printf("Pixel: 0x%0X\n", pixel);
			fprintf(outimg, "%d %d %d ", r, g, b);
		}
		fprintf(outimg, "\n");
	}
	fclose(outimg);


	close(test);
	return 0;
}
