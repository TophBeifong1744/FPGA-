#ifndef PS_UPGRADE_PS_DECISION_ENGINE_H_
#define PS_UPGRADE_PS_DECISION_ENGINE_H_

#include <stdint.h>

#include "ps_classifier.h"

typedef struct {
    uint8_t required_stable_frames;
    uint8_t candidate_count;
    uint8_t has_stable_result;
    ps_signal_type_t candidate_type;
    ps_classification_result_t stable_result;
} ps_decision_engine_t;

void ps_decision_engine_init(
    ps_decision_engine_t *engine,
    uint8_t required_stable_frames
);

/*
 * Returns 1 when the stable signal type changes, 0 otherwise.
 * The latest stable result remains available in engine->stable_result.
 */
int ps_decision_engine_update(
    ps_decision_engine_t *engine,
    const ps_classification_result_t *frame_result
);

#endif /* PS_UPGRADE_PS_DECISION_ENGINE_H_ */
