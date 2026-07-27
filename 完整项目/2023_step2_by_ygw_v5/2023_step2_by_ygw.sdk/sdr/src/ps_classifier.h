#ifndef PS_UPGRADE_PS_CLASSIFIER_H_
#define PS_UPGRADE_PS_CLASSIFIER_H_

#include <stdint.h>

#include "pl_feature_snapshot.h"

typedef enum {
    PS_SIGNAL_UNKNOWN = 0,
    PS_SIGNAL_CW,
    PS_SIGNAL_AM,
    PS_SIGNAL_FM,
    PS_SIGNAL_2ASK,
    PS_SIGNAL_2FSK,
    PS_SIGNAL_2PSK
} ps_signal_type_t;

typedef struct {
    uint64_t magnitude_variance_threshold;
    uint64_t frequency_variance_threshold;
    float active_axis_dominance_ratio;

    float two_level_min_center_separation_bins;
    float two_level_max_within_variance_ratio;
    float two_level_min_cluster_fraction;

    uint32_t psk_min_spike_count;
} ps_classifier_config_t;

typedef struct {
    uint64_t total_count;
    uint64_t low_cluster_count;
    uint64_t high_cluster_count;
    float low_center_bin;
    float high_center_bin;
    float center_separation_bins;
    float within_to_total_variance_ratio;
    float smaller_cluster_fraction;
    uint8_t valid;
    uint8_t is_two_level;
} ps_histogram_metrics_t;

typedef struct {
    ps_signal_type_t signal_type;
    float confidence;

    uint8_t magnitude_axis_active;
    uint8_t frequency_axis_active;
    uint8_t bpsk_candidate;
    uint8_t bpsk_ready;

    ps_histogram_metrics_t magnitude_histogram;
    ps_histogram_metrics_t frequency_histogram;
} ps_classification_result_t;

void ps_classifier_config_default(ps_classifier_config_t *config);

int ps_histogram_analyze(
    const uint32_t histogram[PL_FEATURE_HISTOGRAM_BINS],
    const ps_classifier_config_t *config,
    ps_histogram_metrics_t *metrics
);

int ps_classify_snapshot(
    const pl_feature_snapshot_t *snapshot,
    const ps_classifier_config_t *config,
    ps_classification_result_t *result
);

const char *ps_signal_type_name(ps_signal_type_t type);

#endif /* PS_UPGRADE_PS_CLASSIFIER_H_ */
