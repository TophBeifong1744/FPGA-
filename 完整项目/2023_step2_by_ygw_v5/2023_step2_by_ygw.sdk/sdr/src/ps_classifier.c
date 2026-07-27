#include "ps_classifier.h"

#include <string.h>

#define PS_DEFAULT_MAG_VARIANCE_THRESHOLD  2097152000000ULL
#define PS_DEFAULT_FREQ_VARIANCE_THRESHOLD 314572800000000ULL
#define PS_KMEANS_ITERATIONS 12U

static float abs_float(float value) {
    return (value < 0.0f) ? -value : value;
}

static float min_float(float first, float second) {
    return (first < second) ? first : second;
}

static float weighted_quantile_bin(
    const uint32_t histogram[PL_FEATURE_HISTOGRAM_BINS],
    uint64_t total,
    uint32_t numerator,
    uint32_t denominator
) {
    uint64_t target =
        (total * numerator + denominator - 1U) / denominator;
    uint64_t cumulative = 0;

    for (uint32_t i = 0; i < PL_FEATURE_HISTOGRAM_BINS; ++i) {
        cumulative += histogram[i];
        if (cumulative >= target) return (float)i;
    }
    return (float)(PL_FEATURE_HISTOGRAM_BINS - 1U);
}

void ps_classifier_config_default(ps_classifier_config_t *config) {
    if (config == 0) return;
    config->magnitude_variance_threshold =
        PS_DEFAULT_MAG_VARIANCE_THRESHOLD;
    config->frequency_variance_threshold =
        PS_DEFAULT_FREQ_VARIANCE_THRESHOLD;
    config->active_axis_dominance_ratio = 1.25f;

    config->two_level_min_center_separation_bins = 3.0f;
    config->two_level_max_within_variance_ratio = 0.14f;
    config->two_level_min_cluster_fraction = 0.05f;

    config->psk_min_spike_count = 1U;
}

int ps_histogram_analyze(
    const uint32_t histogram[PL_FEATURE_HISTOGRAM_BINS],
    const ps_classifier_config_t *config,
    ps_histogram_metrics_t *metrics
) {
    if (histogram == 0 || config == 0 || metrics == 0) return -1;

    memset(metrics, 0, sizeof(*metrics));

    uint64_t total = 0;
    double weighted_sum = 0.0;
    for (uint32_t i = 0; i < PL_FEATURE_HISTOGRAM_BINS; ++i) {
        total += histogram[i];
        weighted_sum += (double)histogram[i] * (double)i;
    }
    metrics->total_count = total;
    if (total == 0) return 0;

    float center0 = weighted_quantile_bin(histogram, total, 1U, 5U);
    float center1 = weighted_quantile_bin(histogram, total, 4U, 5U);
    if (center0 > center1) {
        float swap = center0;
        center0 = center1;
        center1 = swap;
    }

    uint64_t count0 = 0;
    uint64_t count1 = 0;
    for (uint32_t iteration = 0; iteration < PS_KMEANS_ITERATIONS;
         ++iteration) {
        double sum0 = 0.0;
        double sum1 = 0.0;
        count0 = 0;
        count1 = 0;

        for (uint32_t i = 0; i < PL_FEATURE_HISTOGRAM_BINS; ++i) {
            float value = (float)i;
            if (abs_float(value - center0) <=
                abs_float(value - center1)) {
                count0 += histogram[i];
                sum0 += (double)histogram[i] * value;
            } else {
                count1 += histogram[i];
                sum1 += (double)histogram[i] * value;
            }
        }
        if (count0 != 0) center0 = (float)(sum0 / (double)count0);
        if (count1 != 0) center1 = (float)(sum1 / (double)count1);
    }

    count0 = 0;
    count1 = 0;
    for (uint32_t i = 0; i < PL_FEATURE_HISTOGRAM_BINS; ++i) {
        float value = (float)i;
        if (abs_float(value - center0) <=
            abs_float(value - center1)) {
            count0 += histogram[i];
        } else {
            count1 += histogram[i];
        }
    }

    if (count0 == 0 || count1 == 0) return 0;
    if (center0 > center1) {
        float center_swap = center0;
        uint64_t count_swap = count0;
        center0 = center1;
        center1 = center_swap;
        count0 = count1;
        count1 = count_swap;
    }

    double global_mean = weighted_sum / (double)total;
    double total_sse = 0.0;
    double within_sse = 0.0;
    for (uint32_t i = 0; i < PL_FEATURE_HISTOGRAM_BINS; ++i) {
        double global_error = (double)i - global_mean;
        double low_error = (double)i - center0;
        double high_error = (double)i - center1;
        double selected_error =
            (low_error * low_error <= high_error * high_error)
            ? low_error
            : high_error;

        total_sse += (double)histogram[i] *
            global_error * global_error;
        within_sse += (double)histogram[i] *
            selected_error * selected_error;
    }

    metrics->low_cluster_count = count0;
    metrics->high_cluster_count = count1;
    metrics->low_center_bin = center0;
    metrics->high_center_bin = center1;
    metrics->center_separation_bins = center1 - center0;
    metrics->smaller_cluster_fraction =
        (float)((count0 < count1) ? count0 : count1) / (float)total;
    metrics->within_to_total_variance_ratio =
        (total_sse > 0.0) ? (float)(within_sse / total_sse) : 1.0f;
    metrics->valid = 1U;

    metrics->is_two_level = (uint8_t)(
        metrics->center_separation_bins >=
            config->two_level_min_center_separation_bins &&
        metrics->within_to_total_variance_ratio <=
            config->two_level_max_within_variance_ratio &&
        metrics->smaller_cluster_fraction >=
            config->two_level_min_cluster_fraction
    );
    return 1;
}

static float histogram_confidence(
    const ps_histogram_metrics_t *metrics,
    const ps_classifier_config_t *config
) {
    if (!metrics->valid) return 0.0f;

    float separation_score = min_float(
        metrics->center_separation_bins /
            config->two_level_min_center_separation_bins,
        1.0f
    );

    if (metrics->is_two_level) {
        float compactness_score = 1.0f -
            metrics->within_to_total_variance_ratio /
            config->two_level_max_within_variance_ratio;
        if (compactness_score < 0.0f) compactness_score = 0.0f;
        return 0.5f + 0.25f * separation_score +
            0.25f * compactness_score;
    }

    float analog_score =
        metrics->within_to_total_variance_ratio /
        config->two_level_max_within_variance_ratio;
    return 0.5f + 0.5f * min_float(analog_score, 1.0f);
}

int ps_classify_snapshot(
    const pl_feature_snapshot_t *snapshot,
    const ps_classifier_config_t *config,
    ps_classification_result_t *result
) {
    if (snapshot == 0 || config == 0 || result == 0 ||
        config->magnitude_variance_threshold == 0 ||
        config->frequency_variance_threshold == 0 ||
        config->active_axis_dominance_ratio < 1.0f ||
        config->two_level_min_center_separation_bins <= 0.0f ||
        config->two_level_max_within_variance_ratio <= 0.0f) {
        return -1;
    }

    memset(result, 0, sizeof(*result));
    result->signal_type = PS_SIGNAL_UNKNOWN;

    ps_histogram_analyze(
        snapshot->hist_mag, config, &result->magnitude_histogram
    );
    ps_histogram_analyze(
        snapshot->hist_freq, config, &result->frequency_histogram
    );

    result->bpsk_candidate = (uint8_t)(
        snapshot->psk_flag &&
        snapshot->psk_spike_count >= config->psk_min_spike_count
    );
    result->bpsk_ready = (uint8_t)(
        result->bpsk_candidate &&
        snapshot->carrier_locked &&
        snapshot->timing_locked &&
        snapshot->rate_code != 0U &&
        snapshot->bit_count > 0U &&
        !snapshot->frame_overflow
    );

    if (result->bpsk_ready) {
        result->signal_type = PS_SIGNAL_2PSK;
        result->confidence = 1.0f;
        return 0;
    }
    if (result->bpsk_candidate) {
        result->signal_type = PS_SIGNAL_UNKNOWN;
        result->confidence = 0.0f;
        return 0;
    }

    result->magnitude_axis_active = (uint8_t)(
        snapshot->var_mag_num > config->magnitude_variance_threshold
    );
    result->frequency_axis_active = (uint8_t)(
        snapshot->var_freq_num > config->frequency_variance_threshold
    );

    if (!result->magnitude_axis_active &&
        !result->frequency_axis_active) {
        result->signal_type = PS_SIGNAL_CW;
        result->confidence = 1.0f;
        return 0;
    }

    uint8_t choose_magnitude = result->magnitude_axis_active;
    uint8_t choose_frequency = result->frequency_axis_active;
    if (choose_magnitude && choose_frequency) {
        double magnitude_score =
            (double)snapshot->var_mag_num /
            (double)config->magnitude_variance_threshold;
        double frequency_score =
            (double)snapshot->var_freq_num /
            (double)config->frequency_variance_threshold;

        if (magnitude_score >=
            frequency_score * config->active_axis_dominance_ratio) {
            choose_frequency = 0U;
        } else if (frequency_score >=
                   magnitude_score *
                       config->active_axis_dominance_ratio) {
            choose_magnitude = 0U;
        } else {
            result->signal_type = PS_SIGNAL_UNKNOWN;
            result->confidence = 0.0f;
            return 0;
        }
    }

    if (choose_magnitude) {
        result->signal_type =
            result->magnitude_histogram.is_two_level
            ? PS_SIGNAL_2ASK
            : PS_SIGNAL_AM;
        result->confidence = histogram_confidence(
            &result->magnitude_histogram, config
        );
    } else if (choose_frequency) {
        result->signal_type =
            result->frequency_histogram.is_two_level
            ? PS_SIGNAL_2FSK
            : PS_SIGNAL_FM;
        result->confidence = histogram_confidence(
            &result->frequency_histogram, config
        );
    }
    return 0;
}

const char *ps_signal_type_name(ps_signal_type_t type) {
    switch (type) {
        case PS_SIGNAL_CW: return "CW";
        case PS_SIGNAL_AM: return "AM";
        case PS_SIGNAL_FM: return "FM";
        case PS_SIGNAL_2ASK: return "2ASK";
        case PS_SIGNAL_2FSK: return "2FSK";
        case PS_SIGNAL_2PSK: return "2PSK";
        default: return "UNKNOWN";
    }
}
