################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/adcHandler.c \
../src/cr_startup_lpc11exx.c \
../src/crp.c \
../src/main.c \
../src/sysinit.c \
../src/userHandler.c \
../src/webpage.c 

S_SRCS += \
../src/aeabi_romdiv_patch.s 

OBJS += \
./src/adcHandler.o \
./src/aeabi_romdiv_patch.o \
./src/cr_startup_lpc11exx.o \
./src/crp.o \
./src/main.o \
./src/sysinit.o \
./src/userHandler.o \
./src/webpage.o 

C_DEPS += \
./src/adcHandler.d \
./src/cr_startup_lpc11exx.d \
./src/crp.d \
./src/main.d \
./src/sysinit.d \
./src/userHandler.d \
./src/webpage.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M0 -D__USE_ROMDIVIDE -D__USE_LPCOPEN -D__LPC11EXX__ -I"D:\WIZnet\__Purple\W5500_EVB\workspace\wiznet_evb_w5500evb_board\inc" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary\Internet\httpServer" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary\Ethernet" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary\Appmod\Loopback" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\lpc_chip_11exx\inc" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\w5500evb_internet_http_server\src" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_ROMDIVIDE -g3 -mcpu=cortex-m0 -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cr_startup_lpc11exx.o: ../src/cr_startup_lpc11exx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M0 -D__USE_ROMDIVIDE -D__USE_LPCOPEN -D__LPC11EXX__ -I"D:\WIZnet\__Purple\W5500_EVB\workspace\wiznet_evb_w5500evb_board\inc" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary\Internet\httpServer" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary\Ethernet" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary\Appmod\Loopback" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\lpc_chip_11exx\inc" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\ioLibrary" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\w5500evb_internet_http_server\src" -Os -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/cr_startup_lpc11exx.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


