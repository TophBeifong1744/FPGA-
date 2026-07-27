#ifndef PS_UPGRADE_PIPELINE_H_
#define PS_UPGRADE_PIPELINE_H_

#include <stdint.h>

#include "pl_feature_reader.h"
#include "ps_classifier.h"
#include "ps_decision_engine.h"
#include "ps_parameter_estimator.h"

typedef struct {
    pl_feature_reader_t reader;
    ps_classifier_config_t classifier_config;
    ps_parameter_config_t parameter_config;
    ps_decision_engine_t decision_engine;
} ps_upgrade_pipeline_t;

/*
 * Call after the PL bitstream and AXI BRAM are ready.
 * The sequence currently in BRAM is recorded and treated as an old frame.
 */
void ps_upgrade_pipeline_init(
    ps_upgrade_pipeline_t *pipeline,
    uint8_t required_stable_frames
);

/*
 * Returns the pl_feature_read_status_t value.
 * On PL_FEATURE_READ_NEW_FRAME, snapshot and frame_result are updated.
 * stable_type_changed is set to 1 only when the stable type changes.
 */
pl_feature_read_status_t ps_upgrade_pipeline_poll(
    ps_upgrade_pipeline_t *pipeline,
    pl_feature_snapshot_t *snapshot,
    ps_classification_result_t *frame_result,
    uint8_t *stable_type_changed
);

#endif /* PS_UPGRADE_PIPELINE_H_ */
