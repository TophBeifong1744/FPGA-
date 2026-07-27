#include "pl_feature_reader.h"

#include <string.h>

#include "xil_io.h"
#include "xparameters.h"
#include "bpsk_bram_map.h"

#ifndef FEATURE_BRAM_BASEADDR
#if defined(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR)
#define FEATURE_BRAM_BASEADDR XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#elif defined(XPAR_AXI_BRAM_CTRL_0_BASEADDR)
#define FEATURE_BRAM_BASEADDR XPAR_AXI_BRAM_CTRL_0_BASEADDR
#else
#error "axi_bram_ctrl_0 is missing from xparameters.h; export hardware and regenerate the BSP"
#endif
#endif

static uint32_t feature_bram_read_word(uint32_t word_index) {
    return Xil_In32(
        (uint32_t)FEATURE_BRAM_BASEADDR + PL_FEATURE_WORD_OFFSET(word_index)
    );
}

static uint32_t bpsk_rate_code_to_bps(uint8_t rate_code) {
    switch (rate_code) {
        case 1U: return 6000U;
        case 2U: return 8000U;
        case 3U: return 10000U;
        default: return 0U;
    }
}

static uint64_t histogram_total(
    const uint32_t histogram[PL_FEATURE_HISTOGRAM_BINS]
) {
    uint64_t total = 0;
    for (uint32_t i = 0; i < PL_FEATURE_HISTOGRAM_BINS; ++i) {
        total += histogram[i];
    }
    return total;
}

void pl_feature_reader_init(pl_feature_reader_t *reader) {
    if (reader == 0) return;
    reader->last_sequence =
        feature_bram_read_word(PL_FEATURE_SEQUENCE_WORD);
    reader->initialized = 1U;
}

pl_feature_read_status_t pl_feature_try_read(
    pl_feature_reader_t *reader,
    pl_feature_snapshot_t *snapshot
) {
    uint32_t raw[PL_FEATURE_LAST_WORD + 1U];
    pl_feature_snapshot_t parsed;

    if (reader == 0 || snapshot == 0) {
        return PL_FEATURE_READ_BAD_ARGUMENT;
    }
    if (!reader->initialized) {
        pl_feature_reader_init(reader);
        return PL_FEATURE_READ_NO_NEW_FRAME;
    }

    uint32_t seq_before =
        feature_bram_read_word(PL_FEATURE_SEQUENCE_WORD);
    if (seq_before == reader->last_sequence) {
        return PL_FEATURE_READ_NO_NEW_FRAME;
    }

    /*
     * feature_bram_writer writes words 1..46 first and commits word 0 last.
     * Keep this loop free of printf, sleep and signal processing.
     */
    for (uint32_t i = 1U; i <= PL_FEATURE_LAST_WORD; ++i) {
        raw[i] = feature_bram_read_word(i);
    }

    uint32_t seq_after =
        feature_bram_read_word(PL_FEATURE_SEQUENCE_WORD);
    if (seq_after != seq_before) {
        return PL_FEATURE_READ_TORN_FRAME;
    }

    memset(&parsed, 0, sizeof(parsed));
    parsed.sequence = seq_after;
    parsed.var_mag_num =
        ((uint64_t)raw[PL_FEATURE_VAR_MAG_HIGH_WORD] << 32) |
        raw[PL_FEATURE_VAR_MAG_LOW_WORD];
    parsed.var_freq_num =
        ((uint64_t)raw[PL_FEATURE_VAR_FREQ_HIGH_WORD] << 32) |
        raw[PL_FEATURE_VAR_FREQ_LOW_WORD];
    parsed.mean_mag_num = (int32_t)raw[PL_FEATURE_MEAN_MAG_WORD];
    parsed.mean_freq_num = (int32_t)raw[PL_FEATURE_MEAN_FREQ_WORD];

    uint32_t psk_word = raw[PL_FEATURE_PSK_WORD];
    parsed.psk_flag = (uint8_t)((psk_word & PL_PSK_FLAG_MASK) != 0U);
    parsed.psk_spike_count = psk_word & PL_PSK_SPIKE_COUNT_MASK;

    for (uint32_t i = 0; i < PL_FEATURE_HISTOGRAM_BINS; ++i) {
        parsed.hist_mag[i] =
            raw[PL_FEATURE_HIST_MAG_FIRST_WORD + i];
        parsed.hist_freq[i] =
            raw[PL_FEATURE_HIST_FREQ_FIRST_WORD + i];
    }

    uint64_t mag_total = histogram_total(parsed.hist_mag);
    uint64_t freq_total = histogram_total(parsed.hist_freq);
    if (mag_total != PL_FEATURE_FRAME_SAMPLES ||
        freq_total != PL_FEATURE_FRAME_SAMPLES) {
        return PL_FEATURE_READ_BAD_HISTOGRAM_COUNT;
    }
    parsed.histogram_sample_count = PL_FEATURE_FRAME_SAMPLES;

    uint32_t status = raw[PL_FEATURE_BPSK_STATUS_WORD];
    parsed.carrier_locked = (uint8_t)(
        (status & PL_BPSK_STATUS_CARRIER_LOCKED_MASK) != 0U
    );
    parsed.timing_locked = (uint8_t)(
        (status & PL_BPSK_STATUS_TIMING_LOCKED_MASK) != 0U
    );
    parsed.rate_code = (uint8_t)(
        (status & PL_BPSK_STATUS_RATE_CODE_MASK) >>
        PL_BPSK_STATUS_RATE_CODE_SHIFT
    );
    parsed.rate_bps = bpsk_rate_code_to_bps(parsed.rate_code);
    parsed.frame_overflow = (uint8_t)(
        (status & PL_BPSK_STATUS_FRAME_OVERFLOW_MASK) != 0U
    );

    uint32_t raw_bit_count = raw[PL_FEATURE_BPSK_BIT_COUNT_WORD];
    if (raw_bit_count > PL_FEATURE_BPSK_MAX_BITS) {
        return PL_FEATURE_READ_BAD_PROTOCOL;
    }
    parsed.bit_count = (uint8_t)raw_bit_count;
    for (uint32_t i = 0; i < PL_FEATURE_BPSK_BIT_WORDS; ++i) {
        parsed.bit_words[i] =
            raw[PL_FEATURE_BPSK_BITS_FIRST_WORD + i];
    }

    uint32_t debug = raw[PL_FEATURE_BPSK_DEBUG_WORD];
    uint8_t debug_frame_overflow = (uint8_t)(
        (debug & PL_BPSK_DEBUG_FRAME_OVERFLOW_MASK) != 0U
    );
    if (debug_frame_overflow != parsed.frame_overflow) {
        return PL_FEATURE_READ_BAD_PROTOCOL;
    }
    parsed.bit_overflow_sticky = (uint8_t)(
        (debug & PL_BPSK_DEBUG_OVERFLOW_STICKY_MASK) != 0U
    );
    parsed.snapshot_overrun_sticky = (uint8_t)(
        (debug & PL_BPSK_DEBUG_OVERRUN_STICKY_MASK) != 0U
    );
    parsed.dropped_bits = (uint8_t)(
        (debug & PL_BPSK_DEBUG_DROPPED_BITS_MASK) >>
        PL_BPSK_DEBUG_DROPPED_BITS_SHIFT
    );
    parsed.snapshot_overrun_count = (uint16_t)(
        (debug & PL_BPSK_DEBUG_OVERRUN_COUNT_MASK) >>
        PL_BPSK_DEBUG_OVERRUN_COUNT_SHIFT
    );

    *snapshot = parsed;
    reader->last_sequence = seq_after;
    return PL_FEATURE_READ_NEW_FRAME;
}

uint8_t pl_feature_get_bpsk_bit(
    const pl_feature_snapshot_t *snapshot,
    uint32_t bit_index
) {
    if (snapshot == 0 || bit_index >= snapshot->bit_count) return 0U;
    return (uint8_t)(
        (snapshot->bit_words[bit_index >> 5] >> (bit_index & 31U)) & 1U
    );
}
