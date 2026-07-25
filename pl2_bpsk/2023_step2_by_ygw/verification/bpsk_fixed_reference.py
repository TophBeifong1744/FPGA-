#!/usr/bin/env python3
"""Bit-accurate design model for the PL2 BPSK receiver.

This model is intentionally independent of the CORDIC used by the existing
feature path.  The BPSK Costas NCO uses unsigned Q0.24 turns; the existing
CORDIC Translate output remains signed 24-bit Scaled Radians, where pi is
2**21.  Receiver state advances only for accepted input samples.
"""

import argparse
import math
import random
from dataclasses import dataclass


FS_HZ = 1_000_000
Q14 = 1 << 14
PHASE_MOD = 1 << 24
CORDIC_PI_RAW = 1 << 21
CORDIC_TWO_PI_RAW = 1 << 22
RATE_STEPS = {
    1: round(6_000 * (1 << 32) / FS_HZ),
    2: round(8_000 * (1 << 32) / FS_HZ),
    3: round(10_000 * (1 << 32) / FS_HZ),
}


def sat(value, lo, hi):
    return min(hi, max(lo, value))


def q14(value):
    return sat(int(round(value * Q14)), -32768, 32767)


def round_shift(value, shift):
    """Symmetric round-to-nearest followed by an arithmetic right shift."""
    if value < 0:
        return -(((-value) + (1 << (shift - 1))) >> shift)
    return (value + (1 << (shift - 1))) >> shift


def sin_q15(phase_u24):
    """256-entry-equivalent NCO sine, matching the planned quarter-wave ROM."""
    address = (phase_u24 >> 16) & 0xFF
    value = int(round(math.sin(2.0 * math.pi * address / 256.0) * 32767.0))
    return sat(value, -32767, 32767)


def residual(interval, period_num, period_den=1, max_multiple=8):
    scaled = interval * period_den
    return min(abs(scaled - k * period_num) for k in range(1, max_multiple + 1))


@dataclass
class CostasOutput:
    i: int
    q: int
    locked: bool
    phase: int
    frequency: int
    valid: bool = True


class FixedCostas:
    """Fixed-point second-order, decision-directed BPSK Costas loop."""

    KP_LSHIFT = 5
    KI_RSHIFT = 3
    LP_RSHIFT = 3
    FREQ_LIMIT = round(25_000 * PHASE_MOD / FS_HZ)
    MAG_GATE = q14(0.05)
    LOCK_MAX = 1023
    LOCK_ON = 512
    LOCK_OFF = 128

    def __init__(self):
        self.phase = 0
        self.frequency = 0
        self.i_lpf = 0
        self.q_lpf = 0
        self.lock_score = 0
        self.locked = False

    def step(self, i_in, q_in, accepted=True):
        if not accepted:
            return CostasOutput(
                self.i_lpf, self.q_lpf, self.locked,
                self.phase, self.frequency, valid=False
            )

        cosine = sin_q15((self.phase + (1 << 22)) & (PHASE_MOD - 1))
        sine = sin_q15(self.phase)
        # Q1.14 * Q1.15 products are kept in a signed 33-bit sum before
        # symmetric rounding back to Q1.14.
        mix_i = sat(round_shift(i_in * cosine + q_in * sine, 15), -32768, 32767)
        mix_q = sat(round_shift(q_in * cosine - i_in * sine, 15), -32768, 32767)

        self.i_lpf += (mix_i - self.i_lpf) >> self.LP_RSHIFT
        self.q_lpf += (mix_q - self.q_lpf) >> self.LP_RSHIFT

        error = self.q_lpf if self.i_lpf >= 0 else -self.q_lpf
        self.frequency = sat(
            self.frequency + (error >> self.KI_RSHIFT),
            -self.FREQ_LIMIT,
            self.FREQ_LIMIT,
        )
        correction = self.frequency + (error << self.KP_LSHIFT)
        self.phase = (self.phase + correction) & (PHASE_MOD - 1)

        abs_i = abs(self.i_lpf)
        abs_q = abs(self.q_lpf)
        phase_good = abs_i >= self.MAG_GATE and abs_q <= (abs_i >> 2)
        if phase_good:
            self.lock_score = min(self.LOCK_MAX, self.lock_score + 1)
        else:
            self.lock_score = max(0, self.lock_score - 4)
        if self.lock_score >= self.LOCK_ON:
            self.locked = True
        elif self.lock_score <= self.LOCK_OFF:
            self.locked = False

        return CostasOutput(
            self.i_lpf, self.q_lpf, self.locked,
            self.phase, self.frequency
        )


class FixedRateDetector:
    """Transition-interval classifier for the specified 6/8/10 kbps set."""

    def __init__(self):
        self.scores = [0, 0, 0, 0]
        self.rate_code = 0
        self.last_bit = 0
        self.have_bit = False
        self.interval = 0

    def step(self, hard_bit, enable=True):
        transition = False
        if not enable:
            self.scores = [0, 0, 0, 0]
            self.rate_code = 0
            self.have_bit = False
            self.interval = 0
            return transition, self.rate_code

        self.interval = min(65535, self.interval + 1)
        if not self.have_bit:
            self.last_bit = hard_bit
            self.have_bit = True
            self.interval = 0
            return transition, self.rate_code

        if hard_bit == self.last_bit:
            return transition, self.rate_code

        transition = True
        self.last_bit = hard_bit
        span = self.interval
        self.interval = 0
        if span < 70 or span > 1400:
            return transition, self.rate_code

        errors = {
            1: residual(span, 500, 3),
            2: residual(span, 125),
            3: residual(span, 100),
        }
        limits = {1: 24, 2: 8, 3: 8}
        for code in (1, 2, 3):
            delta = 4 if errors[code] <= limits[code] else -1
            self.scores[code] = sat(self.scores[code] + delta, 0, 255)

        best = max((1, 2, 3), key=lambda code: self.scores[code])
        second = max(self.scores[code] for code in (1, 2, 3) if code != best)
        if self.scores[best] >= 24 and self.scores[best] - second >= 8:
            self.rate_code = best
        elif self.rate_code and self.scores[self.rate_code] + 12 < self.scores[best]:
            self.rate_code = best
        return transition, self.rate_code


class FixedTimingRecovery:
    """Transition-directed fractional-N timing recovery for NRZ BPSK."""

    def __init__(self):
        self.phase = 0
        self.rate_code = 0
        self.have_boundary = False
        self.lock_count = 0
        self.locked = False

    def step(self, hard_bit, rate_code, transition, carrier_locked=True):
        if not carrier_locked or rate_code == 0:
            self.__init__()
            return False, 0, False

        if rate_code != self.rate_code:
            self.phase = 0
            self.have_boundary = False
            self.lock_count = 0
            self.locked = False
            self.rate_code = rate_code

        if transition:
            self.phase = 0
            self.have_boundary = True
            self.lock_count = min(31, self.lock_count + 1)
            if self.lock_count >= 3:
                self.locked = True
            return False, 0, self.locked

        if not self.have_boundary:
            return False, 0, self.locked

        old = self.phase
        self.phase = (self.phase + RATE_STEPS[rate_code]) & 0xFFFFFFFF
        center_cross = old < 0x80000000 <= old + RATE_STEPS[rate_code]
        if center_cross:
            return True, hard_bit, self.locked
        return False, 0, self.locked


def check_formats():
    assert CORDIC_PI_RAW == 2_097_152
    assert CORDIC_TWO_PI_RAW == 4_194_304
    assert round(math.pi * (1 << 21) / math.pi) == CORDIC_PI_RAW
    assert q14(1.0) == 16384
    assert q14(-1.0) == -16384
    assert q14(2.5) == 32767
    assert q14(-2.5) == -32768
    assert RATE_STEPS == {1: 25_769_804, 2: 34_359_738, 3: 42_949_673}


def run_case(rate_hz, cfo_hz, initial_phase, amplitude, noise, seed, valid_gaps=False):
    rng = random.Random(seed)
    bits = [rng.getrandbits(1) for _ in range(300)]
    costas = FixedCostas()
    rate = FixedRateDetector()
    timing = FixedTimingRecovery()
    decisions = []
    accepted_index = 0
    clocks = 0
    lock_sample = None
    rate_sample = None
    timing_sample = None

    total_samples = math.ceil(len(bits) * FS_HZ / rate_hz)
    while accepted_index < total_samples:
        clocks += 1
        accepted = not valid_gaps or rng.random() >= 0.18
        if not accepted:
            before = (costas.phase, costas.frequency, costas.i_lpf, costas.q_lpf)
            out = costas.step(0, 0, accepted=False)
            after = (costas.phase, costas.frequency, costas.i_lpf, costas.q_lpf)
            assert before == after and not out.valid
            continue

        symbol_index = min(len(bits) - 1, (accepted_index * rate_hz) // FS_HZ)
        symbol = 1.0 if bits[symbol_index] else -1.0
        theta = initial_phase + 2.0 * math.pi * cfo_hz * accepted_index / FS_HZ
        ni = rng.gauss(0.0, noise)
        nq = rng.gauss(0.0, noise)
        i_in = q14(amplitude * symbol * math.cos(theta) + ni)
        q_in = q14(amplitude * symbol * math.sin(theta) + nq)
        out = costas.step(i_in, q_in)
        if out.locked and lock_sample is None:
            lock_sample = accepted_index
        hard_bit = 1 if out.i >= 0 else 0
        transition, rate_code = rate.step(hard_bit, out.locked)
        if rate_code and rate_sample is None:
            rate_sample = accepted_index
        strobe, bit, timing_locked = timing.step(
            hard_bit, rate_code, transition, out.locked
        )
        if timing_locked and timing_sample is None:
            timing_sample = accepted_index
        if strobe and timing_locked:
            true_index = min(len(bits) - 1, (accepted_index * rate_hz) // FS_HZ)
            decisions.append((bit, bits[true_index]))
        accepted_index += 1

    if not decisions:
        ber = 1.0
        count = 0
    else:
        direct = sum(a != b for a, b in decisions)
        inverse = sum(a == b for a, b in decisions)
        errors = min(direct, inverse)  # BPSK has an unavoidable pi ambiguity.
        count = len(decisions)
        ber = errors / count
    return {
        "rate": rate_hz,
        "cfo": cfo_hz,
        "phase": initial_phase,
        "amp": amplitude,
        "noise": noise,
        "gaps": valid_gaps,
        "carrier_lock": lock_sample,
        "rate_lock": rate_sample,
        "timing_lock": timing_sample,
        "rate_code": rate.rate_code,
        "bits": count,
        "ber": ber,
        "freq_est_hz": costas.frequency * FS_HZ / PHASE_MOD,
        "clocks": clocks,
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--quick", action="store_true")
    args = parser.parse_args()
    check_formats()
    cases = []
    phases = [0.23, 1.17, 2.64] if not args.quick else [1.17]
    cfos = [-5000, -1500, 0, 2200, 5000] if not args.quick else [-5000, 0, 5000]
    seed = 100
    for rate_hz in (6000, 8000, 10000):
        for cfo_hz in cfos:
            for phase in phases:
                seed += 1
                cases.append(run_case(rate_hz, cfo_hz, phase, 0.55, 0.0, seed))
        seed += 1
        cases.append(run_case(rate_hz, 1800, 0.71, 0.32, 0.015, seed, True))

    print("rate cfo phase amp noise gaps carrier rate timing code bits ber freq_est")
    for case in cases:
        print(
            f"{case['rate']:5d} {case['cfo']:5d} {case['phase']:4.2f} "
            f"{case['amp']:4.2f} {case['noise']:5.3f} {int(case['gaps'])} "
            f"{str(case['carrier_lock']):>7} {str(case['rate_lock']):>5} "
            f"{str(case['timing_lock']):>6} {case['rate_code']} "
            f"{case['bits']:4d} {case['ber']:.6f} {case['freq_est_hz']:8.1f}"
        )

    expected_codes = {6000: 1, 8000: 2, 10000: 3}
    failures = []
    for case in cases:
        if case["carrier_lock"] is None:
            failures.append((case, "carrier did not lock"))
        elif case["rate_code"] != expected_codes[case["rate"]]:
            failures.append((case, "wrong rate code"))
        elif case["timing_lock"] is None:
            failures.append((case, "timing did not lock"))
        elif case["noise"] == 0.0 and case["ber"] != 0.0:
            failures.append((case, "non-zero noiseless BER"))
        elif case["noise"] > 0.0 and case["ber"] > 0.01:
            failures.append((case, "noisy BER above 1%"))
    if failures:
        for case, reason in failures:
            print("FAIL:", reason, case)
        raise SystemExit(1)
    print(f"PASS: {len(cases)} fixed-point receiver cases")


if __name__ == "__main__":
    main()
