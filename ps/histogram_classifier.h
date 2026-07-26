#ifndef SRC_HISTOGRAM_CLASSIFIER_H_
#define SRC_HISTOGRAM_CLASSIFIER_H_

#include <stdint.h>

#define HISTOGRAM_BIN_COUNT 16

int histogram_is_two_level(
    const uint32_t histogram[HISTOGRAM_BIN_COUNT]
);

#endif /* SRC_HISTOGRAM_CLASSIFIER_H_ */
