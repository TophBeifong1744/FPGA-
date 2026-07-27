#include "ps_upgrade_pipeline.h"

#include <string.h>

void ps_upgrade_pipeline_init(
    ps_upgrade_pipeline_t *pipeline,
    uint8_t required_stable_frames
) {
    if (pipeline == 0) return;
    memset(pipeline, 0, sizeof(*pipeline));
    ps_classifier_config_default(&pipeline->classifier_config);
    ps_parameter_config_default(&pipeline->parameter_config);
    ps_decision_engine_init(
        &pipeline->decision_engine, required_stable_frames
    );
    pl_feature_reader_init(&pipeline->reader);
}

pl_feature_read_status_t ps_upgrade_pipeline_poll(
    ps_upgrade_pipeline_t *pipeline,
    pl_feature_snapshot_t *snapshot,
    ps_classification_result_t *frame_result,
    uint8_t *stable_type_changed
) {
    if (pipeline == 0 || snapshot == 0 || frame_result == 0) {
        return PL_FEATURE_READ_BAD_ARGUMENT;
    }
    if (stable_type_changed != 0) *stable_type_changed = 0U;

    pl_feature_read_status_t read_status =
        pl_feature_try_read(&pipeline->reader, snapshot);
    if (read_status != PL_FEATURE_READ_NEW_FRAME) {
        return read_status;
    }

    if (ps_classify_snapshot(
            snapshot,
            &pipeline->classifier_config,
            frame_result) != 0) {
        return PL_FEATURE_READ_BAD_PROTOCOL;
    }

    int changed = ps_decision_engine_update(
        &pipeline->decision_engine, frame_result
    );
    if (stable_type_changed != 0) {
        *stable_type_changed = (uint8_t)(changed != 0);
    }
    return PL_FEATURE_READ_NEW_FRAME;
}
