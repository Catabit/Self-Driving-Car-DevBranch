#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>
#include <math.h>
#include <stdlib.h>


/* ------------------------------------------------------------ */
/*                  Definitions                                 */
/* ------------------------------------------------------------ */
#define PMON_NO_BITS           10
#define PMON_I2C_ADDR          0x1D  //TODO
#define PMON_CONV_OFFSET_G_LSB (15.6 * 0.001) // Convert offset (g) to LSB,
											 // 15.6 mg/LSB


/* ------------------------------------------------------------ */
/*                  Parameters Definitions                      */
/* ------------------------------------------------------------ */

#define CONVERT_CONTINUOUSLY 0xC2 /*Set to convert current continuously. If readback is attempted before the first
conversion is complete, the ADM1191 asserts an acknowledge and returns all 0s in the returned data*/
#define STATUS_READ 0xC6 /* Status Read. When this bit is set, the data byte read back from the ADM1191 is the status byte.
It contains the status of the device alerts.*/






// My WORKSPACE

int init() {

	int fd;
	if ((fd = open("/dev/i2c-1", O_RDWR)) < 0) {
		/* ERROR HANDLING: you can check errno to see what went wrong */
		printf("Failed to open the i2c bus\n");
		return -1;
	}
	printf("Opened the bus\n");

	if (ioctl(fd, I2C_SLAVE_FORCE, PMON_I2C_ADDR) < 0) {
		printf("Failed to acquire bus access and/or talk to slave.\n");
		/* ERROR HANDLING; you can check errno to see what went wrong */
		return -1;
	}

	printf("Opened device \n");
	return fd;
}


int readData(int fd, uint8_t *data, uint8_t length) {
	int result = read(fd, data, length);

	if (result != length) {
		printf("Failed to read %d bytes from the i2c bus. Read %d bytes instead.\n", length, result);
		return result;
	}
	else {
		return length;
	}
}

int writeData(int fd, uint8_t *data, uint8_t length) {
	int result = write(fd, data, length);

	if (result != length) {
		printf("Failed to write %d bytes on the i2c bus. Wrote %d bytes instead.\n", length, result);
		return result;
	}
	else {
		return length;
	}
}

float ConvertADCtoVoltage(int8_t msb, int8_t lsb) {
	float result;
	uint16_t voltageCode = ((uint16_t) msb << 4) | ((uint16_t)lsb >> 4);

	result =  (26.52 / 4096) * voltageCode;
	return result;
}

float ConvertADCtoCurrent(int8_t msb, int8_t lsb) {
	float result;
	lsb &= 0b00001111;
	uint16_t currentCode = ((uint16_t) msb << 4) | (uint16_t)lsb;

	result =  ((105.84 / 4096) * currentCode) / 0.1;
	return result;
}


void Pmon_VoltageCurrentRead(int fd, float *voltage, float *current) {
	uint8_t dataBytes[3];
	readData(fd, (uint8_t *)dataBytes, 3);

	*voltage = ConvertADCtoVoltage(dataBytes[0], dataBytes[2]);
	*current = ConvertADCtoCurrent(dataBytes[1], dataBytes[2]);
}

void SetContConversion(int fd){
	writeData(fd, CONVERT_CONTINUOUSLY, 1);
}


