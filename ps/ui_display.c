/*
 * ui_display.c
 *
 *  Created on: 2026年6月22日
 *      Author: Administrator
 */

#include "ui_display.h"
#include "xil_printf.h"
#include "xil_io.h"     // [新增] 用于读写 AXI GPIO
#include "xparameters.h"// [新增] 用于获取硬件基地址
#include <stdio.h>

// ==========================================================
// 【非常重要】：请在 xparameters.h 中找到这 3 个 GPIO 的真实基地址，并填入下方！
// 下面的是假设地址（通常 Vivado 会自动分配为这几个）
// ==========================================================
#define AXI_GPIO_0_BASE 0x41210000 // CH1: type,   CH2: freq
#define AXI_GPIO_1_BASE 0x41220000 // CH1: param1, CH2: param2
#define AXI_GPIO_2_BASE 0x41230000 // CH1: param3

/*
// ==========================================================
// [新增魔法函数]：将十进制数字转换为 FPGA 字库所需的 BCD 码
// 例如：传入 6000，返回 0x6000 (屏幕显示 6.000)
//      传入 852， 返回 0x0852 (屏幕显示 0.852)
// ==========================================================
uint32_t int_to_bcd(int value) {
    if (value > 9999) value = 9999;
    if (value < 0) value = 0;

    uint32_t bcd = 0;
    bcd |= ((value / 1000) % 10) << 12; // 千位
    bcd |= ((value / 100)  % 10) << 8;  // 百位
    bcd |= ((value / 10)   % 10) << 4;  // 十位
    bcd |= (value % 10);                // 个位
    return bcd;
}
*/

// ==========================================================
// [升级版]：将十进制数字转换为 FPGA 字库所需的 BCD 码 (最高支持 99999)
// ==========================================================
uint32_t int_to_bcd(int value) {
    if (value > 99999) value = 99999; // 将封顶值从 9999 提升到 99999
    if (value < 0) value = 0;

    uint32_t bcd = 0;
    bcd |= ((value / 10000) % 10) << 16; // 新增：万位
    bcd |= ((value / 1000)  % 10) << 12; // 千位
    bcd |= ((value / 100)   % 10) << 8;  // 百位
    bcd |= ((value / 10)    % 10) << 4;  // 十位
    bcd |= (value % 10);                 // 个位
    return bcd;
}

void LCD_Clear(void) {
    xil_printf("\033[2J\033[H");
}

void LCD_ShowString(int x, int y, char *str) {
    (void)x;
    (void)y;
    xil_printf("  %s\r\n", str);
}

void UI_Init(void) {
    LCD_Clear();
    LCD_ShowString(10, 10, "Initializing Screen...");

    // 初始化时给屏幕发送一个空状态
    Xil_Out32(AXI_GPIO_0_BASE, 0); // type = 0 (未知)
}

// ==========================================================
// 核心：UI 刷新与硬件联动
// ==========================================================
void UI_UpdateDashboard(SignalType type, SignalParams *params) {
    char str_buf[64];

    // 1. 准备要下发给 FPGA 的硬件变量 (BCD格式)
    uint32_t hw_type = 0;
    uint32_t hw_freq = int_to_bcd(2000); // 载波默认为 2MHz (即 2000 kHz)
    uint32_t hw_p1 = 0, hw_p2 = 0, hw_p3 = 0;

    LCD_Clear();
    LCD_ShowString(10, 10, "==========================");
    LCD_ShowString(10, 20, "   SDR SIGNAL ANALYZER    ");
    LCD_ShowString(10, 30, "==========================");

    switch(type) {
        case SIGNAL_AM:
            hw_type = 1; // 1=AM
            hw_p1 = int_to_bcd((int)params->F);
            hw_p2 = int_to_bcd((int)(params->ma * 1000)); // ma 放大一千倍转BCD

            LCD_ShowString(10, 50, ">> Type: AM (Amplitude Mod)");
            sprintf(str_buf, ">> F   : %d Hz", (int)params->F);
            LCD_ShowString(10, 70, str_buf);
            sprintf(str_buf, ">> ma  : %d.%03d", (int)params->ma, (int)((params->ma-(int)params->ma)*1000));
            LCD_ShowString(10, 90, str_buf);
            break;

        case SIGNAL_FM:
            hw_type = 2; // 2=FM
            hw_p1 = int_to_bcd((int)params->F);
            hw_p2 = int_to_bcd((int)params->delta_f);
            hw_p3 = int_to_bcd((int)(params->mf * 1000)); // mf 放大一千倍转BCD

            LCD_ShowString(10, 50, ">> Type: FM (Frequency Mod)");
            sprintf(str_buf, ">> F   : %d Hz", (int)params->F);
            LCD_ShowString(10, 70, str_buf);
            sprintf(str_buf, ">> Dev : %d Hz", (int)params->delta_f);
            LCD_ShowString(10, 90, str_buf);
            sprintf(str_buf, ">> mf  : %d.%03d", (int)params->mf, (int)((params->mf-(int)params->mf)*1000));
            LCD_ShowString(10, 110, str_buf);
            break;

        case SIGNAL_CW:
            hw_type = 0;
            LCD_ShowString(10, 50, ">> Type: CW (Pure Carrier)");
            LCD_ShowString(10, 70, ">> No Modulation Data");
            break;

        case SIGNAL_2ASK:
            hw_type = 4; // 4=ASK
            hw_p1 = int_to_bcd((int)params->Rc);

            LCD_ShowString(10, 50, ">> Type: 2ASK (Digital AM)");
            sprintf(str_buf, ">> Rc  : %d bps", (int)params->Rc);
            LCD_ShowString(10, 70, str_buf);
            break;

        case SIGNAL_2FSK:
            hw_type = 6; // 6=FSK
            hw_p1 = int_to_bcd((int)params->Rc);
            hw_p2 = int_to_bcd((int)params->delta_f);
            hw_p3 = int_to_bcd((int)(params->h * 1000.0f));

            LCD_ShowString(10, 50, ">> Type: 2FSK (Digital FM)");
            sprintf(str_buf, ">> Rc  : %d bps", (int)params->Rc);
            LCD_ShowString(10, 70, str_buf);
            sprintf(str_buf, ">> Dev : %d Hz", (int)params->delta_f);
            LCD_ShowString(10, 90, str_buf);
            sprintf(str_buf, ">> h   : %d.%03d", (int)params->h, (int)((params->h-(int)params->h)*1000));
            LCD_ShowString(10, 110, str_buf);
            break;

        case SIGNAL_2PSK:
            hw_type = 5; // 5=PSK
            hw_p1 = int_to_bcd((int)params->Rc);

            LCD_ShowString(10, 50, ">> Type: 2PSK (Digital PM)");
            sprintf(str_buf, ">> Rc  : %d bps", (int)params->Rc);
            LCD_ShowString(10, 70, str_buf);
            break;

        default:
            hw_type = 0;
            LCD_ShowString(10, 50, ">> Scanning Signal...");
            break;
    }

    // ========================================================
    // 2. 将 BCD 码通过 AXI GPIO 发送给 FPGA，瞬间点亮屏幕！
    // ========================================================
    // AXI GPIO 双通道偏移量：CH1 是 0x00，CH2 是 0x08
    Xil_Out32(AXI_GPIO_0_BASE + 0x00, hw_type);
    Xil_Out32(AXI_GPIO_0_BASE + 0x08, hw_freq);

    Xil_Out32(AXI_GPIO_1_BASE + 0x00, hw_p1);
    Xil_Out32(AXI_GPIO_1_BASE + 0x08, hw_p2);

    Xil_Out32(AXI_GPIO_2_BASE + 0x00, hw_p3);
}
