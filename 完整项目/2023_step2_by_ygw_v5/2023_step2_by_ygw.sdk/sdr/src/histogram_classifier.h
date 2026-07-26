#ifndef HISTOGRAM_CLASSIFIER_H
#define HISTOGRAM_CLASSIFIER_H

#include "xil_types.h"

#define HISTOGRAM_BIN_COUNT 16

int histogram_is_two_level(
		const u32 histogram[HISTOGRAM_BIN_COUNT]);

#endif /* HISTOGRAM_CLASSIFIER_H */
