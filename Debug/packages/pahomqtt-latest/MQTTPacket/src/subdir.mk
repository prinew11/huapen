################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTConnectClient.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTConnectServer.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTDeserializePublish.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTFormat.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTPacket.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTSerializePublish.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTSubscribeClient.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTSubscribeServer.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTUnsubscribeClient.c \
../packages/pahomqtt-latest/MQTTPacket/src/MQTTUnsubscribeServer.c 

OBJS += \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTConnectClient.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTConnectServer.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTDeserializePublish.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTFormat.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTPacket.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTSerializePublish.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTSubscribeClient.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTSubscribeServer.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTUnsubscribeClient.o \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTUnsubscribeServer.o 

C_DEPS += \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTConnectClient.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTConnectServer.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTDeserializePublish.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTFormat.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTPacket.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTSerializePublish.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTSubscribeClient.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTSubscribeServer.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTUnsubscribeClient.d \
./packages/pahomqtt-latest/MQTTPacket/src/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
packages/pahomqtt-latest/MQTTPacket/src/%.o: ../packages/pahomqtt-latest/MQTTPacket/src/%.c
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DDEBUG -I"D:\RT-ThreadStudio\workspace\07" -I"D:\RT-ThreadStudio\workspace\07\applications" -I"D:\RT-ThreadStudio\workspace\07\board\CubeMX_Config\Inc" -I"D:\RT-ThreadStudio\workspace\07\board" -I"D:\RT-ThreadStudio\workspace\07\libraries\Board_Drivers\lcd" -I"D:\RT-ThreadStudio\workspace\07\libraries\Board_Drivers" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers\CMSIS\Include" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers\config" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers" -I"D:\RT-ThreadStudio\workspace\07\libraries\STM32F4xx_HAL\CMSIS\Device\ST\STM32F4xx\Include" -I"D:\RT-ThreadStudio\workspace\07\libraries\STM32F4xx_HAL\STM32F4xx_HAL_Driver\Inc" -I"D:\RT-ThreadStudio\workspace\07\packages\aht10-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\ap3216c-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\cJSON-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\icm20608-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\onenet-latest\inc" -I"D:\RT-ThreadStudio\workspace\07\packages\pahomqtt-latest\MQTTClient-RT" -I"D:\RT-ThreadStudio\workspace\07\packages\pahomqtt-latest\MQTTPacket\src" -I"D:\RT-ThreadStudio\workspace\07\packages\rw007-v2.0.1\inc" -I"D:\RT-ThreadStudio\workspace\07\packages\rw007-v2.0.1" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\dfs\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\sensors" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\spi" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\wlan" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\finsh" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\compilers\common\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\compilers\newlib" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\io\poll" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\ipc" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\lwip-2.0.3\src\include\netif" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\lwip-2.0.3\src\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\port" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\netdev\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\impl" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\socket" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\libcpu\arm\common" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-ThreadStudio\workspace\07\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

