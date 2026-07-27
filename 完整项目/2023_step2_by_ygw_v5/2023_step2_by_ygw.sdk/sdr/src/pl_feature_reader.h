#ifndef PS_UPGRADE_PL_FEATURE_READER_H_
#define PS_UPGRADE_PL_FEATURE_READER_H_

#include <stdint.h>

#include "pl_feature_snapshot.h"

typedef enum {
    PL_FEATURE_READ_NEW_FRAME = 1,
    PL_FEATURE_READ_NO_NEW_FRAME = 0,
    PL_FEATURE_READ_TORN_FRAME = -1,
    PL_FEATURE_READ_BAD_ARGUMENT = -2,
    PL_FEATURE_READ_BAD_PROTOCOL = -3,
    PL_FEATURE_READ_BAD_HISTOGRAM_COUNT = -4
} pl_feature_read_status_t;

typedef struct {
    uint32_t last_sequence;
    uint8_t initialized;
} pl_feature_reader_t;

void pl_feature_reader_init(pl_feature_reader_t *reader);

pl_feature_read_status_t pl_feature_try_read(
    pl_feature_reader_t *reader,
    pl_feature_snapshot_t *snapshot
);

uint8_t pl_feature_get_bpsk_bit(
    const pl_feature_snapshot_t *snapshot,
    uint32_t bit_index
);

#endif /* PS_UPGRADE_PL_FEATURE_READER_H_ */
