#include <stdint.h>
#include <string.h>

#include "pl_feature_reader.h"
#include "ps_classifier.h"
#include "ps_parameter_estimator.h"
#include "ps_smart_mux_contract.h"
#include "ps_upgrade_pipeline.h"
#include "ps_waveform_capture.h"
#include "rgb_result_display.h"
#include "sleep.h"
#include "xil_printf.h"

#define REQUIRED_STABLE_FRAMES             3U
#define PARAMETER_REFRESH_FEATURE_FRAMES  12U
#define MAIN_IDLE_DELAY_US               500U

static ps_upgrade_pipeline_t pipeline;
static ps_waveform_capture_t waveform_capture;
static ps_waveform_capture_config_t waveform_capture_config;
static float captured_waveform[PS_SMART_MUX_FRAME_SAMPLES];

static uint8_t signal_requires_waveform(ps_signal_type_t signal_type)
{
    return (uint8_t)(
        signal_type == PS_SIGNAL_AM
        || signal_type == PS_SIGNAL_FM
        || signal_type == PS_SIGNAL_2ASK
        || signal_type == PS_SIGNAL_2FSK
    );
}

static void print_parameter_result(
    ps_signal_type_t signal_type,
    const ps_signal_parameters_t *parameters
) {
    xil_printf(
        "stable=%s valid=0x%08lx\r\n",
        ps_signal_type_name(signal_type),
        (unsigned long)parameters->valid_mask
    );

    switch (signal_type) {
    case PS_SIGNAL_AM:
        xil_printf(
            "F=%lu Hz, ma=%lu/1000\r\n",
            (unsigned long)(parameters->modulation_frequency_hz + 0.5f),
            (unsigned long)(parameters->am_depth * 1000.0f + 0.5f)
        );
        break;
    case PS_SIGNAL_FM:
        xil_printf(
            "F=%lu Hz, df=%lu Hz, mf=%lu/1000\r\n",
            (unsigned long)(parameters->modulation_frequency_hz + 0.5f),
            (unsigned long)(parameters->frequency_deviation_hz + 0.5f),
            (unsigned long)(parameters->modulation_index * 1000.0f + 0.5f)
        );
        break;
    case PS_SIGNAL_2ASK:
        xil_printf(
            "Rc=%lu bps\r\n",
            (unsigned long)(parameters->symbol_rate_bps + 0.5f)
        );
        break;
    case PS_SIGNAL_2FSK:
        xil_printf(
            "Rc=%lu bps, df=%lu Hz, h=%lu/1000\r\n",
            (unsigned long)(parameters->symbol_rate_bps + 0.5f),
            (unsigned long)(parameters->frequency_deviation_hz + 0.5f),
            (unsigned long)(parameters->fsk_h * 1000.0f + 0.5f)
        );
        break;
    case PS_SIGNAL_2PSK:
        xil_printf(
            "Rc=%lu bps, bits=%u\r\n",
            (unsigned long)(parameters->symbol_rate_bps + 0.5f),
            (unsigned int)parameters->bpsk_bit_count
        );
        break;
    case PS_SIGNAL_CW:
        xil_printf("no modulation parameters\r\n");
        break;
    default:
        break;
    }
}

/*
 * Performs one complete parameter update for the current stable type.
 * Returns 1 when valid results were produced and displayed.
 */
static uint8_t update_parameters(
    ps_signal_type_t signal_type,
    const pl_feature_snapshot_t *snapshot,
    ps_waveform_status_t capture_init_status,
    uint8_t show_measuring
) {
    ps_signal_parameters_t parameters;
    ps_parameter_status_t parameter_status;
    ps_waveform_status_t capture_status;
    const float *waveform = 0;
    uint32_t waveform_length = 0U;

    memset(&parameters, 0, sizeof(parameters));
    parameters.signal_type = signal_type;

    if (show_measuring != 0U && signal_type != PS_SIGNAL_CW) {
        rgb_result_display_update(
            signal_type,
            &parameters,
            RGB_RESULT_STATE_MEASURING,
            0
        );
    }

    if (signal_requires_waveform(signal_type) != 0U) {
        if (capture_init_status != PS_WAVEFORM_OK) {
            rgb_result_display_update(
                signal_type,
                &parameters,
                RGB_RESULT_STATE_CAPTURE_ERROR,
                (int)capture_init_status
            );
            return 0U;
        }

        capture_status = ps_waveform_capture_frame(
            &waveform_capture,
            signal_type,
            captured_waveform,
            PS_SMART_MUX_FRAME_SAMPLES,
            &waveform_capture_config
        );
        if (capture_status != PS_WAVEFORM_OK) {
            xil_printf(
                "waveform capture failed: %d\r\n",
                (int)capture_status
            );
            rgb_result_display_update(
                signal_type,
                &parameters,
                RGB_RESULT_STATE_CAPTURE_ERROR,
                (int)capture_status
            );
            return 0U;
        }

        waveform = captured_waveform;
        waveform_length = PS_SMART_MUX_FRAME_SAMPLES;
    }

    parameter_status = ps_estimate_parameters(
        signal_type,
        waveform,
        waveform_length,
        snapshot,
        &pipeline.parameter_config,
        &parameters
    );
    if (parameter_status != PS_PARAM_OK) {
        xil_printf(
            "parameter estimation failed: %d\r\n",
            (int)parameter_status
        );
        rgb_result_display_update(
            signal_type,
            &parameters,
            RGB_RESULT_STATE_PARAMETER_ERROR,
            (int)parameter_status
        );
        return 0U;
    }

    rgb_result_display_update(
        signal_type,
        &parameters,
        RGB_RESULT_STATE_VALID,
        0
    );
    print_parameter_result(signal_type, &parameters);
    return 1U;
}

int main(void)
{
    pl_feature_snapshot_t snapshot;
    ps_classification_result_t frame_result;
    pl_feature_read_status_t read_status;
    ps_waveform_status_t capture_init_status;
    ps_signal_type_t stable_type = PS_SIGNAL_UNKNOWN;
    uint32_t refresh_counter = PARAMETER_REFRESH_FEATURE_FRAMES;
    uint8_t stable_type_changed;
    uint8_t update_ok;
    int display_status;

    xil_printf("\r\nPS Upgrade + VDMA result display starting\r\n");

    display_status = rgb_result_display_init();
    if (display_status != 0) {
        xil_printf("VDMA display start failed: %d\r\n", display_status);
        return 1;
    }

    ps_upgrade_pipeline_init(&pipeline, REQUIRED_STABLE_FRAMES);
    ps_waveform_capture_config_default(&waveform_capture_config);
    capture_init_status = ps_waveform_capture_init(&waveform_capture);
    if (capture_init_status != PS_WAVEFORM_OK) {
        /*
         * Classification, CW, and 2PSK can still work without AXI DMA.
         * Waveform-dependent types will show this exact capture error.
         */
        xil_printf(
            "AXI DMA capture init failed: %d\r\n",
            (int)capture_init_status
        );
    }

    for (;;) {
        stable_type_changed = 0U;
        read_status = ps_upgrade_pipeline_poll(
            &pipeline,
            &snapshot,
            &frame_result,
            &stable_type_changed
        );

        if (read_status == PL_FEATURE_READ_NO_NEW_FRAME) {
            usleep(MAIN_IDLE_DELAY_US);
            continue;
        }
        if (read_status != PL_FEATURE_READ_NEW_FRAME) {
            xil_printf("feature frame rejected: %d\r\n", (int)read_status);
            usleep(MAIN_IDLE_DELAY_US);
            continue;
        }
        if (pipeline.decision_engine.has_stable_result == 0U) {
            continue;
        }

        stable_type =
            pipeline.decision_engine.stable_result.signal_type;

        if (stable_type_changed != 0U) {
            xil_printf(
                "stable signal changed to %s\r\n",
                ps_signal_type_name(stable_type)
            );
            refresh_counter = PARAMETER_REFRESH_FEATURE_FRAMES;
        } else if (refresh_counter < PARAMETER_REFRESH_FEATURE_FRAMES) {
            ++refresh_counter;
        }

        /*
         * Do not refresh parameters from a frame that has started voting for
         * another type but has not yet passed the 3-frame stability filter.
         */
        if (frame_result.signal_type != stable_type) {
            continue;
        }

        if (stable_type == PS_SIGNAL_UNKNOWN) {
            if (stable_type_changed != 0U) {
                rgb_result_display_update(
                    stable_type,
                    0,
                    RGB_RESULT_STATE_WAITING,
                    0
                );
            }
            continue;
        }

        if (stable_type == PS_SIGNAL_CW
                && stable_type_changed == 0U) {
            continue;
        }

        if (refresh_counter < PARAMETER_REFRESH_FEATURE_FRAMES) {
            continue;
        }

        update_ok = update_parameters(
            stable_type,
            &snapshot,
            capture_init_status,
            stable_type_changed
        );
        refresh_counter = update_ok != 0U
            ? 0U
            : PARAMETER_REFRESH_FEATURE_FRAMES - 1U;
    }
}
