#include "app_types.h"
#include "dsp_algorithms.h"
#include "ps_decision.h"
#include "rgb_display.h"
#include "sleep.h"
#include "xil_printf.h"

#include <string.h>

#define REQUIRED_STABLE_FRAMES 3
#define MUX_SETTLE_US          1000U
#define MAIN_LOOP_DELAY_US    10000U
#define DISPLAY_REFRESH_LOOPS    10

static const char *signal_name(SignalType signal)
{
	switch (signal) {
	case SIGNAL_AM:
		return "AM";
	case SIGNAL_FM:
		return "FM";
	case SIGNAL_CW:
		return "CW";
	case SIGNAL_2ASK:
		return "2ASK";
	case SIGNAL_2PSK:
		return "2PSK";
	case SIGNAL_2FSK:
		return "2FSK";
	default:
		return "UNKNOWN";
	}
}

static void calculate_signal_params(
		SignalType signal,
		const float *waveform,
		int waveform_count,
		SignalParams *params)
{
	switch (signal) {
	case SIGNAL_AM:
		calculate_am_params(
				waveform, waveform_count, params);
		break;
	case SIGNAL_FM:
		calculate_fm_params(
				waveform, waveform_count, params);
		break;
	case SIGNAL_2ASK:
		calculate_2ask_params(
				waveform, waveform_count, params);
		break;
	case SIGNAL_2PSK:
		calculate_2psk_params(
				waveform, waveform_count, params);
		break;
	case SIGNAL_2FSK:
		calculate_2fsk_params(
				waveform, waveform_count, params);
		break;
	default:
		break;
	}
}

int main(void)
{
	PsFeatureFrame frame;
	SignalParams current_params;
	SignalType candidate_signal = SIGNAL_UNKNOWN;
	SignalType current_signal = SIGNAL_UNKNOWN;
	int stable_count = 0;
	int params_valid = 0;
	int display_dirty = 0;
	int display_tick = 0;

	memset(&frame, 0, sizeof(frame));
	memset(&current_params, 0, sizeof(current_params));

	xil_printf("\r\nPS decision + VDMA RGB display\r\n");

	ps_interface_init();
	if (rgb_display_init() != 0) {
		xil_printf("RGB display initialization failed\r\n");
		return -1;
	}

	xil_printf("Hardware ready, waiting for BRAM frames...\r\n");

	while (1) {
		if (ps_read_feature_frame(&frame) != 0) {
			SignalType measured_signal =
					ps_recognize_signal(&frame);

			if (measured_signal == candidate_signal) {
				if (stable_count < REQUIRED_STABLE_FRAMES) {
					stable_count++;
				}
			} else {
				candidate_signal = measured_signal;
				stable_count = 1;
			}

			if (stable_count >= REQUIRED_STABLE_FRAMES) {
				int signal_changed =
						(current_signal != candidate_signal);

				if (signal_changed) {
					current_signal = candidate_signal;
					memset(
							&current_params,
							0,
							sizeof(current_params));
					params_valid =
							(current_signal == SIGNAL_CW);
					ps_set_mux_for_signal(current_signal);
					usleep(MUX_SETTLE_US);
					display_dirty = 1;

					xil_printf(
							"Stable signal: %s\r\n",
							signal_name(current_signal));
				}

				/*
				 * 改变 MUX 的当前帧仍属于旧通道，只从下一帧开始
				 * 使用波形数据计算参数。
				 */
				if (!signal_changed
						&& (current_signal != SIGNAL_UNKNOWN)
						&& (current_signal != SIGNAL_CW)
						&& frame.waveform_valid
						&& (frame.waveform_channel
								== (u32)ps_signal_mux_channel(
										current_signal))) {
					SignalParams next_params;

					memset(
							&next_params,
							0,
							sizeof(next_params));
					calculate_signal_params(
							current_signal,
							ps_get_waveform(),
							(int)frame.waveform_count,
							&next_params);
					current_params = next_params;
					params_valid = 1;
					display_dirty = 1;
				}
			}
		}

		display_tick++;
		if ((display_dirty != 0)
				&& (display_tick >= DISPLAY_REFRESH_LOOPS)) {
			rgb_display_update(
					current_signal,
					&current_params,
					params_valid);
			display_dirty = 0;
			display_tick = 0;
		}

		usleep(MAIN_LOOP_DELAY_US);
	}

	return 0;
}
