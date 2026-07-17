/*
 * dsp_algorithms.h
 *
 *  Created on: 2026年6月18日
 *      Author: Administrator
 */

#ifndef SRC_DSP_ALGORITHMS_H_
#define SRC_DSP_ALGORITHMS_H_

#define BUFFER_SIZE 2048
#define SAMPLE_RATE 1000000.0
#define PI 3.14159265358979323846
#define RATE_6K  6000.0
#define RATE_8K  8000.0
#define RATE_10K 10000.0

// [核心修改 1] 定义一个全局参数结构体，用来充当“算法”和“屏幕”之间的桥梁
typedef struct {
    float Rc;        // 码速率 (ASK/FSK/PSK)
    float F;         // 调制频率 (AM/FM)
    float ma;        // 调幅系数 (AM)
    float delta_f;   // 频偏 (FM/2FSK)
    float mf;        // 调频系数 (FM)
    float h;         // 移频键控系数 (2FSK)
} SignalParams;

void remove_dc(float *data, int len);
float goertzel_mag(float *data, int len, float target_freq, float sample_rate);
float detect_modulation_freq(float *data, int len);

// [核心修改 2] 所有参数计算函数，增加一个 SignalParams 指针，用于向外输出数据
void calculate_am_params(float *data, int len, SignalParams *params);
void calculate_fm_params(float *data, int len, SignalParams *params);
float calculate_Rc(float *data, int len);
void calculate_2ask_params(float *data, int len, SignalParams *params);
void calculate_2fsk_params(float *data, int len, SignalParams *params);
void calculate_2psk_params(float *data, int len, SignalParams *params);

#endif /* SRC_DSP_ALGORITHMS_H_ */
