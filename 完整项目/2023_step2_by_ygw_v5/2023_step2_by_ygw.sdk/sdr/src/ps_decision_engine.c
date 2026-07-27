#include "ps_decision_engine.h"

#include <string.h>

void ps_decision_engine_init(
    ps_decision_engine_t *engine,
    uint8_t required_stable_frames
) {
    if (engine == 0) return;
    memset(engine, 0, sizeof(*engine));
    engine->required_stable_frames =
        (required_stable_frames == 0U) ? 1U : required_stable_frames;
    engine->candidate_type = PS_SIGNAL_UNKNOWN;
    engine->stable_result.signal_type = PS_SIGNAL_UNKNOWN;
}

int ps_decision_engine_update(
    ps_decision_engine_t *engine,
    const ps_classification_result_t *frame_result
) {
    if (engine == 0 || frame_result == 0) return 0;

    if (frame_result->signal_type == engine->candidate_type) {
        if (engine->candidate_count < engine->required_stable_frames) {
            engine->candidate_count++;
        }
    } else {
        engine->candidate_type = frame_result->signal_type;
        engine->candidate_count = 1U;
    }

    if (engine->candidate_count < engine->required_stable_frames) {
        return 0;
    }

    int changed = !engine->has_stable_result ||
        engine->stable_result.signal_type != frame_result->signal_type;
    engine->stable_result = *frame_result;
    engine->has_stable_result = 1U;
    return changed;
}
