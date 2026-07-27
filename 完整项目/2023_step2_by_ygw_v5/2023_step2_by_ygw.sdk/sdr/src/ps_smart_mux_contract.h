#ifndef PS_UPGRADE_PS_SMART_MUX_CONTRACT_H_
#define PS_UPGRADE_PS_SMART_MUX_CONTRACT_H_

/*
 * Constants fixed by the current PL implementation:
 *
 * - ddc_stage1_pl2_top decimates 60 MSPS by 30 and then by 2.
 * - phase_diff_wrap represents one complete turn (2*pi) by 2^22.
 * - smart_mux_stream applies a 64-sample moving average.
 * - smart_mux_stream asserts TLAST on every 2048th AXI-Stream transfer.
 */
#define PS_SMART_MUX_DEFAULT_SAMPLE_RATE_HZ       1000000.0f
#define PS_SMART_MUX_PHASE_COUNTS_PER_TURN        4194304.0f
#define PS_SMART_MUX_MOVING_AVERAGE_TAPS          64U
#define PS_SMART_MUX_FRAME_SAMPLES                2048U
#define PS_SMART_MUX_BYTES_PER_SAMPLE             4U
#define PS_SMART_MUX_CAPTURE_ENABLE_MASK          0x00000100U

#define PS_SMART_MUX_MODE_MUTE                    0U
#define PS_SMART_MUX_MODE_AM                      1U
#define PS_SMART_MUX_MODE_FM                      2U
#define PS_SMART_MUX_MODE_2ASK                    4U
#define PS_SMART_MUX_MODE_2PSK                    5U
#define PS_SMART_MUX_MODE_2FSK                    6U

#endif /* PS_UPGRADE_PS_SMART_MUX_CONTRACT_H_ */
