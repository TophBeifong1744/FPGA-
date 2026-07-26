Zynq-7020 PS decision and VDMA RGB result display.

Build notes:
1. Add every root-level .c/.h file to the SDK application.
2. Add the math library "m" to the ARM linker settings.
3. Implement the PL-to-PS layout documented in BRAM_PROTOCOL.md.
4. Keep the VDMA MM2S stream format at 800x480, 24-bit BGR/RGB-compatible.

The ps端代码 directory is reference material and must not be compiled together
with the root-level application because it contains another main.c.
