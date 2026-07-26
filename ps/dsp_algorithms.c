#include "dsp_algorithms.h"

#include <math.h>

#define RATE_CANDIDATE_COUNT 3
#define MOD_FREQ_CANDIDATE_COUNT 5
#define MIN_VALID_SYMBOL_INTERVALS 2
#define RATE_CONFIDENCE_MARGIN 0.015f

static float data_mean(const float *data, int len) {
    float sum = 0.0f;
    for (int i = 0; i < len; ++i) sum += data[i];
    return sum / (float)len;
}

static float goertzel_mag_centered(
    const float *data,
    int len,
    float target_freq,
    float sample_rate,
    float mean
) {
    float omega = 2.0f * PI * target_freq / sample_rate;
    float coeff = 2.0f * cosf(omega);
    float q0 = 0.0f;
    float q1 = 0.0f;
    float q2 = 0.0f;

    for (int i = 0; i < len; ++i) {
        q0 = coeff * q1 - q2 + (data[i] - mean);
        q2 = q1;
        q1 = q0;
    }
    return q1 * q1 + q2 * q2 - q1 * q2 * coeff;
}

void remove_dc(float *data, int len) {
    if (data == 0 || len <= 0) return;
    float mean = data_mean(data, len);
    for (int i = 0; i < len; ++i) data[i] -= mean;
}

float goertzel_mag(float *data, int len, float target_freq, float sample_rate) {
    if (data == 0 || len <= 0 || sample_rate <= 0.0f) return 0.0f;
    return goertzel_mag_centered(data, len, target_freq, sample_rate, 0.0f);
}

float detect_modulation_freq(float *data, int len) {
    static const float target_freqs[MOD_FREQ_CANDIDATE_COUNT] = {
        1000.0f, 2000.0f, 3000.0f, 4000.0f, 5000.0f
    };

    if (data == 0 || len <= 0) return 0.0f;

    float mean = data_mean(data, len);
    float max_energy = -1.0f;
    float best_freq = 0.0f;

    for (int i = 0; i < MOD_FREQ_CANDIDATE_COUNT; ++i) {
        float energy = goertzel_mag_centered(
            data, len, target_freqs[i], SAMPLE_RATE, mean
        );
        if (energy > max_energy) {
            max_energy = energy;
            best_freq = target_freqs[i];
        }
    }
    return best_freq;
}

void calculate_am_params(float *data, int len, SignalParams *params) {
    if (data == 0 || params == 0 || len <= 0) return;

    float max_val = data[0];
    float min_val = data[0];
    for (int i = 1; i < len; ++i) {
        if (data[i] > max_val) max_val = data[i];
        if (data[i] < min_val) min_val = data[i];
    }

    float denominator = max_val + min_val;
    params->ma = (fabsf(denominator) > 1.0e-12f)
        ? (max_val - min_val) / denominator
        : 0.0f;
    params->F = detect_modulation_freq(data, len);
}

void calculate_fm_params(float *data, int len, SignalParams *params) {
    if (data == 0 || params == 0 || len <= 0) return;

    float mean = data_mean(data, len);
    float modulation_freq = detect_modulation_freq(data, len);
    if (modulation_freq <= 0.0f) {
        params->F = 0.0f;
        params->delta_f = 0.0f;
        params->mf = 0.0f;
        return;
    }

    float sum_cos = 0.0f;
    float sum_sin = 0.0f;
    float omega = 2.0f * PI * modulation_freq / SAMPLE_RATE;
    for (int i = 0; i < len; ++i) {
        float centered = data[i] - mean;
        sum_cos += centered * cosf(omega * (float)i);
        sum_sin += centered * sinf(omega * (float)i);
    }

    float amplitude = (2.0f / (float)len) *
        sqrtf(sum_cos * sum_cos + sum_sin * sum_sin);

    float filter_omega = PI * modulation_freq / SAMPLE_RATE;
    float denominator = FREQ_SMOOTHING_TAPS * sinf(filter_omega);
    if (fabsf(denominator) > 1.0e-6f) {
        float attenuation =
            sinf(FREQ_SMOOTHING_TAPS * filter_omega) / denominator;
        if (fabsf(attenuation) > 0.1f) amplitude /= fabsf(attenuation);
    }

    params->F = modulation_freq;
    params->delta_f = amplitude * DISCRIMINATOR_HZ_PER_UNIT;
    params->mf = params->delta_f / modulation_freq;
}

float calculate_Rc(float *data, int len) {
    static const float rates[RATE_CANDIDATE_COUNT] = {
        RATE_6K, RATE_8K, RATE_10K
    };

    if (data == 0 || len <= 1) return 0.0f;

    float mean = data_mean(data, len);
    float min_val = data[0];
    float max_val = data[0];
    for (int i = 1; i < len; ++i) {
        if (data[i] < min_val) min_val = data[i];
        if (data[i] > max_val) max_val = data[i];
    }

    float hysteresis = 0.05f * (max_val - min_val);
    float lower = mean - hysteresis;
    float upper = mean + hysteresis;
    int state = (data[0] > mean) ? 1 : 0;
    int last_edge = -1;
    int valid_intervals = 0;
    float errors[RATE_CANDIDATE_COUNT] = {0.0f, 0.0f, 0.0f};

    for (int i = 1; i < len; ++i) {
        int next_state = state;
        if (state == 0 && data[i] > upper) next_state = 1;
        if (state == 1 && data[i] < lower) next_state = 0;
        if (next_state == state) continue;

        state = next_state;
        if (last_edge < 0) {
            last_edge = i;
            continue;
        }

        float interval = (float)(i - last_edge);
        if (interval < 0.6f * (SAMPLE_RATE / RATE_10K)) continue;
        last_edge = i;
        valid_intervals++;

        for (int r = 0; r < RATE_CANDIDATE_COUNT; ++r) {
            float symbol_samples = SAMPLE_RATE / rates[r];
            float symbols = roundf(interval / symbol_samples);
            if (symbols < 1.0f) symbols = 1.0f;
            errors[r] += fabsf(interval - symbols * symbol_samples)
                / symbol_samples;
        }
    }

    if (valid_intervals < MIN_VALID_SYMBOL_INTERVALS) return 0.0f;

    int best = 0;
    int second = 1;
    for (int r = 0; r < RATE_CANDIDATE_COUNT; ++r) {
        errors[r] /= (float)valid_intervals;
        if (errors[r] < errors[best]) best = r;
    }
    second = (best == 0) ? 1 : 0;
    for (int r = 0; r < RATE_CANDIDATE_COUNT; ++r) {
        if (r != best && errors[r] < errors[second]) second = r;
    }

    if (errors[second] - errors[best] < RATE_CONFIDENCE_MARGIN) return 0.0f;
    return rates[best];
}

void calculate_2ask_params(float *data, int len, SignalParams *params) {
    if (params == 0) return;
    params->Rc = calculate_Rc(data, len);
}

void calculate_2fsk_params(float *data, int len, SignalParams *params) {
    if (data == 0 || params == 0 || len <= 0) return;

    float center0 = data[0];
    float center1 = data[0];
    for (int i = 1; i < len; ++i) {
        if (data[i] < center0) center0 = data[i];
        if (data[i] > center1) center1 = data[i];
    }

    for (int iteration = 0; iteration < 6; ++iteration) {
        float sum0 = 0.0f;
        float sum1 = 0.0f;
        int count0 = 0;
        int count1 = 0;

        for (int i = 0; i < len; ++i) {
            if (fabsf(data[i] - center0) <= fabsf(data[i] - center1)) {
                sum0 += data[i];
                count0++;
            } else {
                sum1 += data[i];
                count1++;
            }
        }
        if (count0 > 0) center0 = sum0 / (float)count0;
        if (count1 > 0) center1 = sum1 / (float)count1;
    }

    params->Rc = calculate_Rc(data, len);
    params->delta_f = fabsf(center1 - center0) * DISCRIMINATOR_HZ_PER_UNIT;
    params->h = (params->Rc > 0.0f) ? params->delta_f / params->Rc : 0.0f;
}

void calculate_2psk_params(float *data, int len, SignalParams *params) {
    if (params == 0) return;
    params->Rc = calculate_Rc(data, len);
}
