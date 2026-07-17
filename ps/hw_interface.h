/*
 * hw_interface.h
 *
 *  Created on: 2026年6月18日
 *      Author: Administrator
 */

#ifndef SRC_HW_INTERFACE_H_
#define SRC_HW_INTERFACE_H_

typedef enum { SIGNAL_UNKNOWN, SIGNAL_AM, SIGNAL_FM, SIGNAL_CW, SIGNAL_2ASK, SIGNAL_2PSK, SIGNAL_2FSK } SignalType;
extern float mock_buffer[]; // 声明全局数组
extern float mock_var_mag, mock_var_freq;
// 顶部的特征标志位
extern float mock_hist_mag_bimodal;
extern float mock_hist_freq_bimodal;
extern int mock_2psk_flag;


void generate_mock_am(float target_ma, float f_mod);
void update_mock_hardware_registers(SignalType target_signal);
SignalType recognize_signal_type(void);
void generate_mock_fm(float target_delta_f_max, float f_mod);
void generate_mock_2ask(float target_Rc); // 新增：2ASK波形生成器
void generate_mock_2fsk(float target_Rc, float delta_f);
void generate_mock_2psk(float target_Rc);

#endif /* SRC_HW_INTERFACE_H_ */
