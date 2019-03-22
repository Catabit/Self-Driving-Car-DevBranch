#include "powermon.h"


void Run(int fd) {
	//int16_t x, y, z;
	float current = 0, voltage = 0;

	printf("Pmon Demo Launched");

	while(1){
		Pmon_VoltageCurrentRead(fd, &voltage, &current);
		printf("Voltage= %f      Current= %f \n");
		usleep(100000);
	}

}

void Initialize(int fd) {
	SetContConversion(fd);
	printf("Initialize worked\n");
}


int main()
{
	int fd = init();
	printf("Let's start\n");
	Initialize(fd);
	Run(fd);

	return 0;
}
