################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32l053r8tx.s 

OBJS += \
./Startup/startup_stm32l053r8tx.o 

S_DEPS += \
./Startup/startup_stm32l053r8tx.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m0plus -g3 -DDEBUG -c -I"C:/Users/tomoy/STM32CubeIDE/test_1.8.0/L053_DMA_UART/L053_DMA_UART/CMSIS/Include" -I"C:/Users/tomoy/STM32CubeIDE/test_1.8.0/L053_DMA_UART/L053_DMA_UART/CMSIS/Device/ST/STM32L0xx/Include" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-Startup

clean-Startup:
	-$(RM) ./Startup/startup_stm32l053r8tx.d ./Startup/startup_stm32l053r8tx.o

.PHONY: clean-Startup

