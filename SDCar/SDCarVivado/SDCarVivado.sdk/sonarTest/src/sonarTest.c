#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <uiotools/uiotools.h>


#define CUSTOM_IP_MAP_SIZE                  0x1000
//#define CUSTOM_IP_BASEADDR	                0x40000000
#define CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET   0


#define CLK_FREQ 50000000.0f // FCLK0 frequency not found in xparameters.h


//147us is 2.54 cm
//CLK_usPeriod is (CLK_usPERIOD*2.54)/147

const double clk_to_cm=(((1000000.0f/CLK_FREQ)*2.54f)/147.0f);



int main(void) {
	int 		fd;
	void 		*ptr;

	fd = findDeviceByName("sonarDriver");
	printf("const %g\n", clk_to_cm);

	if (fd < 1) {
		fprintf(stderr,"Invalid UIO device file.\n");
		return -1;
	}

	// mmap the UIO device
	ptr = mmap(NULL, CUSTOM_IP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	printf("Mapped mem.\n");
	while (1) {
		double dist;
		unsigned clk_edges = *((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET));

		dist = clk_edges * clk_to_cm;


		printf("dist (cm) = %g\n", dist);
		usleep(100000);
   }

	munmap(ptr, CUSTOM_IP_MAP_SIZE);
	return 0;
}





