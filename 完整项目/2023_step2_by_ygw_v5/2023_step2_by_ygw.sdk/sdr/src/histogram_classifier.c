#include "histogram_classifier.h"

#define HISTOGRAM_PEAK_RADIUS          1
#define HISTOGRAM_MIN_PEAK_DISTANCE    3
#define HISTOGRAM_MIN_TWO_BIN_PERCENT 70U
#define HISTOGRAM_MIN_CLUSTER_PERCENT 60U
#define HISTOGRAM_MIN_BALANCE_PERCENT 10U

/*
 * 正弦 AM/FM 的直方图边缘天然较高；数字双电平信号的主要样本则
 * 集中在两个窄且分离的簇中，因此不能只统计“高桶”的数量。
 */
int histogram_is_two_level(
		const u32 histogram[HISTOGRAM_BIN_COUNT])
{
	u64 total = 0U;
	u64 smoothed[HISTOGRAM_BIN_COUNT];
	u64 cluster1 = 0U;
	u64 cluster2 = 0U;
	u64 clustered;
	u64 two_peak_bins;
	u64 larger;
	u64 smaller;
	int peak1 = 0;
	int peak2 = -1;
	int i;

	for (i = 0; i < HISTOGRAM_BIN_COUNT; ++i) {
		u64 left = (i > 0) ? histogram[i - 1] : 0U;
		u64 right = (i + 1 < HISTOGRAM_BIN_COUNT)
				? histogram[i + 1] : 0U;

		total += histogram[i];
		smoothed[i] = left + 2U * (u64)histogram[i] + right;
	}

	if (total == 0U) {
		return 0;
	}

	for (i = 1; i < HISTOGRAM_BIN_COUNT; ++i) {
		if (smoothed[i] > smoothed[peak1]) {
			peak1 = i;
		}
	}

	for (i = 0; i < HISTOGRAM_BIN_COUNT; ++i) {
		int distance = i - peak1;

		if (distance < 0) {
			distance = -distance;
		}
		if (distance < HISTOGRAM_MIN_PEAK_DISTANCE) {
			continue;
		}
		if ((peak2 < 0) || (smoothed[i] > smoothed[peak2])) {
			peak2 = i;
		}
	}

	if (peak2 < 0) {
		return 0;
	}

	for (i = 0; i < HISTOGRAM_BIN_COUNT; ++i) {
		int distance1 = i - peak1;
		int distance2 = i - peak2;

		if (distance1 < 0) {
			distance1 = -distance1;
		}
		if (distance2 < 0) {
			distance2 = -distance2;
		}
		if (distance1 <= HISTOGRAM_PEAK_RADIUS) {
			cluster1 += histogram[i];
		}
		if (distance2 <= HISTOGRAM_PEAK_RADIUS) {
			cluster2 += histogram[i];
		}
	}

	clustered = cluster1 + cluster2;
	two_peak_bins = (u64)histogram[peak1] + histogram[peak2];
	larger = (cluster1 > cluster2) ? cluster1 : cluster2;
	smaller = (cluster1 > cluster2) ? cluster2 : cluster1;

	if (100U * two_peak_bins <
			HISTOGRAM_MIN_TWO_BIN_PERCENT * total) {
		return 0;
	}
	if (100U * clustered <
			HISTOGRAM_MIN_CLUSTER_PERCENT * total) {
		return 0;
	}
	if (larger == 0U) {
		return 0;
	}
	if (100U * smaller <
			HISTOGRAM_MIN_BALANCE_PERCENT * larger) {
		return 0;
	}

	return 1;
}
