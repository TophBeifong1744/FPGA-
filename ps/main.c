#include "platform.h"
#include "xil_printf.h"
#include "hw_interface.h"
#include "dsp_algorithms.h"
#include "ui_display.h" // 引入我们新建的 UI 层

void cleanup_platform(void);

int main() {
    init_platform();
    UI_Init(); // 屏幕初始化

    int display_tick = 0;

    // 专门用来存放后台算出来的最新参数，供给前台刷屏使用
    SignalParams current_params = {0};
    SignalType current_signal = SIGNAL_UNKNOWN;

    while(1) {
        // =========================================
        // [后端] 高频极速计算层 (例如每秒跑 100 次)
        // =========================================

        // 核心测试点：你可以随意切换这里送入的数据
        update_mock_hardware_registers(SIGNAL_2FSK);
        generate_mock_2fsk(6000.0, 4500.0);

        current_signal = recognize_signal_type();

        switch(current_signal) {
            // 注意看：现在多传了一个 &current_params 进去
            case SIGNAL_AM:   calculate_am_params(mock_buffer, 2048, &current_params);   break;
            case SIGNAL_FM:   calculate_fm_params(mock_buffer, 2048, &current_params);   break;
            case SIGNAL_2ASK: calculate_2ask_params(mock_buffer, 2048, &current_params); break;
            case SIGNAL_2FSK: calculate_2fsk_params(mock_buffer, 2048, &current_params); break;
            case SIGNAL_2PSK: calculate_2psk_params(mock_buffer, 2048, &current_params); break;
            default: break; // CW 无需计算参数
        }

        // =========================================
        // [前端] 低频 UI 刷新层 (降频刷新，防止卡顿)
        // =========================================
        display_tick++;
        if (display_tick >= 50) {
            // 后台跑 50 次算法，前台才把最新的 current_params 刷到屏幕上 1 次
            UI_UpdateDashboard(current_signal, &current_params);
            display_tick = 0;
        }

        for(volatile int i = 0; i < 1000000; i++); // 模拟主频延时
    }

    cleanup_platform();
    return 0;
}
