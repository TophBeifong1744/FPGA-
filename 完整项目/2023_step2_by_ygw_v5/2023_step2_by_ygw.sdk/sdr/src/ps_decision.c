#include "ps_decision.h"

#include "histogram_classifier.h"
#include "xil_io.h"
#include "xparameters.h"

#define BRAM_FALLBACK_BASEADDR 0x40000000U
#define GPIO_FALLBACK_BASEADDR 0x41200000U

#ifdef XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define BRAM_BASEADDR XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#else
#define BRAM_BASEADDR BRAM_FALLBACK_BASEADDR
#endif

#ifdef XPAR_AXI_GPIO_MUX_BASEADDR
#define MUX_GPIO_BASEADDR XPAR_AXI_GPIO_MUX_BASEADDR
#else
#define MUX_GPIO_BASEADDR GPIO_FALLBACK_BASEADDR
#endif

#define GPIO_DATA_OFFSET          0x00U
#define GPIO_TRI_OFFSET           0x04U

#define BRAM_SEQUENCE_OFFSET      0x000U
#define BRAM_VAR_MAG_LOW_OFFSET   0x004U
#define BRAM_VAR_MAG_HIGH_OFFSET  0x008U
#define BRAM_VAR_FREQ_LOW_OFFSET  0x00CU
#define BRAM_VAR_FREQ_HIGH_OFFSET 0x010U
#define BRAM_SAMPLE_COUNT_OFFSET  0x014U
#define BRAM_WAVE_STATUS_OFFSET   0x018U
#define BRAM_PSK_FLAG_OFFSET      0x01CU
#define BRAM_HIST_MAG_OFFSET      0x020U
#define BRAM_HIST_FREQ_OFFSET     0x060U
#define BRAM_WAVEFORM_OFFSET      0x100U

#define BRAM_WAVEFORM_VALID_MASK  0x80000000U
#define BRAM_WAVEFORM_CHANNEL_MASK 0x000000FFU
#define BRAM_SAMPLE_Q_SCALE       4194304.0f

#define MAG_VARIANCE_THRESHOLD      2000000.0f
#define FREQ_VARIANCE_THRESHOLD   300000000.0f

static float waveform[PS_WAVEFORM_CAPACITY];

void ps_interface_init(void)
{
	/* AXI GPIO 通道1设为输出，并先选择安全的0号通道。 */
	Xil_Out32(MUX_GPIO_BASEADDR + GPIO_TRI_OFFSET, 0x00000000U);
	Xil_Out32(MUX_GPIO_BASEADDR + GPIO_DATA_OFFSET, 0x00000000U);
}

int ps_read_feature_frame(PsFeatureFrame *frame)
{
	static u32 last_sequence = 0U;
	u32 hist_mag[HISTOGRAM_BIN_COUNT];
	u32 hist_freq[HISTOGRAM_BIN_COUNT];
	u32 seq_before;
	u32 seq_after;
	u32 var_mag_low;
	u32 var_mag_high;
	u32 var_freq_low;
	u32 var_freq_high;
	u32 sample_count;
	u32 wave_status;
	u32 psk_word;
	u64 var_mag_64;
	u64 var_freq_64;
	u32 i;
	int waveform_valid;

	if (frame == 0) {
		return 0;
	}

	seq_before = Xil_In32(BRAM_BASEADDR + BRAM_SEQUENCE_OFFSET);
	if ((seq_before == 0U) || (seq_before == last_sequence)) {
		return 0;
	}

	var_mag_low = Xil_In32(BRAM_BASEADDR + BRAM_VAR_MAG_LOW_OFFSET);
	var_mag_high = Xil_In32(BRAM_BASEADDR + BRAM_VAR_MAG_HIGH_OFFSET);
	var_freq_low = Xil_In32(BRAM_BASEADDR + BRAM_VAR_FREQ_LOW_OFFSET);
	var_freq_high = Xil_In32(BRAM_BASEADDR + BRAM_VAR_FREQ_HIGH_OFFSET);
	sample_count = Xil_In32(BRAM_BASEADDR + BRAM_SAMPLE_COUNT_OFFSET);
	wave_status = Xil_In32(BRAM_BASEADDR + BRAM_WAVE_STATUS_OFFSET);
	psk_word = Xil_In32(BRAM_BASEADDR + BRAM_PSK_FLAG_OFFSET);

	for (i = 0U; i < HISTOGRAM_BIN_COUNT; ++i) {
		hist_mag[i] = Xil_In32(
				BRAM_BASEADDR + BRAM_HIST_MAG_OFFSET + i * 4U);
		hist_freq[i] = Xil_In32(
				BRAM_BASEADDR + BRAM_HIST_FREQ_OFFSET + i * 4U);
	}

	waveform_valid =
			((wave_status & BRAM_WAVEFORM_VALID_MASK) != 0U)
			&& (sample_count >= PS_WAVEFORM_MIN_SAMPLES)
			&& (sample_count <= PS_WAVEFORM_CAPACITY);

	if (waveform_valid) {
		for (i = 0U; i < sample_count; ++i) {
			s32 raw_sample = (s32)Xil_In32(
					BRAM_BASEADDR + BRAM_WAVEFORM_OFFSET
					+ i * 4U);
			waveform[i] =
					(float)raw_sample / BRAM_SAMPLE_Q_SCALE;
		}
	}

	seq_after = Xil_In32(BRAM_BASEADDR + BRAM_SEQUENCE_OFFSET);
	if (seq_before != seq_after) {
		return 0;
	}

	var_mag_64 = ((u64)var_mag_high << 32) | var_mag_low;
	var_freq_64 = ((u64)var_freq_high << 32) | var_freq_low;

	frame->sequence = seq_after;
	frame->var_mag = (float)(var_mag_64 >> 20);
	frame->var_freq = (float)(var_freq_64 >> 20);
	frame->mag_is_two_level = histogram_is_two_level(hist_mag);
	frame->freq_is_two_level = histogram_is_two_level(hist_freq);
	frame->psk_flag = (int)((psk_word >> 31) & 0x01U);
	frame->waveform_valid = waveform_valid;
	frame->waveform_channel =
			wave_status & BRAM_WAVEFORM_CHANNEL_MASK;
	frame->waveform_count = waveform_valid ? sample_count : 0U;

	last_sequence = seq_after;
	return 1;
}

SignalType ps_recognize_signal(const PsFeatureFrame *frame)
{
	if (frame == 0) {
		return SIGNAL_UNKNOWN;
	}

	if (frame->psk_flag != 0) {
		return SIGNAL_2PSK;
	}

	if (frame->var_mag > MAG_VARIANCE_THRESHOLD) {
		return frame->mag_is_two_level ? SIGNAL_2ASK : SIGNAL_AM;
	}

	if (frame->var_freq > FREQ_VARIANCE_THRESHOLD) {
		return frame->freq_is_two_level ? SIGNAL_2FSK : SIGNAL_FM;
	}

	return SIGNAL_CW;
}

int ps_signal_mux_channel(SignalType signal)
{
	switch (signal) {
	case SIGNAL_AM:
		return 1;
	case SIGNAL_FM:
	case SIGNAL_CW:
		return 2;
	case SIGNAL_2ASK:
		return 4;
	case SIGNAL_2PSK:
		return 5;
	case SIGNAL_2FSK:
		return 6;
	default:
		return 0;
	}
}

void ps_set_mux_for_signal(SignalType signal)
{
	Xil_Out32(
			MUX_GPIO_BASEADDR + GPIO_DATA_OFFSET,
			(u32)ps_signal_mux_channel(signal));
}

const float *ps_get_waveform(void)
{
	return waveform;
}
