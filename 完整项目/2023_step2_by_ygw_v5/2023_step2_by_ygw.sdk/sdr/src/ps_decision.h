#ifndef PS_DECISION_H
#define PS_DECISION_H

#include "app_types.h"
#include "xil_types.h"

#define PS_WAVEFORM_CAPACITY 1984U
#define PS_WAVEFORM_MIN_SAMPLES 1024U

typedef struct {
	u32 sequence;
	float var_mag;
	float var_freq;
	int mag_is_two_level;
	int freq_is_two_level;
	int psk_flag;
	int waveform_valid;
	u32 waveform_channel;
	u32 waveform_count;
} PsFeatureFrame;

void ps_interface_init(void);
int ps_read_feature_frame(PsFeatureFrame *frame);
SignalType ps_recognize_signal(const PsFeatureFrame *frame);
int ps_signal_mux_channel(SignalType signal);
void ps_set_mux_for_signal(SignalType signal);
const float *ps_get_waveform(void);

#endif /* PS_DECISION_H */
