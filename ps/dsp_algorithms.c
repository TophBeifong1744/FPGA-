/*
 * dsp_algorithms.c
 *
 *  Created on: 2026年6月18日
 *      Author: Administrator
 */

#include "dsp_algorithms.h"
#include <math.h>
#include "xil_printf.h"

void remove_dc(float *data, int len) {
    float sum = 0.0;
    for (int i = 0; i < len; i++) sum += data[i];
    float mean = sum / len;
    for (int i = 0; i < len; i++) data[i] -= mean;
}

float goertzel_mag(float *data, int len, float target_freq, float sample_rate) {
    int k = (int)(0.5 + ((len * target_freq) / sample_rate));
    float omega = (2.0 * PI * k) / len;
    float cosine = cos(omega);
    float coeff = 2.0 * cosine;

    float q0 = 0, q1 = 0, q2 = 0;
    for (int i = 0; i < len; i++) {
        q0 = coeff * q1 - q2 + data[i];
        q2 = q1;
        q1 = q0;
    }
    return (q1 * q1) + (q2 * q2) - (q1 * q2 * coeff);
}

float detect_modulation_freq(float *data, int len) {
    float target_freqs[5] = {1000.0, 2000.0, 3000.0, 4000.0, 5000.0};
    float max_energy = 0;
    float best_freq = 0;

    float temp_buffer[BUFFER_SIZE];
    for(int i = 0; i < len; i++) temp_buffer[i] = data[i];
    remove_dc(temp_buffer, len);

    for (int i = 0; i < 5; i++) {
        float energy = goertzel_mag(temp_buffer, len, target_freqs[i], SAMPLE_RATE);
        if (energy > max_energy) { max_energy = energy; best_freq = target_freqs[i]; }
    }
    return best_freq;
}

// ==========================================================
// [修改] 将结果存入 params 结构体
// ==========================================================
void calculate_am_params(float *data, int len, SignalParams *params) {
    float max_val = -9999.0, min_val = 9999.0;
    for (int i = 0; i < len; i++) {
        if (data[i] > max_val) max_val = data[i];
        if (data[i] < min_val) min_val = data[i];
    }
    float v_pp = max_val - min_val;
    float v_mean = (max_val + min_val) / 2.0;
    float calculated_ma = (v_pp / 2.0) / v_mean;
    float calculated_f = detect_modulation_freq(data, len);

    // 存入结构体供屏幕使用
    if(params) {
        params->ma = calculated_ma;
        params->F = calculated_f;
    }
}

void calculate_fm_params(float *data, int len, SignalParams *params) {
    float temp_buffer[BUFFER_SIZE];
    for(int i = 0; i < len; i++) temp_buffer[i] = data[i];
    remove_dc(temp_buffer, len);

    float max_delta_f = 0.0;
    for (int i = 0; i < len; i++) {
        float abs_val = fabs(temp_buffer[i]);
        if (abs_val > max_delta_f) max_delta_f = abs_val;
    }

    float calculated_f = detect_modulation_freq(temp_buffer, len);
    float calculated_mf = max_delta_f / calculated_f;

    // 存入结构体
    if(params) {
        params->delta_f = max_delta_f;
        params->F = calculated_f;
        params->mf = calculated_mf;
    }
}

float calculate_Rc(float *data, int len) {
    float sum = 0;
    for(int i = 0; i < len; i++) sum += data[i];
    float threshold = sum / len;

    float exp_6k  = SAMPLE_RATE / RATE_6K;
    float exp_8k  = SAMPLE_RATE / RATE_8K;
    float exp_10k = SAMPLE_RATE / RATE_10K;

    float error_6k = 0, error_8k = 0, error_10k = 0;
    int valid_edges = 0;

    int current_points = 0;
    int last_state = (data[0] > threshold) ? 1 : 0;

    for(int i = 1; i < len; i++) {
        int current_state = (data[i] > threshold) ? 1 : 0;
        if(current_state == last_state) {
            current_points++;
        } else {
            if(current_points > 15) {
                valid_edges++;
                float n_6k  = round(current_points / exp_6k);
                float n_8k  = round(current_points / exp_8k);
                float n_10k = round(current_points / exp_10k);

                if(n_6k < 1) n_6k = 1;
                if(n_8k < 1) n_8k = 1;
                if(n_10k < 1) n_10k = 1;

                error_6k  += fabs(current_points - n_6k  * exp_6k);
                error_8k  += fabs(current_points - n_8k  * exp_8k);
                error_10k += fabs(current_points - n_10k * exp_10k);
            }
            current_points = 1;
            last_state = current_state;
        }
    }

    if(valid_edges == 0) return 0.0;

    if(error_6k < error_8k && error_6k < error_10k) return RATE_6K;
    if(error_8k < error_6k && error_8k < error_10k) return RATE_8K;
    return RATE_10K;
}

void calculate_2ask_params(float *data, int len, SignalParams *params) {
    float calculated_Rc = calculate_Rc(data, len);
    if(params) params->Rc = calculated_Rc;
}

void calculate_2fsk_params(float *data, int len, SignalParams *params) {
    float calculated_Rc = calculate_Rc(data, len);

    float sum = 0;
    for(int i = 0; i < len; i++) sum += data[i];
    float threshold = sum / len;

    float high_sum = 0, low_sum = 0;
    int high_count = 0, low_count = 0;

    for(int i = 0; i < len; i++) {
        if(data[i] > threshold) {
            high_sum += data[i];
            high_count++;
        } else {
            low_sum += data[i];
            low_count++;
        }
    }

    float f1 = (high_count > 0) ? (high_sum / high_count) : 0;
    float f2 = (low_count > 0) ? (low_sum / low_count) : 0;
    float delta_f = fabs(f1 - f2);

    float h = 0;
    if (calculated_Rc > 0) h = delta_f / calculated_Rc;

    // 存入结构体
    if(params) {
        params->Rc = calculated_Rc;
        params->delta_f = delta_f;
        params->h = h;
    }
}

void calculate_2psk_params(float *data, int len, SignalParams *params) {
    float calculated_Rc = calculate_Rc(data, len);
    if(params) params->Rc = calculated_Rc;
}




