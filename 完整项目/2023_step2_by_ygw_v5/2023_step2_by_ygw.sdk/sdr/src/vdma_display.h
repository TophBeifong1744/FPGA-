#ifndef VMDA_UPGRADE_VDMA_DISPLAY_H_
#define VMDA_UPGRADE_VDMA_DISPLAY_H_

#include <stdint.h>

#include "xaxivdma.h"

typedef enum {
    VDMA_DISPLAY_OK = 0,
    VDMA_DISPLAY_BAD_ARGUMENT = -1,
    VDMA_DISPLAY_CONFIG_NOT_FOUND = -2,
    VDMA_DISPLAY_INIT_FAILED = -3,
    VDMA_DISPLAY_STREAM_WIDTH_MISMATCH = -4,
    VDMA_DISPLAY_CONFIG_FAILED = -5,
    VDMA_DISPLAY_BUFFER_FAILED = -6,
    VDMA_DISPLAY_START_FAILED = -7
} vdma_display_status_t;

typedef struct {
    XAxiVdma instance;
    uint32_t framebuffer_address;
    uint32_t frame_bytes;
    uint8_t initialized;
} vdma_display_t;

/*
 * Starts the AXI VDMA read channel in circular MM2S mode.
 * The VDMA device ID is taken from xparameters.h, never from a literal address.
 */
vdma_display_status_t vdma_display_start(
    vdma_display_t *display,
    uint32_t framebuffer_address,
    uint32_t width,
    uint32_t height,
    uint32_t bytes_per_pixel
);

#endif /* VMDA_UPGRADE_VDMA_DISPLAY_H_ */
