/*
 * hw_interface.c
 *
 *  Created on: 2026年6月18日
 *      Author: Administrator
 */

#include "hw_interface.h"
#include <math.h>

float mock_buffer[2048]; // 共享数据缓存区
float mock_var_mag = 0.0, mock_var_freq = 0.0;
// 顶部的特征标志位
float mock_hist_mag_bimodal = 0;
float mock_hist_freq_bimodal = 0;
int mock_2psk_flag=0;

// 模拟生成带直流偏置的信号 (模拟 FPGA 的 DAC 原始输出)
void generate_mock_am(float target_ma, float f_mod) {
    float Ac = 1.5; // 直流载波基准
    for (int i = 0; i < 2048; i++) {
        float t = (float)i / 1000000.0;
        mock_buffer[i] = Ac * (1.0 + target_ma * sin(2.0 * 3.14159 * f_mod * t));
    }
}

// 模拟生成 FM 鉴频器输出波形 (代表瞬时频率的变化)
void generate_mock_fm(float target_delta_f_max, float f_mod) {
    for (int i = 0; i < 2048; i++) {
        float t = (float)i / 1000000.0;
        // FM 鉴频后是一个正弦波，峰值为最大频偏，可能带有微小直流底噪(如200Hz)
        mock_buffer[i] = 200.0 + target_delta_f_max * sin(2.0 * 3.14159 * f_mod * t);
    }
}

// 模拟生成极度变态的 2ASK 波形 (没有单比特跳变！)
void generate_mock_2ask(float target_Rc) {
    float points_per_symbol = 1000000.0 / target_Rc;
    // 变态测试码流：全都是成双成对出现的连0连1，没有孤独的 0 或 1
    int pattern[] = {1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0};
    int pattern_len = 16;

    for (int i = 0; i < 2048; i++) {
        int bit_index = (int)(i / points_per_symbol);
        int current_bit = pattern[bit_index % pattern_len];
        mock_buffer[i] = current_bit ? 2.0 : 0.2;
    }
}

// 模拟生成 2FSK 鉴频输出波形
void generate_mock_2fsk(float target_Rc, float delta_f) {
    float points_per_symbol = 1000000.0 / target_Rc;
    int pattern[] = {1, 0, 1, 1, 0, 0, 1, 0};
    int pattern_len = 8;

    // 假设基准中心频率是 10000Hz
    float base_freq = 10000.0;
    float f1 = base_freq + delta_f / 2.0;
    float f2 = base_freq - delta_f / 2.0;

    for (int i = 0; i < 2048; i++) {
        int bit_index = (int)(i / points_per_symbol);
        int current_bit = pattern[bit_index % pattern_len];
        // 模拟鉴频后的输出：高低电平代表了真实的物理频率值
        mock_buffer[i] = current_bit ? f1 : f2;
    }
}

// 模拟生成 2PSK 相位解调输出波形
void generate_mock_2psk(float target_Rc) {
    float points_per_symbol = 1000000.0 / target_Rc;
    // 随机的相位翻转序列
    int pattern[] = {1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1};
    int pattern_len = 16;

    for (int i = 0; i < 2048; i++) {
        int bit_index = (int)(i / points_per_symbol);
        int current_bit = pattern[bit_index % pattern_len];
        // 模拟解调后的相位电平 (高电平代表相位 0，低电平代表相位 180)
        mock_buffer[i] = current_bit ? 2.0 : 0.2;
    }
}

// 模拟读取 FPGA 内部的特征寄存器
void update_mock_hardware_registers(SignalType target_signal) {
    if (target_signal == SIGNAL_AM) {
        // 告诉大脑：现在有大幅度的包络起伏，但频率没跳变
        mock_var_mag = 500.0;
        mock_var_freq = 2.0;
    }
    else if (target_signal == SIGNAL_FM) {
            // FM 特征：幅度基本没起伏(纯载波包络)，但频率变化极大(方差大)
            mock_var_mag = 2.0;
            mock_var_freq = 15000.0;
        }
    else if (target_signal == SIGNAL_CW) {
            // [新增] CW 信号特征：幅度没有起伏(方差极小)，频率也没有起伏(方差极小)
            mock_var_mag = 1.0;
            mock_var_freq = 1.0;
            //mock_2psk_flag = 0;
        }
    else if (target_signal == SIGNAL_2ASK) {
        mock_var_mag = 500.0;
        mock_var_freq = 2.0;
        // 关键分水岭：直方图呈现极其明显的离散双峰 (高低两档电平)
        mock_hist_mag_bimodal = 1;
        mock_2psk_flag = 0;
    }
    else if (target_signal == SIGNAL_2FSK) {
            // 2FSK 特征：幅度平稳(方差小)，但频率剧烈跳变(方差大)
            mock_var_mag = 2.0;
            mock_var_freq = 500.0;
            // 关键分水岭：频率直方图呈现极其明显的离散双峰 (高低两个频率台阶)
            mock_hist_freq_bimodal = 1;
            mock_2psk_flag = 0;
        }
    else if (target_signal == SIGNAL_2PSK) {
            // 2PSK 特征：底层硬件抓到了相位突变尖峰！
            mock_2psk_flag = 1;

            // 其他方差无所谓了，大脑看到 mock_2psk_flag == 1 会直接最高优先级判定
            mock_var_mag = 2.0;
            mock_var_freq = 2.0;
        }
}

// 决策树终极版：加入直方图判决网络
SignalType recognize_signal_type(void) {
    float VAR_THRESHOLD = 50.0;

    if (mock_2psk_flag == 1) return SIGNAL_2PSK;

    // 幅度调制大类
    if (mock_var_mag > VAR_THRESHOLD && mock_var_freq < VAR_THRESHOLD) {
        if (mock_hist_mag_bimodal == 1) return SIGNAL_2ASK;
        else return SIGNAL_AM;
    }

    // 频率调制大类
    if (mock_var_freq > VAR_THRESHOLD && mock_var_mag < VAR_THRESHOLD) {
        if (mock_hist_freq_bimodal == 1) return SIGNAL_2FSK;
        else return SIGNAL_FM;
    }

    if (mock_var_mag < VAR_THRESHOLD && mock_var_freq < VAR_THRESHOLD) {
        return SIGNAL_CW;
    }
    return SIGNAL_UNKNOWN;
}
