#ifndef PS_UPGRADE_PS_WAVEFORM_CAPTURE_H_
#define PS_UPGRADE_PS_WAVEFORM_CAPTURE_H_

#include <stdint.h>

#include "xaxidma.h"
#include "xgpio.h"

#include "ps_classifier.h"
#include "ps_smart_mux_contract.h"

typedef enum {
    PS_WAVEFORM_OK = 0,
    PS_WAVEFORM_BAD_ARGUMENT = -1,
    PS_WAVEFORM_UNSUPPORTED_SIGNAL = -2,
    PS_WAVEFORM_DMA_CONFIG_NOT_FOUND = -3,
    PS_WAVEFORM_DMA_INIT_FAILED = -4,
    PS_WAVEFORM_DMA_SG_UNSUPPORTED = -5,
    PS_WAVEFORM_GPIO_INIT_FAILED = -6,
    PS_WAVEFORM_NOT_INITIALIZED = -7,
    PS_WAVEFORM_DMA_BUSY = -8,
    PS_WAVEFORM_DMA_START_FAILED = -9,
    PS_WAVEFORM_DMA_TIMEOUT = -10
} ps_waveform_status_t;

typedef struct {
    uint32_t mux_settle_us;
    uint32_t dma_poll_limit;
} ps_waveform_capture_config_t;

typedef struct {
    XAxiDma dma;
    XGpio mux_gpio;
    uint8_t initialized;
    uint8_t current_mux_mode;
} ps_waveform_capture_t;

void ps_waveform_capture_config_default(
    ps_waveform_capture_config_t *config
);

ps_waveform_status_t ps_waveform_capture_init(
    ps_waveform_capture_t *capture
);

ps_waveform_status_t ps_smart_mux_mode_for_signal(
    ps_signal_type_t signal_type,
    uint32_t *mux_mode
);

/*
 * Capture exactly one smart_mux_stream AXI-Stream frame.
 *
 * waveform must have room for PS_SMART_MUX_FRAME_SAMPLES floats. The values
 * remain signed raw PL counts; frequency conversion is performed later by
 * ps_parameter_estimator using frequency_waveform_unit_to_hz.
 */
ps_waveform_status_t ps_waveform_capture_frame(
    ps_waveform_capture_t *capture,
    ps_signal_type_t signal_type,
    float *waveform,
    uint32_t waveform_capacity,
    const ps_waveform_capture_config_t *config
);

#endif /* PS_UPGRADE_PS_WAVEFORM_CAPTURE_H_ */
