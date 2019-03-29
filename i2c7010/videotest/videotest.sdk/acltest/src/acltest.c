#include "acl.h"
#define QUARTER 0.75
#define SFERT 0.15

void Run(int fd) {
	//int16_t x, y, z;
	float x, y, z;

	printf("ACL Demo Launched");

	float first_x = 0, first_y = 0, first_z = 0;
	float current_heading_speed = 0;
	float current_speed_x = 0, current_speed_y = 0, last_speed_x = 0, last_speed_y = 0;
	float average_accl_x = 0, average_accl_y = 0, average_accl_z = 0;
	float accl_x = 0, accl_y = 0;

	//Finding initial error offset
	ACL_ReadAccelG(fd, &first_x, &first_y, &first_z);

	while (1) {

		average_accl_x = 0;
		average_accl_y = 0;
		average_accl_z = 0;
		for (int i = 0; i < 10; i++) {
			//ReadAccel(fd, &x, &y, &z);
			ACL_ReadAccelG(fd, &x, &y, &z);
			//printf("X=%f\tY=%f\tZ=%f\n\r", x, y, z);
			usleep(100000);
			average_accl_x += x;
			average_accl_y += y;
			average_accl_z += z;
		}

		average_accl_x /= 10;
		average_accl_y /= 10;
		average_accl_z /= 10;


		if(average_accl_x <= first_x -first_x*(float)SFERT && average_accl_x >= first_x + first_x*(float)SFERT
				&& average_accl_y <= first_y -first_y*(float)SFERT && average_accl_y >= first_y + first_y*(float)SFERT
				&& average_accl_z <= first_z -first_z*(float)SFERT && average_accl_z >= first_z + first_z*(float)SFERT) {
			printf("Speed = %f\n", current_heading_speed);
		} else {

		//Calculating speed
		accl_x = average_accl_x * (float) 9.8;  // m/s^2
		accl_y = average_accl_y * (float) 9.8; // m/s^2

		current_speed_x = last_speed_x + accl_x;
		current_speed_y = last_speed_y + accl_y;
		//printf("X_Acl = %f     Y_Acl = %f    ", accl_x, accl_y);

		//Resulted vector
		current_heading_speed = sqrt(pow(current_speed_x, 2) + pow(current_speed_y, 2));
		printf("Speed = %f\n", current_heading_speed);
		}
	}
}

void Initialize(int fd) {
	ACL_SetMeasure(fd, 0);
	ACL_SetGRange(fd, ACL_PAR_GRANGE_PM4G);
	ACL_SetMeasure(fd, 1);
	ACL_CalibrateOneAxisGravitational(fd, ACL_PAR_AXIS_ZP);
	sleep(1); // After calibration, some delay is required for the new settings
			  // to take effect.
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

