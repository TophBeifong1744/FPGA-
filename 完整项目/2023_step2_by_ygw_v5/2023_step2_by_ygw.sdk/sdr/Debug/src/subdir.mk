################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/dsp_algorithms.c \
../src/histogram_classifier.c \
../src/main.c \
../src/ps_decision.c \
../src/rgb_display.c \
../src/vdma_api.c 

OBJS += \
./src/dsp_algorithms.o \
./src/histogram_classifier.o \
./src/main.o \
./src/ps_decision.o \
./src/rgb_display.o \
./src/vdma_api.o 

C_DEPS += \
./src/dsp_algorithms.d \
./src/histogram_classifier.d \
./src/main.d \
./src/ps_decision.d \
./src/rgb_display.d \
./src/vdma_api.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../sdr_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


