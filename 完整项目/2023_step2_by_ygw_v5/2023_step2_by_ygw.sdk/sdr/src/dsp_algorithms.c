#include "dsp_algorithms.h"

#include <math.h>

#define RATE_CANDIDATE_COUNT       3
#define MOD_FREQ_CANDIDATE_COUNT   5
#define MIN_VALID_SYMBOL_INTERVALS 2
#define RATE_CONFIDENCE_MARGIN     0.015f
#define RATE_6K                    6000.0f
#define RATE_8K                    8000.0f
#define RATE_10K                   10000.0f

static float data_mean(const float *data, int len)
{
	float sum = 0.0f;
	int i;

	for (i = 0; i < len; ++i) {
		sum += data[i];
	}
	return sum / (float)len;
}

static float goertzel_mag_centered(
		const float *data,
		int len,
		float target_freq,
		float sample_rate,
		float mean)
{
	float omega = 2.0f * DSP_PI * target_freq / sample_rate;
	float coeff = 2.0f * cosf(omega);
	float q0 = 0.0f;
	float q1 = 0.0f;
	float q2 = 0.0f;
	int i;

	for (i = 0; i < len; ++i) {
		q0 = coeff * q1 - q2 + (data[i] - mean);
		q2 = q1;
		q1 = q0;
	}

	return q1 * q1 + q2 * q2 - q1 * q2 * coeff;
}

static float detect_modulation_freq(const float *data, int len)
{
	static const float target_freqs[MOD_FREQ_CANDIDATE_COUNT] = {
		1000.0f, 2000.0f, 3000.0f, 4000.0f, 5000.0f
	};
	float mean;
	float max_energy = -1.0f;
	float best_freq = 0.0f;
	int i;

	if ((data == 0) || (len <= 0)) {
		return 0.0f;
	}

	mean = data_mean(data, len);
	for (i = 0; i < MOD_FREQ_CANDIDATE_COUNT; ++i) {
		float energy = goertzel_mag_centered(
				data, len, target_freqs[i], SAMPLE_RATE, mean);

		if (energy > max_energy) {
			max_energy = energy;
			best_freq = target_freqs[i];
		}
	}

	return best_freq;
}

static float calculate_symbol_rate(const float *data, int len)
{
	static const float rates[RATE_CANDIDATE_COUNT] = {
		RATE_6K, RATE_8K, RATE_10K
	};
	float errors[RATE_CANDIDATE_COUNT] = {0.0f, 0.0f, 0.0f};
	float mean;
	float min_val;
	float max_val;
	float hysteresis;
	float lower;
	float upper;
	int state;
	int last_edge = -1;
	int valid_intervals = 0;
	int best = 0;
	int second;
	int i;
	int r;

	if ((data == 0) || (len <= 1)) {
		return 0.0f;
	}

	mean = data_mean(data, len);
	min_val = data[0];
	max_val = data[0];
	for (i = 1; i < len; ++i) {
		if (data[i] < min_val) {
			min_val = data[i];
		}
		if (data[i] > max_val) {
			max_val = data[i];
		}
	}

	hysteresis = 0.05f * (max_val - min_val);
	lower = mean - hysteresis;
	upper = mean + hysteresis;
	state = (data[0] > mean) ? 1 : 0;

	for (i = 1; i < len; ++i) {
		int next_state = state;

		if ((state == 0) && (data[i] > upper)) {
			next_state = 1;
		}
		if ((state == 1) && (data[i] < lower)) {
			next_state = 0;
		}
		if (next_state == state) {
			continue;
		}

		state = next_state;
		if (last_edge < 0) {
			last_edge = i;
			continue;
		}

		{
			float interval = (float)(i - last_edge);

			if (interval < 0.6f * (SAMPLE_RATE / RATE_10K)) {
				continue;
			}
			last_edge = i;
			valid_intervals++;

			for (r = 0; r < RATE_CANDIDATE_COUNT; ++r) {
				float symbol_samples = SAMPLE_RATE / rates[r];
				float symbols = roundf(interval / symbol_samples);

				if (symbols < 1.0f) {
					symbols = 1.0f;
				}
				errors[r] +=
						fabsf(interval - symbols * symbol_samples)
						/ symbol_samples;
			}
		}
	}

	if (valid_intervals < MIN_VALID_SYMBOL_INTERVALS) {
		return 0.0f;
	}

	for (r = 0; r < RATE_CANDIDATE_COUNT; ++r) {
		errors[r] /= (float)valid_intervals;
		if (errors[r] < errors[best]) {
			best = r;
		}
	}

	second = (best == 0) ? 1 : 0;
	for (r = 0; r < RATE_CANDIDATE_COUNT; ++r) {
		if ((r != best) && (errors[r] < errors[second])) {
			second = r;
		}
	}

	if (errors[second] - errors[best] < RATE_CONFIDENCE_MARGIN) {
		return 0.0f;
	}

	return rates[best];
}

void calculate_am_params(
		const float *data, int len, SignalParams *params)
{
	float max_val;
	float min_val;
	float denominator;
	int i;

	if ((data == 0) || (params == 0) || (len <= 0)) {
		return;
	}

	max_val = data[0];
	min_val = data[0];
	for (i = 1; i < len; ++i) {
		if (data[i] > max_val) {
			max_val = data[i];
		}
		if (data[i] < min_val) {
			min_val = data[i];
		}
	}

	denominator = max_val + min_val;
	params->ma = (fabsf(denominator) > 1.0e-12f)
			? (max_val - min_val) / denominator : 0.0f;
	params->F = detect_modulation_freq(data, len);
}

void calculate_fm_params(
		const float *data, int len, SignalParams *params)
{
	float mean;
	float modulation_freq;
	float sum_cos = 0.0f;
	float sum_sin = 0.0f;
	float omega;
	float amplitude;
	float filter_omega;
	float denominator;
	int i;

	if ((data == 0) || (params == 0) || (len <= 0)) {
		return;
	}

	mean = data_mean(data, len);
	modulation_freq = detect_modulation_freq(data, len);
	if (modulation_freq <= 0.0f) {
		params->F = 0.0f;
		params->delta_f = 0.0f;
		params->mf = 0.0f;
		return;
	}

	omega = 2.0f * DSP_PI * modulation_freq / SAMPLE_RATE;
	for (i = 0; i < len; ++i) {
		float centered = data[i] - mean;

		sum_cos += centered * cosf(omega * (float)i);
		sum_sin += centered * sinf(omega * (float)i);
	}

	amplitude = (2.0f / (float)len)
			* sqrtf(sum_cos * sum_cos + sum_sin * sum_sin);

	filter_omega = DSP_PI * modulation_freq / SAMPLE_RATE;
	denominator = FREQ_SMOOTHING_TAPS * sinf(filter_omega);
	if (fabsf(denominator) > 1.0e-6f) {
		float attenuation =
				sinf(FREQ_SMOOTHING_TAPS * filter_omega)
				/ denominator;

		if (fabsf(attenuation) > 0.1f) {
			amplitude /= fabsf(attenuation);
		}
	}

	params->F = modulation_freq;
	params->delta_f = amplitude * DISCRIMINATOR_HZ_PER_UNIT;
	params->mf = params->delta_f / modulation_freq;
}

void calculate_2ask_params(
		const float *data, int len, SignalParams *params)
{
	if (params != 0) {
		params->Rc = calculate_symbol_rate(data, len);
	}
}

void calculate_2fsk_params(
		const float *data, int len, SignalParams *params)
{
	float center0;
	float center1;
	int iteration;
	int i;

	if ((data == 0) || (params == 0) || (len <= 0)) {
		return;
	}

	center0 = data[0];
	center1 = data[0];
	for (i = 1; i < len; ++i) {
		if (data[i] < center0) {
			center0 = data[i];
		}
		if (data[i] > center1) {
			center1 = data[i];
		}
	}

	for (iteration = 0; iteration < 6; ++iteration) {
		float sum0 = 0.0f;
		float sum1 = 0.0f;
		int count0 = 0;
		int count1 = 0;

		for (i = 0; i < len; ++i) {
			if (fabsf(data[i] - center0) <=
					fabsf(data[i] - center1)) {
				sum0 += data[i];
				count0++;
			} else {
				sum1 += data[i];
				count1++;
			}
		}

		if (count0 > 0) {
			center0 = sum0 / (float)count0;
		}
		if (count1 > 0) {
			center1 = sum1 / (float)count1;
		}
	}

	params->Rc = calculate_symbol_rate(data, len);
	params->delta_f =
			fabsf(center1 - center0) * DISCRIMINATOR_HZ_PER_UNIT;
	params->h = (params->Rc > 0.0f)
			? params->delta_f / params->Rc : 0.0f;
}

void calculate_2psk_params(
		const float *data, int len, SignalParams *params)
{
	if (params != 0) {
		params->Rc = calculate_symbol_rate(data, len);
	}
}
