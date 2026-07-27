#ifndef VMDA_UPGRADE_RGB_RESULT_DISPLAY_H_
#define VMDA_UPGRADE_RGB_RESULT_DISPLAY_H_

#include <stdint.h>

#include "ps_classifier.h"
#include "ps_parameter_estimator.h"

typedef enum {
    RGB_RESULT_STATE_WAITING = 0,
    RGB_RESULT_STATE_MEASURING,
    RGB_RESULT_STATE_VALID,
    RGB_RESULT_STATE_CAPTURE_ERROR,
    RGB_RESULT_STATE_PARAMETER_ERROR
} rgb_result_state_t;

/*
 * Initializes the 800 x 480 RGB888 framebuffer and starts AXI VDMA MM2S.
 * Returns 0 on success or a negative vdma_display_status_t value.
 */
int rgb_result_display_init(void);

/*
 * Redraws the complete result dashboard. No waveform is drawn.
 * error_code is shown only for the two error states.
 */
void rgb_result_display_update(
    ps_signal_type_t signal_type,
    const ps_signal_parameters_t *parameters,
    rgb_result_state_t state,
    int error_code
);

#endif /* VMDA_UPGRADE_RGB_RESULT_DISPLAY_H_ */
