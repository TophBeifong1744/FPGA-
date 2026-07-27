#include "ps_waveform_capture.h"

#include <string.h>

#include "sleep.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xstatus.h"

/*
 * Use BSP-generated device IDs. There is intentionally no register-address
 * fallback: a missing macro means the BSP does not match the current bitstream.
 */
#if defined(PS_WAVEFORM_DMA_DEVICE_ID)
#define PS_DMA_DEVICE_ID PS_WAVEFORM_DMA_DEVICE_ID
#elif defined(XPAR_AXIDMA_0_DEVICE_ID)
#define PS_DMA_DEVICE_ID XPAR_AXIDMA_0_DEVICE_ID
#elif defined(XPAR_AXI_DMA_0_DEVICE_ID)
#define PS_DMA_DEVICE_ID XPAR_AXI_DMA_0_DEVICE_ID
#else
#error "axi_dma_0 is missing from xparameters.h; export hardware and regenerate the BSP"
#endif

#if defined(PS_SMART_MUX_GPIO_DEVICE_ID)
#define PS_MUX_GPIO_DEVICE_ID PS_SMART_MUX_GPIO_DEVICE_ID
#elif defined(XPAR_AXI_GPIO_MUX_DEVICE_ID)
#define PS_MUX_GPIO_DEVICE_ID XPAR_AXI_GPIO_MUX_DEVICE_ID
#elif defined(XPAR_GPIO_0_DEVICE_ID)
#define PS_MUX_GPIO_DEVICE_ID XPAR_GPIO_0_DEVICE_ID
#else
#error "axi_gpio_mux is missing from xparameters.h; export hardware and regenerate the BSP"
#endif

#if defined(__GNUC__)
static int32_t dma_raw_samples[PS_SMART_MUX_FRAME_SAMPLES]
    __attribute__((aligned(64)));
#else
static int32_t dma_raw_samples[PS_SMART_MUX_FRAME_SAMPLES];
#endif

void ps_waveform_capture_config_default(
    ps_waveform_capture_config_t *config
) {
    if (config == 0) return;
    config->mux_settle_us = 1000U;
    config->dma_poll_limit = 10000000U;
}

ps_waveform_status_t ps_smart_mux_mode_for_signal(
    ps_signal_type_t signal_type,
    uint32_t *mux_mode
) {
    if (mux_mode == 0) return PS_WAVEFORM_BAD_ARGUMENT;

    switch (signal_type) {
        case PS_SIGNAL_AM:
            *mux_mode = PS_SMART_MUX_MODE_AM;
            return PS_WAVEFORM_OK;
        case PS_SIGNAL_FM:
            *mux_mode = PS_SMART_MUX_MODE_FM;
            return PS_WAVEFORM_OK;
        case PS_SIGNAL_2ASK:
            *mux_mode = PS_SMART_MUX_MODE_2ASK;
            return PS_WAVEFORM_OK;
        case PS_SIGNAL_2FSK:
            *mux_mode = PS_SMART_MUX_MODE_2FSK;
            return PS_WAVEFORM_OK;
        default:
            return PS_WAVEFORM_UNSUPPORTED_SIGNAL;
    }
}

ps_waveform_status_t ps_waveform_capture_init(
    ps_waveform_capture_t *capture
) {
    if (capture == 0) return PS_WAVEFORM_BAD_ARGUMENT;

    memset(capture, 0, sizeof(*capture));

    XAxiDma_Config *dma_config = XAxiDma_LookupConfig(
        (uint16_t)PS_DMA_DEVICE_ID
    );
    if (dma_config == 0) {
        return PS_WAVEFORM_DMA_CONFIG_NOT_FOUND;
    }
    if (XAxiDma_CfgInitialize(
            &capture->dma, dma_config) != XST_SUCCESS) {
        return PS_WAVEFORM_DMA_INIT_FAILED;
    }
    if (XAxiDma_HasSg(&capture->dma)) {
        return PS_WAVEFORM_DMA_SG_UNSUPPORTED;
    }

    XAxiDma_IntrDisable(
        &capture->dma,
        XAXIDMA_IRQ_ALL_MASK,
        XAXIDMA_DEVICE_TO_DMA
    );

    if (XGpio_Initialize(
            &capture->mux_gpio,
            (uint16_t)PS_MUX_GPIO_DEVICE_ID) != XST_SUCCESS) {
        return PS_WAVEFORM_GPIO_INIT_FAILED;
    }
    XGpio_SetDataDirection(&capture->mux_gpio, 1U, 0x00000000U);
    XGpio_DiscreteWrite(
        &capture->mux_gpio, 1U, PS_SMART_MUX_MODE_MUTE
    );

    capture->current_mux_mode = PS_SMART_MUX_MODE_MUTE;
    capture->initialized = 1U;
    return PS_WAVEFORM_OK;
}

static void reset_dma_after_timeout(
    ps_waveform_capture_t *capture,
    uint32_t poll_limit
) {
    XAxiDma_Reset(&capture->dma);
    while (poll_limit > 0U && !XAxiDma_ResetIsDone(&capture->dma)) {
        poll_limit--;
    }
}

ps_waveform_status_t ps_waveform_capture_frame(
    ps_waveform_capture_t *capture,
    ps_signal_type_t signal_type,
    float *waveform,
    uint32_t waveform_capacity,
    const ps_waveform_capture_config_t *config
) {
    uint32_t mux_mode = PS_SMART_MUX_MODE_MUTE;
    ps_waveform_status_t mode_status;

    if (capture == 0 || waveform == 0 || config == 0 ||
        waveform_capacity < PS_SMART_MUX_FRAME_SAMPLES ||
        config->dma_poll_limit == 0U) {
        return PS_WAVEFORM_BAD_ARGUMENT;
    }
    if (!capture->initialized) return PS_WAVEFORM_NOT_INITIALIZED;

    mode_status = ps_smart_mux_mode_for_signal(signal_type, &mux_mode);
    if (mode_status != PS_WAVEFORM_OK) return mode_status;

    if (capture->current_mux_mode != (uint8_t)mux_mode) {
        XGpio_DiscreteWrite(&capture->mux_gpio, 1U, mux_mode);
        capture->current_mux_mode = (uint8_t)mux_mode;
        if (config->mux_settle_us > 0U) {
            usleep(config->mux_settle_us);
        }
    } else {
        // Keep the AXI output FIFO cleared until DMA has been armed.
        XGpio_DiscreteWrite(&capture->mux_gpio, 1U, mux_mode);
    }

    if (XAxiDma_Busy(&capture->dma, XAXIDMA_DEVICE_TO_DMA)) {
        return PS_WAVEFORM_DMA_BUSY;
    }

    const uint32_t transfer_bytes =
        PS_SMART_MUX_FRAME_SAMPLES * PS_SMART_MUX_BYTES_PER_SAMPLE;

    /*
     * Write back any dirty cache line before the device writes, then invalidate
     * after completion before the CPU reads the new samples.
     */
    Xil_DCacheFlushRange(
        (UINTPTR)dma_raw_samples, transfer_bytes
    );

    if (XAxiDma_SimpleTransfer(
            &capture->dma,
            (UINTPTR)dma_raw_samples,
            transfer_bytes,
            XAXIDMA_DEVICE_TO_DMA) != XST_SUCCESS) {
        return PS_WAVEFORM_DMA_START_FAILED;
    }

    /*
     * The updated smart_mux_stream uses mux_ctrl[8] as an explicit capture
     * gate. DMA is armed first, so no stale pre-trigger sample is queued.
     */
    XGpio_DiscreteWrite(
        &capture->mux_gpio,
        1U,
        mux_mode | PS_SMART_MUX_CAPTURE_ENABLE_MASK
    );

    uint32_t timeout = config->dma_poll_limit;
    while (XAxiDma_Busy(&capture->dma, XAXIDMA_DEVICE_TO_DMA)) {
        if (timeout == 0U) {
            XGpio_DiscreteWrite(
                &capture->mux_gpio, 1U, mux_mode
            );
            reset_dma_after_timeout(
                capture, config->dma_poll_limit
            );
            return PS_WAVEFORM_DMA_TIMEOUT;
        }
        timeout--;
    }

    XGpio_DiscreteWrite(&capture->mux_gpio, 1U, mux_mode);

    Xil_DCacheInvalidateRange(
        (UINTPTR)dma_raw_samples, transfer_bytes
    );

    /*
     * smart_mux_stream already sign-extends lpf_data[23:0] to 32 bits.
     * Do not divide by 2^22 here: magnitude and phase-difference streams have
     * different physical units. The estimator applies the phase scale only
     * for FM/FSK.
     */
    for (uint32_t i = 0; i < PS_SMART_MUX_FRAME_SAMPLES; ++i) {
        waveform[i] = (float)dma_raw_samples[i];
    }
    return PS_WAVEFORM_OK;
}
