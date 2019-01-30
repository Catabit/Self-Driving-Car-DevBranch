################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/PN532/PN532.cpp \
../src/PN532/emulatetag.cpp \
../src/PN532/llcp.cpp \
../src/PN532/mac_link.cpp \
../src/PN532/snep.cpp 

OBJS += \
./src/PN532/PN532.o \
./src/PN532/emulatetag.o \
./src/PN532/llcp.o \
./src/PN532/mac_link.o \
./src/PN532/snep.o 

CPP_DEPS += \
./src/PN532/PN532.d \
./src/PN532/emulatetag.d \
./src/PN532/llcp.d \
./src/PN532/mac_link.d \
./src/PN532/snep.d 


# Each subdirectory must supply rules for building sources it contributes
src/PN532/%.o: ../src/PN532/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux g++ compiler'
	arm-linux-gnueabihf-g++ -Wall -O2 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


