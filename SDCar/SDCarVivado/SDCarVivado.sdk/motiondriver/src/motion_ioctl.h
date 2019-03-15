#ifndef MOTION_IOCTL_H_
#define MOTION_IOCTL_H_

#include <linux/ioctl.h>

#define MOTION_IOC_MAGIC  '9'

#define MOTION_IOCTSETENABLE    _IO(MOTION_IOC_MAGIC, 0)
#define MOTION_IOCTSETDIR	_IO(MOTION_IOC_MAGIC, 1)

#define MOTION_IOC_MAXNR 1

#endif
