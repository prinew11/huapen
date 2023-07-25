/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2023-5-10      ShiHao       first version
 */

#include <rtthread.h>
#include <rtdevice.h>
#include <board.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <rtdbg.h>
#include <onenet.h>
#include <drv_lcd.h>
#include <rttlogo.h>

#define DBG_TAG "main"
#define DBG_LVL         DBG_LOG
#include <rtdbg.h>

#define DBG_ENABLE
#define DBG_COLOR
#define DBG_SECTION_NAME    "onenet.sample"
#if ONENET_DEBUG
#define DBG_LEVEL           DBG_LOG
#else
#define DBG_LEVEL           DBG_INFO
#endif /* ONENET_DEBUG */

#ifdef FINSH_USING_MSH
#include <finsh.h>

#include "aht10.h"

#include "ap3216c.h"

#include "icm20608.h"

#define PIN_KEY1        GET_PIN(C, 1)      // PC1:  KEY1         --> KEY
#define PIN_WK_UP       GET_PIN(C, 5)      // PC5:  WK_UP        --> KEY

#define PIN_BEEP        GET_PIN(B, 0)      // PA1:  BEEP         --> BEEP (PB1)


int onenet_publish_digit(int argc, char **argv)
{
    if (argc != 3)
    {
        LOG_E("onenet_publish [datastream_id]  [value]  - mqtt pulish digit data to OneNET.");
        return -1;
    }

    if (onenet_mqtt_upload_digit(argv[1], atoi(argv[2])) < 0)
    {
        LOG_E("upload digit data has an error!\n");
    }

    return 0;
}

int onenet_publish_string(int argc, char **argv)
{
    if (argc != 3)
    {
        LOG_E("onenet_publish [datastream_id]  [string]  - mqtt pulish string data to OneNET.");
        return -1;
    }

    if (onenet_mqtt_upload_string(argv[1], argv[2]) < 0)
    {
        LOG_E("upload string has an error!\n");
    }

    return 0;
}

/* onenet mqtt command response callback function */
static void onenet_cmd_rsp_cb(uint8_t *recv_data, size_t recv_size, uint8_t **resp_data, size_t *resp_size)
{
    char res_buf[] = { "cmd is received!\n" };

    LOG_D("recv data is %.*s\n", recv_size, recv_data);

    /* user have to malloc memory for response data */
    *resp_data = (uint8_t *) ONENET_MALLOC(strlen(res_buf));

    strncpy((char *)*resp_data, res_buf, strlen(res_buf));

    *resp_size = strlen(res_buf);
}

/* set the onenet mqtt command response callback function */
int onenet_set_cmd_rsp(int argc, char **argv)
{
    onenet_set_cmd_rsp_cb(onenet_cmd_rsp_cb);
    return 0;
}
MSH_CMD_EXPORT(onenet_set_cmd_rsp, set cmd response function);
#endif /* FINSH_USING_MSH */


/* 中断回调 */
void irq_callback(void *args)
{
    rt_uint32_t sign = (rt_uint32_t) args;
    switch (sign)
    {

//    case PIN_WK_UP :
//        rt_pin_write(PIN_BEEP,PIN_HIGH);
//        LOG_D("WK_UP interrupt. beep on.");
//        break;
    case PIN_KEY1 :
        rt_pin_write(PIN_BEEP,PIN_LOW);
        LOG_D("KEY1 interrupt. beep off.");
        break;
    default:
        LOG_E("error sign= %d !", sign);
        break;
    }
}

int main(void)
{
    rt_wlan_connect("kuku", "prinew111");
    onenet_mqtt_init();
    //onenet_upload_cycle();
    float humidity, temperature;
    float brightness;
    int count=0;
    //温度湿度
    aht10_device_t dev;
    ap3216c_device_t devv;
    icm20608_device_t devvv = RT_NULL;

    const char *i2c_bus_name = "i2c3";
    const char *i2c_bus_namee = "i2c2";
    rt_thread_mdelay(2000);


    dev = aht10_init(i2c_bus_name);
    devv = ap3216c_init(i2c_bus_namee);
    devvv = icm20608_init(i2c_bus_namee);
     //启动读取线程

    while (count++<=1000)
        {
            /* 读取湿度 */
            humidity = aht10_read_humidity(dev);
           LOG_D("humidity   : %d.%d %%", (int)humidity, (int)(humidity * 10) % 10);

            /* 读取温度 */
            temperature = aht10_read_temperature(dev);
          LOG_D("temperature: %d.%d", (int)temperature, (int)(temperature * 10) % 10);

            /* 读光照强度值 */
                    brightness = ap3216c_read_ambient_light(devv);
                     LOG_D("current brightness: %d.%d(lux).", (int)brightness, ((int)(10 * brightness) % 10));


                     icm20608_device_t devvv = RT_NULL;

                     rt_err_t result;
                     /* 初 始 化 icm20608 传 感 器 */
                     devvv = icm20608_init(i2c_bus_namee);

                     if (devvv == RT_NULL)
                     {
                     LOG_E("The sensor initializes failure");
                     return 0;
                     }
                     else
                     {
                     //LOG_D("The sensor initializes success");
                     }
                     /* 对 icm20608 进 行 零 值 校 准： 采 样 10 次， 求 取 平 均 值 作 为 零 值 */
                     result = icm20608_calib_level(devvv, 10);
                     if (result == RT_EOK)
                     {
                     //LOG_D("The sensor calibrates success");
                     LOG_D("accel_offset: X%6d Y%6d Z%6d", devvv->accel_offset.x, devvv->accel_offset.y, devvv->accel_offset.z);
                     }

                     else
                     {
                     LOG_E("The sensor calibrates failure");
                     icm20608_deinit(devvv);
                     return 0;
                     }

                         rt_int16_t accel_x, accel_y, accel_z;
                     /* 读 取 三 轴 加 速 度 */
                     result = icm20608_get_accel(devvv, &accel_x, &accel_y, &accel_z);
                     if (result == RT_EOK)
                     {
                     LOG_D("current accelerometer: accel_x%6d, accel_y%6d, accel_z%6d",
                     accel_x, accel_y, accel_z);
                     }
                     else
                     {
                     LOG_E("The sensor does not work");
                     break;
                     }










          //lcd
        lcd_clear(WHITE);

        lcd_set_color(WHITE, RED);
        lcd_show_string(10, 0, 16, "Hello!");

        lcd_set_color(WHITE, BLACK);
        lcd_show_string(10, 26, 32, "Temperature:");
        lcd_show_string(10, 90, 32, "Humidity:");
        lcd_show_string(10, 160, 32, "Light:");

        lcd_set_color(WHITE, BLUE);
        lcd_show_num(30, 26+32, temperature, 2, 32);
        lcd_show_string(65,26+32,32,"C");
        lcd_show_num(30, 90+32, humidity, 2, 32);
        lcd_show_string(65, 90+32, 32, "%");
        lcd_show_num(30, 160+32, brightness, 2, 32);
        lcd_show_string(80, 160+32, 32, "lux");

        //上传数据
        // temperature=(int)temperature+(int)(temperature*10)%10;
        // humidity=(int)humidity+(int)(humidity*10)%10;
        // brightness=(int)brightness+(int)(brightness*10)%10;
         rt_thread_mdelay(100);
         onenet_mqtt_upload_digit("temperature",(int)temperature);
         rt_thread_mdelay(100);
         onenet_mqtt_upload_digit("humidity", (int)humidity);
         rt_thread_mdelay(100);
         onenet_mqtt_upload_digit("brightness",(int)brightness);



        //蜂鸣器
             /* 设置按键引脚为输入模式 */
                rt_pin_mode(PIN_KEY1, PIN_MODE_INPUT_PULLUP);
                rt_pin_mode(PIN_WK_UP, PIN_MODE_INPUT_PULLUP);

                /* 设置蜂鸣器引脚为输出模式 */
                rt_pin_mode(PIN_BEEP, PIN_MODE_OUTPUT);

                /* 设置按键中断模式与中断回调函数 */
                rt_pin_attach_irq(PIN_KEY1, PIN_IRQ_MODE_FALLING, irq_callback, (void *) PIN_KEY1);
                rt_pin_attach_irq(PIN_WK_UP, PIN_IRQ_MODE_FALLING, irq_callback, (void *) PIN_WK_UP);

                /* 使能中断 */
                rt_pin_irq_enable(PIN_KEY1, PIN_IRQ_ENABLE);
                rt_pin_irq_enable(PIN_WK_UP, PIN_IRQ_ENABLE);


//                result = icm20608_calib_level(devvv, 10);
//                          if (result == RT_EOK)
//                          {
//                          LOG_D("The sensor calibrates success");
//                          LOG_D("accel_offset: X%6d Y%6d Z%6d", devvv->accel_offset.x, devvv->accel_offset.y, devvv->accel_offset.z);
//                          }
//
//                          else
//                          {
//                          LOG_E("The sensor calibrates failure");
//                          icm20608_deinit(devvv);
//                          return 0;
//                          }

 //判断并报警
                          int topple;
                          int X,Y,Z;

                          X=devvv->accel_offset.x;
                          Y=devvv->accel_offset.y;
                          Z=devvv->accel_offset.z;


                                   if(abs(Y)<=10000){
                                       topple=0;
                                       rt_pin_write(PIN_BEEP,PIN_LOW);
                                       LOG_D("KEY1 interrupt. beep off.");
                                       rt_thread_mdelay(100);
                                       onenet_mqtt_upload_digit("judge", topple);

                                   }
                                   else{
                                       topple=1;
                                       rt_pin_write(PIN_BEEP,PIN_HIGH);
                                       LOG_D("WK_UP interrupt. beep on.");
                                       rt_thread_mdelay(100);
                                       onenet_mqtt_upload_digit("judge", topple);
                                       break;

                                   }

                                   rt_thread_mdelay(2000);



        }

    return 0;
}

