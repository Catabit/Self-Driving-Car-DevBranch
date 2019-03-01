################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/PN532_I2C/PN532_I2C.cpp 

OBJS += \
./src/PN532_I2C/PN532_I2C.o 

CPP_DEPS += \
./src/PN532_I2C/PN532_I2C.d 


# Each subdirectory must supply rules for building sources it contributes
src/PN532_I2C/%.o: ../src/PN532_I2C/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux g++ compiler'
	arm-linux-gnueabihf-g++ -Wall -O2 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


