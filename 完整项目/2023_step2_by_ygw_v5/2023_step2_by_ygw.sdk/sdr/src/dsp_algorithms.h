#ifndef DSP_ALGORITHMS_H
#define DSP_ALGORITHMS_H

#include "app_types.h"

#define SAMPLE_RATE 1000000.0f
#define DSP_PI      3.14159265358979323846f

/*
 * 默认假定 PL 鉴频支路输出 cycles/sample。
 * 若实际是 radians/sample，应改成 SAMPLE_RATE / (2 * DSP_PI)。
 */
#ifndef DISCRIMINATOR_HZ_PER_UNIT
#define DISCRIMINATOR_HZ_PER_UNIT SAMPLE_RATE
#endif

#ifndef FREQ_SMOOTHING_TAPS
#define FREQ_SMOOTHING_TAPS 64.0f
#endif

void calculate_am_params(
		const float *data, int len, SignalParams *params);
void calculate_fm_params(
		const float *data, int len, SignalParams *params);
void calculate_2ask_params(
		const float *data, int len, SignalParams *params);
void calculate_2fsk_params(
		const float *data, int len, SignalParams *params);
void calculate_2psk_params(
		const float *data, int len, SignalParams *params);

#endif /* DSP_ALGORITHMS_H */
