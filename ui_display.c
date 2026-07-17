/*
 * ui_display.c
 *
 *  Created on: 2026年6月22日
 *      Author: Administrator
 */

#include "ui_display.h"
#include "xil_printf.h"
#include <stdio.h> // 需要用到 sprintf

// ==========================================================
// 底层屏幕驱动接口层 (Wrapper)
// 当你有了真正的屏幕，把这两行替换成屏幕厂家的 API 即可
// ==========================================================
void LCD_Clear(void) {
    // 发送 VT100 终端清屏指令，串口助手里会看到漂亮的清屏动画
    xil_printf("\033[2J\033[H");
}

void LCD_ShowString(int x, int y, char *str) {
    // 模拟在屏幕的坐标(x,y)处打印一行字
    xil_printf("  %s\r\n", str);
}

// ==========================================================
// 业务层：仪表盘排版与更新
// ==========================================================
void UI_Init(void) {
    LCD_Clear();
    LCD_ShowString(10, 10, "Initializing Screen...");
}

void UI_UpdateDashboard(SignalType type, SignalParams *params) {
    char str_buf[64];

    LCD_Clear();
    LCD_ShowString(10, 10, "==========================");
    LCD_ShowString(10, 20, "   SDR SIGNAL ANALYZER    ");
    LCD_ShowString(10, 30, "==========================");

    switch(type) {
        case SIGNAL_AM:
            LCD_ShowString(10, 50, ">> Type: AM (Amplitude Mod)");
            sprintf(str_buf, ">> F   : %d Hz", (int)params->F);
            LCD_ShowString(10, 70, str_buf);
            sprintf(str_buf, ">> ma  : %d.%03d", (int)params->ma, (int)((params->ma-(int)params->ma)*1000));
            LCD_ShowString(10, 90, str_buf);
            break;

        case SIGNAL_FM:
            LCD_ShowString(10, 50, ">> Type: FM (Frequency Mod)");
            sprintf(str_buf, ">> F   : %d Hz", (int)params->F);
            LCD_ShowString(10, 70, str_buf);
            sprintf(str_buf, ">> Dev : %d Hz", (int)params->delta_f);
            LCD_ShowString(10, 90, str_buf);
            sprintf(str_buf, ">> mf  : %d.%03d", (int)params->mf, (int)((params->mf-(int)params->mf)*1000));
            LCD_ShowString(10, 110, str_buf);
            break;

        case SIGNAL_CW:
            LCD_ShowString(10, 50, ">> Type: CW (Pure Carrier)");
            LCD_ShowString(10, 70, ">> No Modulation Data");
            break;

        case SIGNAL_2ASK:
            LCD_ShowString(10, 50, ">> Type: 2ASK (Digital AM)");
            sprintf(str_buf, ">> Rc  : %d bps", (int)params->Rc);
            LCD_ShowString(10, 70, str_buf);
            break;

        case SIGNAL_2FSK:
            LCD_ShowString(10, 50, ">> Type: 2FSK (Digital FM)");
            sprintf(str_buf, ">> Rc  : %d bps", (int)params->Rc);
            LCD_ShowString(10, 70, str_buf);
            sprintf(str_buf, ">> Dev : %d Hz", (int)params->delta_f);
            LCD_ShowString(10, 90, str_buf);
            sprintf(str_buf, ">> h   : %d.%03d", (int)params->h, (int)((params->h-(int)params->h)*1000));
            LCD_ShowString(10, 110, str_buf);
            break;

        case SIGNAL_2PSK:
            LCD_ShowString(10, 50, ">> Type: 2PSK (Digital PM)");
            sprintf(str_buf, ">> Rc  : %d bps", (int)params->Rc);
            LCD_ShowString(10, 70, str_buf);
            break;

        default:
            LCD_ShowString(10, 50, ">> Scanning Signal...");
            break;
    }
}
