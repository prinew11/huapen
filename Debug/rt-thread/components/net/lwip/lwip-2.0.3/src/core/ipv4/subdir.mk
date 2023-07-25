################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/autoip.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/dhcp.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/etharp.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/icmp.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/igmp.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4_addr.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4_frag.c 

OBJS += \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/autoip.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/dhcp.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/etharp.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/icmp.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/igmp.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4_addr.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/autoip.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/dhcp.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/etharp.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/icmp.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/igmp.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4_addr.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/%.o: ../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ipv4/%.c
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DDEBUG -I"D:\RT-ThreadStudio\workspace\07" -I"D:\RT-ThreadStudio\workspace\07\applications" -I"D:\RT-ThreadStudio\workspace\07\board\CubeMX_Config\Inc" -I"D:\RT-ThreadStudio\workspace\07\board" -I"D:\RT-ThreadStudio\workspace\07\libraries\Board_Drivers\lcd" -I"D:\RT-ThreadStudio\workspace\07\libraries\Board_Drivers" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers\CMSIS\Include" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers\config" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers" -I"D:\RT-ThreadStudio\workspace\07\libraries\STM32F4xx_HAL\CMSIS\Device\ST\STM32F4xx\Include" -I"D:\RT-ThreadStudio\workspace\07\libraries\STM32F4xx_HAL\STM32F4xx_HAL_Driver\Inc" -I"D:\RT-ThreadStudio\workspace\07\packages\aht10-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\ap3216c-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\cJSON-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\icm20608-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\onenet-latest\inc" -I"D:\RT-ThreadStudio\workspace\07\packages\pahomqtt-latest\MQTTClient-RT" -I"D:\RT-ThreadStudio\workspace\07\packages\pahomqtt-latest\MQTTPacket\src" -I"D:\RT-ThreadStudio\workspace\07\packages\rw007-v2.0.1\inc" -I"D:\RT-ThreadStudio\workspace\07\packages\rw007-v2.0.1" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\dfs\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\sensors" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\spi" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\wlan" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\finsh" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\compilers\common\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\compilers\newlib" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\io\poll" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\ipc" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\lwip-2.0.3\src\include\netif" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\lwip-2.0.3\src\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\port" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\netdev\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\impl" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\socket" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\libcpu\arm\common" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-ThreadStudio\workspace\07\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

