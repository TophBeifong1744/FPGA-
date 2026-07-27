#ifndef PS_UPGRADE_PL_FEATURE_SNAPSHOT_H_
#define PS_UPGRADE_PL_FEATURE_SNAPSHOT_H_

#include <stdint.h>

#include "bpsk_bram_map.h"

typedef struct {
    uint32_t sequence;

    uint64_t var_mag_num;
    uint64_t var_freq_num;
    int32_t mean_mag_num;
    int32_t mean_freq_num;

    uint32_t psk_spike_count;
    uint8_t psk_flag;

    uint32_t hist_mag[PL_FEATURE_HISTOGRAM_BINS];
    uint32_t hist_freq[PL_FEATURE_HISTOGRAM_BINS];
    uint32_t histogram_sample_count;

    uint8_t carrier_locked;
    uint8_t timing_locked;
    uint8_t rate_code;
    uint32_t rate_bps;

    uint8_t bit_count;
    uint32_t bit_words[PL_FEATURE_BPSK_BIT_WORDS];

    uint8_t frame_overflow;
    uint8_t bit_overflow_sticky;
    uint8_t snapshot_overrun_sticky;
    uint8_t dropped_bits;
    uint16_t snapshot_overrun_count;
} pl_feature_snapshot_t;

#endif /* PS_UPGRADE_PL_FEATURE_SNAPSHOT_H_ */
