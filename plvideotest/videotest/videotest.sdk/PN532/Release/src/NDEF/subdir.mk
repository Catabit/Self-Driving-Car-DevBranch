################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/NDEF/MifareClassic.cpp \
../src/NDEF/MifareUltralight.cpp \
../src/NDEF/Ndef.cpp \
../src/NDEF/NdefMessage.cpp \
../src/NDEF/NdefRecord.cpp \
../src/NDEF/NfcAdapter.cpp \
../src/NDEF/NfcTag.cpp 

OBJS += \
./src/NDEF/MifareClassic.o \
./src/NDEF/MifareUltralight.o \
./src/NDEF/Ndef.o \
./src/NDEF/NdefMessage.o \
./src/NDEF/NdefRecord.o \
./src/NDEF/NfcAdapter.o \
./src/NDEF/NfcTag.o 

CPP_DEPS += \
./src/NDEF/MifareClassic.d \
./src/NDEF/MifareUltralight.d \
./src/NDEF/Ndef.d \
./src/NDEF/NdefMessage.d \
./src/NDEF/NdefRecord.d \
./src/NDEF/NfcAdapter.d \
./src/NDEF/NfcTag.d 


# Each subdirectory must supply rules for building sources it contributes
src/NDEF/%.o: ../src/NDEF/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux g++ compiler'
	arm-linux-gnueabihf-g++ -Wall -O2 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


