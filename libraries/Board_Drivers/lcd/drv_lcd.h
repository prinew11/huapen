/*
 * Copyright (c) 2006-2022, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021-12-28     unknow       copy by STemwin
 */
#ifndef __DRV_LCD_H
#define __DRV_LCD_H
#include <rtthread.h>
#include "rtdevice.h"
#include <drv_common.h>
#ifdef PKG_USING_QRCODE
#include <qrcode.h>
#endif

#define LCD_BASE ((uint32_t)(0x68000000 | 0x0003FFFE)) // A18 link to DCX
#define LCD ((LCD_CONTROLLER_TypeDef *)LCD_BASE)
#define LCD_W 240
#define LCD_H 240

//LCD閲嶈鍙傛暟闆�
typedef struct
{
    uint16_t width;         //LCD 瀹藉害
    uint16_t height;        //LCD 楂樺害
    uint16_t id;            //LCD ID
    uint8_t  dir;           //妯睆杩樻槸绔栧睆鎺у埗锛�0锛岀珫灞忥紱1锛屾í灞忋��
    uint16_t wramcmd;       //寮�濮嬪啓gram鎸囦护
    uint16_t setxcmd;       //璁剧疆x鍧愭爣鎸囦护
    uint16_t setycmd;       //璁剧疆y鍧愭爣鎸囦护
}_lcd_dev;

//LCD鍙傛暟
extern _lcd_dev lcddev; //绠＄悊LCD閲嶈鍙傛暟

typedef struct
{
  __IO uint8_t _u8_REG;
  __IO uint8_t RESERVED;
  __IO uint8_t _u8_RAM;
  __IO uint16_t _u16_RAM;
}LCD_CONTROLLER_TypeDef;


//POINT_COLOR
#define WHITE            0xFFFF
#define BLACK            0x0000
#define BLUE             0x001F
#define BRED             0XF81F
#define GRED             0XFFE0
#define GBLUE            0X07FF
#define RED              0xF800
#define MAGENTA          0xF81F
#define GREEN            0x07E0
#define CYAN             0x7FFF
#define YELLOW           0xFFE0
#define BROWN            0XBC40
#define BRRED            0XFC07
#define GRAY             0X8430
#define GRAY175          0XAD75
#define GRAY151          0X94B2
#define GRAY187          0XBDD7
#define GRAY240          0XF79E

//鎵弿鏂瑰悜瀹氫箟
#define L2R_U2D  0      //浠庡乏鍒板彸,浠庝笂鍒颁笅
#define L2R_D2U  1      //浠庡乏鍒板彸,浠庝笅鍒颁笂
#define R2L_U2D  2      //浠庡彸鍒板乏,浠庝笂鍒颁笅
#define R2L_D2U  3      //浠庡彸鍒板乏,浠庝笅鍒颁笂

#define U2D_L2R  4      //浠庝笂鍒颁笅,浠庡乏鍒板彸
#define U2D_R2L  5      //浠庝笂鍒颁笅,浠庡彸鍒板乏
#define D2U_L2R  6      //浠庝笅鍒颁笂,浠庡乏鍒板彸
#define D2U_R2L  7      //浠庝笅鍒颁笂,浠庡彸鍒板乏

rt_err_t drv_lcd_init(struct rt_device *device);
void lcd_clear(rt_uint16_t color);
void lcd_address_set(rt_uint16_t x1, rt_uint16_t y1, rt_uint16_t x2, rt_uint16_t y2);
void lcd_set_color(rt_uint16_t back, rt_uint16_t fore);

void lcd_draw_point(rt_uint16_t x, rt_uint16_t y);
void lcd_draw_circle(rt_uint16_t x0, rt_uint16_t y0, rt_uint8_t r);
void lcd_draw_line(rt_uint16_t x1, rt_uint16_t y1, rt_uint16_t x2, rt_uint16_t y2);
void lcd_draw_rectangle(rt_uint16_t x1, rt_uint16_t y1, rt_uint16_t x2, rt_uint16_t y2);
void lcd_fill(rt_uint16_t x_start, rt_uint16_t y_start, rt_uint16_t x_end, rt_uint16_t y_end, rt_uint16_t color);

void lcd_show_num(rt_uint16_t x, rt_uint16_t y, rt_uint32_t num, rt_uint8_t len, rt_uint32_t size);
rt_err_t lcd_show_string(rt_uint16_t x, rt_uint16_t y, rt_uint32_t size, const char *fmt, ...);
rt_err_t lcd_show_image(rt_uint16_t x, rt_uint16_t y, rt_uint16_t length, rt_uint16_t wide, const rt_uint8_t *p);
#ifdef PKG_USING_QRCODE
rt_err_t lcd_show_qrcode(rt_uint16_t x, rt_uint16_t y, rt_uint8_t version, rt_uint8_t ecc, const char *data, rt_uint8_t enlargement);
#endif

void lcd_enter_sleep(void);
void lcd_exit_sleep(void);
void lcd_display_on(void);
void lcd_display_off(void);

void lcd_fill_array(rt_uint16_t x_start, rt_uint16_t y_start, rt_uint16_t x_end, rt_uint16_t y_end, void *pcolor);

#ifdef BSP_USING_ONBOARD_LCD_TEAREFFECT
__weak void lcd_teareffect_isr();
#endif /* BSP_USING_ONBOARD_LCD_TEAREFFECT */

#endif
