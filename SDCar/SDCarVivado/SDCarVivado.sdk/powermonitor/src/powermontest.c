#include "powermon.h"


void Run(int fd) {
	//int16_t x, y, z;
	float current = 0, voltage = 0;

	printf("Pmon Demo Launched");

	for (int i=0; i<10; i++){
		//SetContConversion(fd);
		usleep(100000);
		Pmon_VoltageCurrentRead(fd, &voltage, &current);
		//readV(fd);
		//readStatus(fd);
		printf("Voltage= %f      Current= %f \n");

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
	close(fd);
	return 0;
}
