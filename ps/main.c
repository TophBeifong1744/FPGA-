#include "platform.h"
#include "xil_printf.h"
#include "hw_interface.h"
#include "dsp_algorithms.h"
#include "ui_display.h"
#include "sleep.h"

#define REQUIRED_STABLE_FRAMES 3
#define MUX_SETTLE_US       1000U
#define MAIN_LOOP_DELAY_US 10000U

static int signal_to_mux_channel(SignalType signal) {
    switch (signal) {
        case SIGNAL_AM:   return 1;
        case SIGNAL_FM:
        case SIGNAL_CW:   return 2;
        case SIGNAL_2ASK: return 4;
        case SIGNAL_2PSK: return 5;
        case SIGNAL_2FSK: return 6;
        default:          return 0;
    }
}

static void calculate_signal_params(SignalType signal, SignalParams *params) {
    switch (signal) {
        case SIGNAL_AM:
            calculate_am_params(real_buffer, BUFFER_SIZE, params);
            break;
        case SIGNAL_FM:
            calculate_fm_params(real_buffer, BUFFER_SIZE, params);
            break;
        case SIGNAL_2ASK:
            calculate_2ask_params(real_buffer, BUFFER_SIZE, params);
            break;
        case SIGNAL_2FSK:
            calculate_2fsk_params(real_buffer, BUFFER_SIZE, params);
            break;
        case SIGNAL_2PSK:
            calculate_2psk_params(real_buffer, BUFFER_SIZE, params);
            break;
        default:
            break;
    }
}

int main(void) {
    init_platform();

    xil_printf("==========================\r\n");
    xil_printf("Zynq CPU is Alive!\r\n");
    xil_printf("==========================\r\n");

    UI_Init();
    if (init_hardware() != 0) {
        xil_printf("Hardware Init Failed!\r\n");
        cleanup_platform();
        return -1;
    }

    xil_printf("Hardware Ready! Waiting for Signals...\r\n");

    int display_tick = 0;
    int stable_count = 0;
    SignalParams current_params = {0};
    SignalType candidate_signal = SIGNAL_UNKNOWN;
    SignalType current_signal = SIGNAL_UNKNOWN;

    while (1) {
        if (read_hardware_features()) {
            SignalType measured_signal = recognize_signal_type();

            if (measured_signal == candidate_signal) {
                if (stable_count < REQUIRED_STABLE_FRAMES) stable_count++;
            } else {
                candidate_signal = measured_signal;
                stable_count = 1;
            }

            if (stable_count >= REQUIRED_STABLE_FRAMES) {
                if (current_signal != candidate_signal) {
                    current_signal = candidate_signal;
                    current_params = (SignalParams){0};

                    int mux_channel = signal_to_mux_channel(current_signal);
                    if (mux_channel != 0) {
                        set_mux_channel(mux_channel);
                        usleep(MUX_SETTLE_US);
                    }
                }

                if (current_signal != SIGNAL_UNKNOWN &&
                    current_signal != SIGNAL_CW) {
                    int dma_status = capture_waveform();
                    if (dma_status == 0) {
                        calculate_signal_params(current_signal, &current_params);
                    } else {
                        xil_printf("DMA capture failed: %d\r\n", dma_status);
                    }
                }
            }
        }

        display_tick++;
        if (display_tick >= 10) {
            UI_UpdateDashboard(current_signal, &current_params);
            display_tick = 0;
        }

        usleep(MAIN_LOOP_DELAY_US);
    }

    cleanup_platform();
    return 0;
}
