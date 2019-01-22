#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <uiotools/uiotools.h>


#define CUSTOM_IP_MAP_SIZE                  0x10000
//#define CUSTOM_IP_BASEADDR	                0x40000000
#define CONTROL_REG_OFFSET   0
#define SERVO_REG_OFFSET   4
#define MOTOR_REG_OFFSET   8

#define SERVOLEFT 280
#define SERVORIGHT 400
#define SERVOCENTER (SERVOLEFT+SERVORIGHT)/2



int main(int argc, char *argv[]) {
	if (argc<2){
		printf("Usage: motion option: 0=motors, 1=steering\n");
		return 0;
	}

	int 		fd;
	void 		*ptr;

	fd = findDeviceByName("motionController");
	if (fd < 1) {
		fprintf(stderr,"Invalid UIO device file.\n");
		return -1;
	}

	// mmap the UIO device
	ptr = mmap(NULL, CUSTOM_IP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

	unsigned int enable = 1;
	unsigned int leftDir = 1;
	unsigned int rightDir = 1;

	unsigned short leftSpeed = 0;
	unsigned short rightSpeed = 0;

	unsigned option = strtoul(argv[1],NULL,0); //0 for motors, 1 for steering


	unsigned oldServo = *((unsigned *)(ptr + SERVO_REG_OFFSET));
	if (oldServo<SERVOLEFT || oldServo > SERVORIGHT)
		*((unsigned *)(ptr + SERVO_REG_OFFSET)) = SERVOCENTER;

	if (option==0){ // motion 0 dir speed time
		if (argc<5){
			printf("Usage:motion 0 dir speed time\n");
			printf("Speed is u16 [0, 65535]. Time is in us.\n");
		}else{
			leftDir = strtoul(argv[2],NULL,0);
			rightDir=leftDir;

			leftSpeed = strtoul(argv[3],NULL,0);
			rightSpeed = leftSpeed;

			int sleeptime = strtoul(argv[4],NULL,0);

			*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = (leftSpeed<<16)+rightSpeed;
			*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;
			usleep(sleeptime);
			//*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = 0;
			*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = 0;
		}
	} else if(option==1){ // motion 1 position
		if (argc<3){
			printf("Usage:motion 1 position\n");
			printf("Servo limits are [%d, %d]\n", SERVOLEFT, SERVORIGHT);
		}else{
			unsigned newServo = strtoul(argv[2],NULL,0);
			if (newServo<SERVOLEFT)
				newServo = SERVOLEFT+5;
			else if(newServo > SERVORIGHT)
				newServo = SERVORIGHT-5;

			*((unsigned *)(ptr + SERVO_REG_OFFSET)) = newServo;
			*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;
			usleep(100000);
			//*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = 0;
			*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = 0;
			}
	}

	munmap(ptr, CUSTOM_IP_MAP_SIZE);
	return 0;
}





