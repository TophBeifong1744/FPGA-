################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/main.c \
../src/pl_feature_reader.c \
../src/ps_classifier.c \
../src/ps_decision_engine.c \
../src/ps_parameter_estimator.c \
../src/ps_upgrade_pipeline.c \
../src/ps_waveform_capture.c \
../src/rgb_result_display.c \
../src/vdma_display.c 

OBJS += \
./src/main.o \
./src/pl_feature_reader.o \
./src/ps_classifier.o \
./src/ps_decision_engine.o \
./src/ps_parameter_estimator.o \
./src/ps_upgrade_pipeline.o \
./src/ps_waveform_capture.o \
./src/rgb_result_display.o \
./src/vdma_display.o 

C_DEPS += \
./src/main.d \
./src/pl_feature_reader.d \
./src/ps_classifier.d \
./src/ps_decision_engine.d \
./src/ps_parameter_estimator.d \
./src/ps_upgrade_pipeline.d \
./src/ps_waveform_capture.d \
./src/rgb_result_display.d \
./src/vdma_display.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../sdr_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


