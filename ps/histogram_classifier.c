#include "histogram_classifier.h"

#define HISTOGRAM_PEAK_RADIUS          1
#define HISTOGRAM_MIN_PEAK_DISTANCE    3
#define HISTOGRAM_MIN_TWO_BIN_PERCENT 70U
#define HISTOGRAM_MIN_CLUSTER_PERCENT 60U
#define HISTOGRAM_MIN_BALANCE_PERCENT 10U

/*
 * Sinusoidal AM/FM discriminator waveforms have arcsine histograms, so their
 * edge bins are naturally high.  A two-level digital waveform is different:
 * most samples are concentrated in two narrow, separated clusters.
 */
int histogram_is_two_level(
    const uint32_t histogram[HISTOGRAM_BIN_COUNT]
) {
    uint64_t total = 0;
    uint64_t smoothed[HISTOGRAM_BIN_COUNT];

    for (int i = 0; i < HISTOGRAM_BIN_COUNT; ++i) {
        uint64_t left = (i > 0) ? histogram[i - 1] : 0;
        uint64_t right =
            (i + 1 < HISTOGRAM_BIN_COUNT) ? histogram[i + 1] : 0;
        total += histogram[i];
        smoothed[i] =
            left + 2U * (uint64_t)histogram[i] + right;
    }
    if (total == 0) return 0;

    int peak1 = 0;
    for (int i = 1; i < HISTOGRAM_BIN_COUNT; ++i) {
        if (smoothed[i] > smoothed[peak1]) peak1 = i;
    }

    int peak2 = -1;
    for (int i = 0; i < HISTOGRAM_BIN_COUNT; ++i) {
        int distance = i - peak1;
        if (distance < 0) distance = -distance;
        if (distance < HISTOGRAM_MIN_PEAK_DISTANCE) continue;
        if (peak2 < 0 || smoothed[i] > smoothed[peak2]) peak2 = i;
    }
    if (peak2 < 0) return 0;

    uint64_t cluster1 = 0;
    uint64_t cluster2 = 0;
    for (int i = 0; i < HISTOGRAM_BIN_COUNT; ++i) {
        int distance1 = i - peak1;
        int distance2 = i - peak2;
        if (distance1 < 0) distance1 = -distance1;
        if (distance2 < 0) distance2 = -distance2;
        if (distance1 <= HISTOGRAM_PEAK_RADIUS) {
            cluster1 += histogram[i];
        }
        if (distance2 <= HISTOGRAM_PEAK_RADIUS) {
            cluster2 += histogram[i];
        }
    }

    uint64_t clustered = cluster1 + cluster2;
    uint64_t two_peak_bins =
        (uint64_t)histogram[peak1] + histogram[peak2];
    uint64_t larger = (cluster1 > cluster2) ? cluster1 : cluster2;
    uint64_t smaller = (cluster1 > cluster2) ? cluster2 : cluster1;

    if (100U * two_peak_bins < HISTOGRAM_MIN_TWO_BIN_PERCENT * total) return 0;
    if (100U * clustered < HISTOGRAM_MIN_CLUSTER_PERCENT * total) return 0;
    if (larger == 0) return 0;
    if (100U * smaller < HISTOGRAM_MIN_BALANCE_PERCENT * larger) return 0;
    return 1;
}
