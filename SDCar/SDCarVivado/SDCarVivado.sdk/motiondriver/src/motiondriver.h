#ifndef MOTIONDRIVER_H_
#define MOTIONDRIVER_H_

#define CONTROL_REG_OFFSET 0
#define SERVO_REG_OFFSET 4
#define MOTOR_REG_OFFSET 8

struct motiondriver_local {
	int irq;
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
	struct motors_dev *chardev;
	struct module *this;
};

#endif
