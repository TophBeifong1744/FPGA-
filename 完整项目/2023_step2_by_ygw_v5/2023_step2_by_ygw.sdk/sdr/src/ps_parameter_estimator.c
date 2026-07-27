#include "ps_parameter_estimator.h"

#include <math.h>
#include <string.h>

#include "ps_smart_mux_contract.h"

#define PS_PI 3.14159265358979323846f
#define PS_MODULATION_FREQUENCY_COUNT 5U
#define PS_RATE_CANDIDATE_COUNT 3U
#define PS_LEVEL_KMEANS_ITERATIONS 10U
#define PS_LEVEL_EDGE_BAND_FRACTION 0.05f
#define PS_LEVEL_MIN_EDGE_FRACTION 0.05f

static const float modulation_frequencies[PS_MODULATION_FREQUENCY_COUNT] = {
    1000.0f, 2000.0f, 3000.0f, 4000.0f, 5000.0f
};

static const float rate_candidates[PS_RATE_CANDIDATE_COUNT] = {
    6000.0f, 8000.0f, 10000.0f
};

static float waveform_mean(const float *data, uint32_t length) {
    double sum = 0.0;
    for (uint32_t i = 0; i < length; ++i) sum += data[i];
    return (float)(sum / (double)length);
}

static float goertzel_energy_centered(
    const float *data,
    uint32_t length,
    float target_frequency,
    float sample_rate,
    float mean
) {
    float omega = 2.0f * PS_PI * target_frequency / sample_rate;
    float coefficient = 2.0f * cosf(omega);
    float q0 = 0.0f;
    float q1 = 0.0f;
    float q2 = 0.0f;

    for (uint32_t i = 0; i < length; ++i) {
        q0 = coefficient * q1 - q2 + (data[i] - mean);
        q2 = q1;
        q1 = q0;
    }

    float energy = q1 * q1 + q2 * q2 -
        q1 * q2 * coefficient;
    return (energy > 0.0f) ? energy : 0.0f;
}

static float detect_modulation_frequency(
    const float *data,
    uint32_t length,
    float sample_rate
) {
    float mean = waveform_mean(data, length);
    float best_frequency = 0.0f;
    float best_energy = -1.0f;

    for (uint32_t i = 0; i < PS_MODULATION_FREQUENCY_COUNT; ++i) {
        float energy = goertzel_energy_centered(
            data,
            length,
            modulation_frequencies[i],
            sample_rate,
            mean
        );
        if (energy > best_energy) {
            best_energy = energy;
            best_frequency = modulation_frequencies[i];
        }
    }
    return best_frequency;
}

static float fit_sinusoid_amplitude(
    const float *data,
    uint32_t length,
    float frequency,
    float sample_rate,
    float *dc_offset
) {
    float mean = waveform_mean(data, length);
    float omega = 2.0f * PS_PI * frequency / sample_rate;
    double sum_cos_basis = 0.0;
    double sum_sin_basis = 0.0;

    for (uint32_t i = 0; i < length; ++i) {
        float phase = omega * (float)i;
        sum_cos_basis += cosf(phase);
        sum_sin_basis += sinf(phase);
    }

    double mean_cos = sum_cos_basis / (double)length;
    double mean_sin = sum_sin_basis / (double)length;
    double sum_cos_cos = 0.0;
    double sum_sin_sin = 0.0;
    double sum_cos_sin = 0.0;
    double sum_cos = 0.0;
    double sum_sin = 0.0;

    for (uint32_t i = 0; i < length; ++i) {
        float phase = omega * (float)i;
        double cos_basis = (double)cosf(phase) - mean_cos;
        double sin_basis = (double)sinf(phase) - mean_sin;
        double centered = (double)data[i] - (double)mean;
        sum_cos_cos += cos_basis * cos_basis;
        sum_sin_sin += sin_basis * sin_basis;
        sum_cos_sin += cos_basis * sin_basis;
        sum_cos += centered * cos_basis;
        sum_sin += centered * sin_basis;
    }

    double determinant =
        sum_cos_cos * sum_sin_sin - sum_cos_sin * sum_cos_sin;
    if (fabs(determinant) <= 1.0e-18) return 0.0f;

    double cosine_coefficient =
        (sum_cos * sum_sin_sin - sum_sin * sum_cos_sin) /
        determinant;
    double sine_coefficient =
        (sum_sin * sum_cos_cos - sum_cos * sum_cos_sin) /
        determinant;
    if (dc_offset != 0) {
        *dc_offset = (float)(
            (double)mean -
            cosine_coefficient * mean_cos -
            sine_coefficient * mean_sin
        );
    }
    return sqrtf((float)(
        cosine_coefficient * cosine_coefficient +
        sine_coefficient * sine_coefficient
    ));
}

static float moving_average_gain(
    float frequency,
    float sample_rate,
    uint32_t taps
) {
    if (taps <= 1U || frequency <= 0.0f) return 1.0f;

    float half_omega = PS_PI * frequency / sample_rate;
    float denominator = (float)taps * sinf(half_omega);
    if (fabsf(denominator) <= 1.0e-12f) return 1.0f;
    return fabsf(
        sinf((float)taps * half_omega) / denominator
    );
}

static float estimate_symbol_rate(
    const float *data,
    uint32_t length,
    const ps_parameter_config_t *config
) {
    float minimum = data[0];
    float maximum = data[0];
    for (uint32_t i = 1; i < length; ++i) {
        if (data[i] < minimum) minimum = data[i];
        if (data[i] > maximum) maximum = data[i];
    }

    float range = maximum - minimum;
    if (range <= 1.0e-12f) return 0.0f;

    float mean = waveform_mean(data, length);
    float hysteresis = 0.05f * range;
    float lower = mean - hysteresis;
    float upper = mean + hysteresis;
    int state = (data[0] > mean) ? 1 : 0;
    int32_t last_edge = -1;
    uint32_t valid_intervals = 0;
    float errors[PS_RATE_CANDIDATE_COUNT] = {0.0f, 0.0f, 0.0f};

    for (uint32_t i = 1; i < length; ++i) {
        int next_state = state;
        if (state == 0 && data[i] > upper) next_state = 1;
        if (state == 1 && data[i] < lower) next_state = 0;
        if (next_state == state) continue;

        state = next_state;
        if (last_edge < 0) {
            last_edge = (int32_t)i;
            continue;
        }

        float interval = (float)((int32_t)i - last_edge);
        if (interval <
            0.6f * (config->sample_rate_hz / 10000.0f)) {
            continue;
        }
        last_edge = (int32_t)i;
        valid_intervals++;

        for (uint32_t r = 0; r < PS_RATE_CANDIDATE_COUNT; ++r) {
            float symbol_samples =
                config->sample_rate_hz / rate_candidates[r];
            float symbol_count_float = interval / symbol_samples;
            uint32_t symbol_count =
                (uint32_t)(symbol_count_float + 0.5f);
            if (symbol_count == 0U) symbol_count = 1U;
            errors[r] += fabsf(
                interval - (float)symbol_count * symbol_samples
            ) / symbol_samples;
        }
    }

    if (valid_intervals < config->minimum_symbol_intervals) {
        return 0.0f;
    }

    for (uint32_t r = 0; r < PS_RATE_CANDIDATE_COUNT; ++r) {
        errors[r] /= (float)valid_intervals;
    }

    uint32_t best = 0;
    for (uint32_t r = 1; r < PS_RATE_CANDIDATE_COUNT; ++r) {
        if (errors[r] < errors[best]) best = r;
    }
    uint32_t second = (best == 0U) ? 1U : 0U;
    for (uint32_t r = 0; r < PS_RATE_CANDIDATE_COUNT; ++r) {
        if (r != best && errors[r] < errors[second]) second = r;
    }

    if (errors[second] - errors[best] <
        config->rate_confidence_margin) {
        return 0.0f;
    }
    return rate_candidates[best];
}

static int estimate_two_levels(
    const float *data,
    uint32_t length,
    float *low_center,
    float *high_center
) {
    float minimum = data[0];
    float maximum = data[0];
    for (uint32_t i = 1; i < length; ++i) {
        if (data[i] < minimum) minimum = data[i];
        if (data[i] > maximum) maximum = data[i];
    }
    float center0 = minimum;
    float center1 = maximum;
    if (center1 - center0 <= 1.0e-12f) return 0;

    for (uint32_t iteration = 0; iteration < PS_LEVEL_KMEANS_ITERATIONS;
         ++iteration) {
        double sum0 = 0.0;
        double sum1 = 0.0;
        uint32_t count0 = 0;
        uint32_t count1 = 0;

        for (uint32_t i = 0; i < length; ++i) {
            if (fabsf(data[i] - center0) <=
                fabsf(data[i] - center1)) {
                sum0 += data[i];
                count0++;
            } else {
                sum1 += data[i];
                count1++;
            }
        }
        if (count0 == 0U || count1 == 0U) return 0;
        center0 = (float)(sum0 / (double)count0);
        center1 = (float)(sum1 / (double)count1);
    }

    if (center0 > center1) {
        float swap = center0;
        center0 = center1;
        center1 = swap;
    }

    /*
     * smart_mux_stream sends a 64-point moving-average result. At a symbol
     * transition this creates a ramp, and ordinary k-means pulls both centers
     * toward the midpoint. When both outer bands contain enough samples,
     * re-average those bands so the final separation follows the steady symbol
     * levels. Otherwise keep the k-means result instead of trusting outliers.
     */
    float full_span = maximum - minimum;
    float edge_width = PS_LEVEL_EDGE_BAND_FRACTION * full_span;
    double low_sum = 0.0;
    double high_sum = 0.0;
    uint32_t low_count = 0U;
    uint32_t high_count = 0U;
    for (uint32_t i = 0; i < length; ++i) {
        if (data[i] <= minimum + edge_width) {
            low_sum += data[i];
            low_count++;
        } else if (data[i] >= maximum - edge_width) {
            high_sum += data[i];
            high_count++;
        }
    }
    uint32_t minimum_edge_count = (uint32_t)(
        PS_LEVEL_MIN_EDGE_FRACTION * (float)length
    );
    if (minimum_edge_count == 0U) minimum_edge_count = 1U;
    if (low_count >= minimum_edge_count &&
        high_count >= minimum_edge_count) {
        center0 = (float)(low_sum / (double)low_count);
        center1 = (float)(high_sum / (double)high_count);
    }

    *low_center = center0;
    *high_center = center1;
    return 1;
}

void ps_parameter_config_default(ps_parameter_config_t *config) {
    if (config == 0) return;
    config->sample_rate_hz =
        PS_SMART_MUX_DEFAULT_SAMPLE_RATE_HZ;
    config->frequency_waveform_unit_to_hz =
        PS_SMART_MUX_DEFAULT_SAMPLE_RATE_HZ /
        PS_SMART_MUX_PHASE_COUNTS_PER_TURN;
    config->moving_average_taps =
        PS_SMART_MUX_MOVING_AVERAGE_TAPS;
    config->rate_confidence_margin = 0.015f;
    config->minimum_symbol_intervals = 2U;
}

ps_parameter_status_t ps_estimate_parameters(
    ps_signal_type_t signal_type,
    const float *demodulated_waveform,
    uint32_t waveform_length,
    const pl_feature_snapshot_t *snapshot,
    const ps_parameter_config_t *config,
    ps_signal_parameters_t *parameters
) {
    if (config == 0 || parameters == 0 ||
        config->sample_rate_hz <= 0.0f ||
        config->frequency_waveform_unit_to_hz <= 0.0f ||
        config->moving_average_taps == 0U) {
        return PS_PARAM_BAD_ARGUMENT;
    }

    memset(parameters, 0, sizeof(*parameters));
    parameters->signal_type = signal_type;

    if (signal_type == PS_SIGNAL_CW ||
        signal_type == PS_SIGNAL_UNKNOWN) {
        return PS_PARAM_OK;
    }

    if (signal_type == PS_SIGNAL_2PSK) {
        if (snapshot == 0 || !snapshot->psk_flag ||
            !snapshot->carrier_locked || !snapshot->timing_locked ||
            snapshot->rate_bps == 0U || snapshot->bit_count == 0U ||
            snapshot->frame_overflow) {
            return PS_PARAM_BPSK_NOT_READY;
        }

        parameters->symbol_rate_bps = (float)snapshot->rate_bps;
        parameters->valid_mask |= PS_PARAM_VALID_SYMBOL_RATE;
        parameters->bpsk_bit_count = snapshot->bit_count;
        for (uint32_t i = 0; i < PL_FEATURE_BPSK_BIT_WORDS; ++i) {
            parameters->bpsk_bit_words[i] = snapshot->bit_words[i];
        }
        parameters->valid_mask |= PS_PARAM_VALID_BPSK_BITS;
        return PS_PARAM_OK;
    }

    if (demodulated_waveform == 0 || waveform_length < 4U) {
        return PS_PARAM_WAVEFORM_REQUIRED;
    }

    if (signal_type == PS_SIGNAL_AM) {
        parameters->modulation_frequency_hz =
            detect_modulation_frequency(
                demodulated_waveform,
                waveform_length,
                config->sample_rate_hz
            );
        float dc_level = 0.0f;
        float filter_gain = moving_average_gain(
            parameters->modulation_frequency_hz,
            config->sample_rate_hz,
            config->moving_average_taps
        );
        if (filter_gain <= 0.05f) {
            return PS_PARAM_INSUFFICIENT_DATA;
        }
        float filtered_amplitude = fit_sinusoid_amplitude(
            demodulated_waveform,
            waveform_length,
            parameters->modulation_frequency_hz,
            config->sample_rate_hz,
            &dc_level
        );
        if (dc_level <= 1.0e-12f) {
            return PS_PARAM_INSUFFICIENT_DATA;
        }
        parameters->am_depth =
            filtered_amplitude / (filter_gain * dc_level);
        if (parameters->am_depth < 0.0f) parameters->am_depth = 0.0f;
        if (parameters->am_depth > 1.0f) parameters->am_depth = 1.0f;
        parameters->valid_mask |=
            PS_PARAM_VALID_MODULATION_FREQUENCY |
            PS_PARAM_VALID_AM_DEPTH;
        return PS_PARAM_OK;
    }

    if (signal_type == PS_SIGNAL_FM) {
        parameters->modulation_frequency_hz =
            detect_modulation_frequency(
                demodulated_waveform,
                waveform_length,
                config->sample_rate_hz
            );
        if (parameters->modulation_frequency_hz <= 0.0f) {
            return PS_PARAM_INSUFFICIENT_DATA;
        }

        float native_deviation = fit_sinusoid_amplitude(
            demodulated_waveform,
            waveform_length,
            parameters->modulation_frequency_hz,
            config->sample_rate_hz,
            0
        );
        float filter_gain = moving_average_gain(
            parameters->modulation_frequency_hz,
            config->sample_rate_hz,
            config->moving_average_taps
        );
        if (filter_gain <= 0.05f) {
            return PS_PARAM_INSUFFICIENT_DATA;
        }
        parameters->frequency_deviation_hz =
            (native_deviation / filter_gain) *
            config->frequency_waveform_unit_to_hz;
        parameters->modulation_index =
            parameters->frequency_deviation_hz /
            parameters->modulation_frequency_hz;
        parameters->valid_mask |=
            PS_PARAM_VALID_MODULATION_FREQUENCY |
            PS_PARAM_VALID_FREQUENCY_DEVIATION |
            PS_PARAM_VALID_MODULATION_INDEX;
        return PS_PARAM_OK;
    }

    if (signal_type == PS_SIGNAL_2ASK) {
        parameters->symbol_rate_bps = estimate_symbol_rate(
            demodulated_waveform, waveform_length, config
        );
        if (parameters->symbol_rate_bps <= 0.0f) {
            return PS_PARAM_INSUFFICIENT_DATA;
        }
        parameters->valid_mask |= PS_PARAM_VALID_SYMBOL_RATE;
        return PS_PARAM_OK;
    }

    if (signal_type == PS_SIGNAL_2FSK) {
        float low_center = 0.0f;
        float high_center = 0.0f;
        parameters->symbol_rate_bps = estimate_symbol_rate(
            demodulated_waveform, waveform_length, config
        );
        if (parameters->symbol_rate_bps <= 0.0f ||
            !estimate_two_levels(
                demodulated_waveform,
                waveform_length,
                &low_center,
                &high_center)) {
            return PS_PARAM_INSUFFICIENT_DATA;
        }

        parameters->frequency_deviation_hz =
            (high_center - low_center) *
            config->frequency_waveform_unit_to_hz;
        parameters->fsk_h =
            parameters->frequency_deviation_hz /
            parameters->symbol_rate_bps;
        parameters->valid_mask |=
            PS_PARAM_VALID_SYMBOL_RATE |
            PS_PARAM_VALID_FREQUENCY_DEVIATION |
            PS_PARAM_VALID_FSK_H;
        return PS_PARAM_OK;
    }

    return PS_PARAM_BAD_ARGUMENT;
}

uint8_t ps_parameters_get_bpsk_bit(
    const ps_signal_parameters_t *parameters,
    uint32_t bit_index
) {
    if (parameters == 0 || bit_index >= parameters->bpsk_bit_count) {
        return 0U;
    }
    uint8_t raw_bit = (uint8_t)(
        (parameters->bpsk_bit_words[bit_index >> 5] >>
         (bit_index & 31U)) & 1U
    );
    return raw_bit ^ parameters->bpsk_polarity_inverted;
}
