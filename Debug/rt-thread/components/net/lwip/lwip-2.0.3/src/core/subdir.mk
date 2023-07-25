################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/def.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/dns.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/inet_chksum.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/init.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/ip.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/memp.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/netif.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/pbuf.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/raw.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/stats.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/sys.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp_in.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp_out.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/timeouts.c \
../rt-thread/components/net/lwip/lwip-2.0.3/src/core/udp.c 

OBJS += \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/def.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/dns.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/inet_chksum.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/init.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ip.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/memp.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/netif.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/pbuf.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/raw.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/stats.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/sys.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp_in.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp_out.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/timeouts.o \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/udp.o 

C_DEPS += \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/def.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/dns.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/inet_chksum.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/init.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/ip.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/memp.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/netif.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/pbuf.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/raw.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/stats.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/sys.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp_in.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/tcp_out.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/timeouts.d \
./rt-thread/components/net/lwip/lwip-2.0.3/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/net/lwip/lwip-2.0.3/src/core/%.o: ../rt-thread/components/net/lwip/lwip-2.0.3/src/core/%.c
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DDEBUG -I"D:\RT-ThreadStudio\workspace\07" -I"D:\RT-ThreadStudio\workspace\07\applications" -I"D:\RT-ThreadStudio\workspace\07\board\CubeMX_Config\Inc" -I"D:\RT-ThreadStudio\workspace\07\board" -I"D:\RT-ThreadStudio\workspace\07\libraries\Board_Drivers\lcd" -I"D:\RT-ThreadStudio\workspace\07\libraries\Board_Drivers" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers\CMSIS\Include" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers\config" -I"D:\RT-ThreadStudio\workspace\07\libraries\HAL_Drivers" -I"D:\RT-ThreadStudio\workspace\07\libraries\STM32F4xx_HAL\CMSIS\Device\ST\STM32F4xx\Include" -I"D:\RT-ThreadStudio\workspace\07\libraries\STM32F4xx_HAL\STM32F4xx_HAL_Driver\Inc" -I"D:\RT-ThreadStudio\workspace\07\packages\aht10-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\ap3216c-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\cJSON-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\icm20608-latest" -I"D:\RT-ThreadStudio\workspace\07\packages\onenet-latest\inc" -I"D:\RT-ThreadStudio\workspace\07\packages\pahomqtt-latest\MQTTClient-RT" -I"D:\RT-ThreadStudio\workspace\07\packages\pahomqtt-latest\MQTTPacket\src" -I"D:\RT-ThreadStudio\workspace\07\packages\rw007-v2.0.1\inc" -I"D:\RT-ThreadStudio\workspace\07\packages\rw007-v2.0.1" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\dfs\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\sensors" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\spi" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\drivers\wlan" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\finsh" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\compilers\common\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\compilers\newlib" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\io\poll" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\libc\posix\ipc" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\lwip-2.0.3\src\include\netif" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\lwip-2.0.3\src\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\lwip\port" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\netdev\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\impl" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include\socket" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\components\net\sal\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\include" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\libcpu\arm\common" -I"D:\RT-ThreadStudio\workspace\07\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-ThreadStudio\workspace\07\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

