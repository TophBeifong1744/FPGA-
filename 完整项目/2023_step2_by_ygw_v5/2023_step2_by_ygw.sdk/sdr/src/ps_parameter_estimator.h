#ifndef PS_UPGRADE_PS_PARAMETER_ESTIMATOR_H_
#define PS_UPGRADE_PS_PARAMETER_ESTIMATOR_H_

#include <stdint.h>

#include "ps_classifier.h"
#include "pl_feature_snapshot.h"

#define PS_PARAM_VALID_MODULATION_FREQUENCY 0x00000001U
#define PS_PARAM_VALID_AM_DEPTH             0x00000002U
#define PS_PARAM_VALID_FREQUENCY_DEVIATION  0x00000004U
#define PS_PARAM_VALID_MODULATION_INDEX     0x00000008U
#define PS_PARAM_VALID_SYMBOL_RATE          0x00000010U
#define PS_PARAM_VALID_FSK_H                 0x00000020U
#define PS_PARAM_VALID_BPSK_BITS             0x00000040U

typedef enum {
    PS_PARAM_OK = 0,
    PS_PARAM_BAD_ARGUMENT = -1,
    PS_PARAM_WAVEFORM_REQUIRED = -2,
    PS_PARAM_INSUFFICIENT_DATA = -3,
    PS_PARAM_BPSK_NOT_READY = -4
} ps_parameter_status_t;

typedef struct {
    float sample_rate_hz;
    /*
     * Hz represented by one raw dphi_out count. For the current PL:
     * sample_rate_hz / 2^22.
     */
    float frequency_waveform_unit_to_hz;
    uint32_t moving_average_taps;
    float rate_confidence_margin;
    uint32_t minimum_symbol_intervals;
} ps_parameter_config_t;

typedef struct {
    ps_signal_type_t signal_type;
    uint32_t valid_mask;

    float modulation_frequency_hz;
    float am_depth;
    float frequency_deviation_hz;
    float modulation_index;
    float symbol_rate_bps;
    float fsk_h;

    uint8_t bpsk_bit_count;
    uint32_t bpsk_bit_words[PL_FEATURE_BPSK_BIT_WORDS];
    uint8_t bpsk_polarity_inverted;
} ps_signal_parameters_t;

void ps_parameter_config_default(ps_parameter_config_t *config);

ps_parameter_status_t ps_estimate_parameters(
    ps_signal_type_t signal_type,
    const float *demodulated_waveform,
    uint32_t waveform_length,
    const pl_feature_snapshot_t *snapshot,
    const ps_parameter_config_t *config,
    ps_signal_parameters_t *parameters
);

uint8_t ps_parameters_get_bpsk_bit(
    const ps_signal_parameters_t *parameters,
    uint32_t bit_index
);

#endif /* PS_UPGRADE_PS_PARAMETER_ESTIMATOR_H_ */
