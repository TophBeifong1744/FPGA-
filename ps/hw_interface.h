#ifndef SRC_HW_INTERFACE_H_
#define SRC_HW_INTERFACE_H_

typedef enum { SIGNAL_UNKNOWN, SIGNAL_AM, SIGNAL_FM, SIGNAL_CW, SIGNAL_2ASK, SIGNAL_2PSK, SIGNAL_2FSK } SignalType;

// 全局真实波形缓存
extern float real_buffer[2048];

// 全局真实特征变量
extern float real_var_mag;
extern float real_var_freq;
extern int   real_hist_mag_bimodal;
extern int   real_hist_freq_bimodal;
extern int   real_2psk_flag;

// 真实硬件驱动函数
int  init_hardware(void);
void set_mux_channel(int channel);
int  capture_waveform(void);
int  read_hardware_features(void);
SignalType recognize_signal_type(void);

#endif /* SRC_HW_INTERFACE_H_ */
