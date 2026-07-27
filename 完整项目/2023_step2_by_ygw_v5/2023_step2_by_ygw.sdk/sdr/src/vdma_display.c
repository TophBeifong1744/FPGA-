#include "vdma_display.h"

#include <string.h>

#include "xparameters.h"
#include "xstatus.h"

#if defined(XPAR_AXIVDMA_0_DEVICE_ID)
#define VMDA_UPGRADE_VDMA_DEVICE_ID XPAR_AXIVDMA_0_DEVICE_ID
#elif defined(XPAR_AXI_VDMA_0_DEVICE_ID)
#define VMDA_UPGRADE_VDMA_DEVICE_ID XPAR_AXI_VDMA_0_DEVICE_ID
#else
#error "No AXI VDMA device ID macro was generated in xparameters.h"
#endif

vdma_display_status_t vdma_display_start(
    vdma_display_t *display,
    uint32_t framebuffer_address,
    uint32_t width,
    uint32_t height,
    uint32_t bytes_per_pixel
) {
    XAxiVdma_Config *hardware_config;
    XAxiVdma_DmaSetup read_config;
    uint32_t stream_bytes;
    uint32_t horizontal_bytes;
    int frame_index;
    int status;

    if (display == 0 || framebuffer_address == 0U
            || width == 0U || height == 0U || bytes_per_pixel == 0U) {
        return VDMA_DISPLAY_BAD_ARGUMENT;
    }

    memset(display, 0, sizeof(*display));
    memset(&read_config, 0, sizeof(read_config));

    hardware_config = XAxiVdma_LookupConfig(
        (u16)VMDA_UPGRADE_VDMA_DEVICE_ID
    );
    if (hardware_config == 0) {
        return VDMA_DISPLAY_CONFIG_NOT_FOUND;
    }

    status = XAxiVdma_CfgInitialize(
        &display->instance,
        hardware_config,
        hardware_config->BaseAddress
    );
    if (status != XST_SUCCESS) {
        return VDMA_DISPLAY_INIT_FAILED;
    }

    stream_bytes = hardware_config->Mm2SStreamWidth >> 3;
    if (stream_bytes != bytes_per_pixel) {
        return VDMA_DISPLAY_STREAM_WIDTH_MISMATCH;
    }

    horizontal_bytes = width * bytes_per_pixel;
    read_config.VertSizeInput = height;
    read_config.HoriSizeInput = horizontal_bytes;
    read_config.Stride = horizontal_bytes;
    read_config.FrameDelay = 0U;
    read_config.EnableCircularBuf = 1U;
    read_config.EnableSync = 1U;
    read_config.PointNum = 0U;
    read_config.EnableFrameCounter = 0U;
    read_config.FixedFrameStoreAddr = 0U;

    status = XAxiVdma_DmaConfig(
        &display->instance,
        XAXIVDMA_READ,
        &read_config
    );
    if (status != XST_SUCCESS) {
        return VDMA_DISPLAY_CONFIG_FAILED;
    }

    for (frame_index = 0;
            frame_index < display->instance.MaxNumFrames;
            ++frame_index) {
        read_config.FrameStoreStartAddr[frame_index] = framebuffer_address;
    }

    status = XAxiVdma_DmaSetBufferAddr(
        &display->instance,
        XAXIVDMA_READ,
        read_config.FrameStoreStartAddr
    );
    if (status != XST_SUCCESS) {
        return VDMA_DISPLAY_BUFFER_FAILED;
    }

    status = XAxiVdma_DmaStart(&display->instance, XAXIVDMA_READ);
    if (status != XST_SUCCESS) {
        return VDMA_DISPLAY_START_FAILED;
    }

    display->framebuffer_address = framebuffer_address;
    display->frame_bytes = horizontal_bytes * height;
    display->initialized = 1U;
    return VDMA_DISPLAY_OK;
}
