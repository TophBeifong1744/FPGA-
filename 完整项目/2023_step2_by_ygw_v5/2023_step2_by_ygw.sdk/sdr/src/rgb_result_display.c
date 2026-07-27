#include "rgb_result_display.h"

#include <stdio.h>
#include <string.h>

#include "vdma_display.h"
#include "xil_cache.h"
#include "xparameters.h"

#define DISPLAY_WIDTH        800U
#define DISPLAY_HEIGHT       480U
#define DISPLAY_BYTES_PIXEL  3U
#define DISPLAY_FRAME_SIZE   \
    (DISPLAY_WIDTH * DISPLAY_HEIGHT * DISPLAY_BYTES_PIXEL)

#if !defined(XPAR_PS7_DDR_0_S_AXI_BASEADDR)
#error "The PS DDR base address macro is missing from xparameters.h"
#endif

/*
 * The offset is intentionally configurable. The default location is outside
 * the linker-script application area, while its DDR base comes from the BSP.
 */
#ifndef RGB_RESULT_FRAMEBUFFER_OFFSET
#define RGB_RESULT_FRAMEBUFFER_OFFSET 0x01000000U
#endif

#define RGB_RESULT_FRAMEBUFFER_ADDRESS \
    (XPAR_PS7_DDR_0_S_AXI_BASEADDR + RGB_RESULT_FRAMEBUFFER_OFFSET)

typedef struct {
    uint8_t red;
    uint8_t green;
    uint8_t blue;
} rgb_color_t;

static const rgb_color_t COLOR_BACKGROUND = {7U, 15U, 28U};
static const rgb_color_t COLOR_PANEL = {15U, 31U, 52U};
static const rgb_color_t COLOR_HEADER = {22U, 43U, 70U};
static const rgb_color_t COLOR_GRID = {40U, 63U, 84U};
static const rgb_color_t COLOR_TEXT = {230U, 239U, 246U};
static const rgb_color_t COLOR_MUTED = {126U, 148U, 165U};
static const rgb_color_t COLOR_ACCENT = {24U, 232U, 164U};
static const rgb_color_t COLOR_WARNING = {255U, 190U, 70U};
static const rgb_color_t COLOR_ERROR = {255U, 92U, 92U};

static vdma_display_t display_vdma;
static uint8_t *const frame_buffer =
    (uint8_t *)(UINTPTR)RGB_RESULT_FRAMEBUFFER_ADDRESS;

static const char FONT_KEYS[] =
    " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-.:/";

static const uint8_t FONT_5X7[][5] = {
    {0x00U, 0x00U, 0x00U, 0x00U, 0x00U}, /* space */
    {0x3EU, 0x51U, 0x49U, 0x45U, 0x3EU}, /* 0 */
    {0x00U, 0x42U, 0x7FU, 0x40U, 0x00U}, /* 1 */
    {0x42U, 0x61U, 0x51U, 0x49U, 0x46U}, /* 2 */
    {0x21U, 0x41U, 0x45U, 0x4BU, 0x31U}, /* 3 */
    {0x18U, 0x14U, 0x12U, 0x7FU, 0x10U}, /* 4 */
    {0x27U, 0x45U, 0x45U, 0x45U, 0x39U}, /* 5 */
    {0x3CU, 0x4AU, 0x49U, 0x49U, 0x30U}, /* 6 */
    {0x01U, 0x71U, 0x09U, 0x05U, 0x03U}, /* 7 */
    {0x36U, 0x49U, 0x49U, 0x49U, 0x36U}, /* 8 */
    {0x06U, 0x49U, 0x49U, 0x29U, 0x1EU}, /* 9 */
    {0x7EU, 0x11U, 0x11U, 0x11U, 0x7EU}, /* A */
    {0x7FU, 0x49U, 0x49U, 0x49U, 0x36U}, /* B */
    {0x3EU, 0x41U, 0x41U, 0x41U, 0x22U}, /* C */
    {0x7FU, 0x41U, 0x41U, 0x22U, 0x1CU}, /* D */
    {0x7FU, 0x49U, 0x49U, 0x49U, 0x41U}, /* E */
    {0x7FU, 0x09U, 0x09U, 0x09U, 0x01U}, /* F */
    {0x3EU, 0x41U, 0x49U, 0x49U, 0x7AU}, /* G */
    {0x7FU, 0x08U, 0x08U, 0x08U, 0x7FU}, /* H */
    {0x00U, 0x41U, 0x7FU, 0x41U, 0x00U}, /* I */
    {0x20U, 0x40U, 0x41U, 0x3FU, 0x01U}, /* J */
    {0x7FU, 0x08U, 0x14U, 0x22U, 0x41U}, /* K */
    {0x7FU, 0x40U, 0x40U, 0x40U, 0x40U}, /* L */
    {0x7FU, 0x02U, 0x0CU, 0x02U, 0x7FU}, /* M */
    {0x7FU, 0x04U, 0x08U, 0x10U, 0x7FU}, /* N */
    {0x3EU, 0x41U, 0x41U, 0x41U, 0x3EU}, /* O */
    {0x7FU, 0x09U, 0x09U, 0x09U, 0x06U}, /* P */
    {0x3EU, 0x41U, 0x51U, 0x21U, 0x5EU}, /* Q */
    {0x7FU, 0x09U, 0x19U, 0x29U, 0x46U}, /* R */
    {0x46U, 0x49U, 0x49U, 0x49U, 0x31U}, /* S */
    {0x01U, 0x01U, 0x7FU, 0x01U, 0x01U}, /* T */
    {0x3FU, 0x40U, 0x40U, 0x40U, 0x3FU}, /* U */
    {0x1FU, 0x20U, 0x40U, 0x20U, 0x1FU}, /* V */
    {0x3FU, 0x40U, 0x38U, 0x40U, 0x3FU}, /* W */
    {0x63U, 0x14U, 0x08U, 0x14U, 0x63U}, /* X */
    {0x07U, 0x08U, 0x70U, 0x08U, 0x07U}, /* Y */
    {0x61U, 0x51U, 0x49U, 0x45U, 0x43U}, /* Z */
    {0x08U, 0x08U, 0x08U, 0x08U, 0x08U}, /* - */
    {0x00U, 0x60U, 0x60U, 0x00U, 0x00U}, /* . */
    {0x00U, 0x36U, 0x36U, 0x00U, 0x00U}, /* : */
    {0x20U, 0x10U, 0x08U, 0x04U, 0x02U}  /* / */
};

static void set_pixel(int x, int y, rgb_color_t color)
{
    uint32_t offset;

    if (x < 0 || x >= (int)DISPLAY_WIDTH
            || y < 0 || y >= (int)DISPLAY_HEIGHT) {
        return;
    }

    offset = (uint32_t)(y * (int)DISPLAY_WIDTH + x)
        * DISPLAY_BYTES_PIXEL;
    frame_buffer[offset + 0U] = color.blue;
    frame_buffer[offset + 1U] = color.green;
    frame_buffer[offset + 2U] = color.red;
}

static void fill_rect(
    int x,
    int y,
    int width,
    int height,
    rgb_color_t color
) {
    int x_end = x + width;
    int y_end = y + height;
    int pixel_x;
    int pixel_y;

    if (x < 0) x = 0;
    if (y < 0) y = 0;
    if (x_end > (int)DISPLAY_WIDTH) x_end = (int)DISPLAY_WIDTH;
    if (y_end > (int)DISPLAY_HEIGHT) y_end = (int)DISPLAY_HEIGHT;

    for (pixel_y = y; pixel_y < y_end; ++pixel_y) {
        for (pixel_x = x; pixel_x < x_end; ++pixel_x) {
            set_pixel(pixel_x, pixel_y, color);
        }
    }
}

static const uint8_t *find_glyph(char character)
{
    const char *position = strchr(FONT_KEYS, character);

    if (position == 0) return FONT_5X7[0];
    return FONT_5X7[position - FONT_KEYS];
}

static void draw_character(
    int x,
    int y,
    char character,
    int scale,
    rgb_color_t color
) {
    const uint8_t *glyph = find_glyph(character);
    int column;
    int row;
    int dx;
    int dy;

    for (column = 0; column < 5; ++column) {
        for (row = 0; row < 7; ++row) {
            if ((glyph[column] & (1U << row)) == 0U) continue;
            for (dy = 0; dy < scale; ++dy) {
                for (dx = 0; dx < scale; ++dx) {
                    set_pixel(
                        x + column * scale + dx,
                        y + row * scale + dy,
                        color
                    );
                }
            }
        }
    }
}

static int text_width(const char *text, int scale)
{
    size_t length = strlen(text);

    if (length == 0U) return 0;
    return (int)(length * 6U - 1U) * scale;
}

static void draw_text(
    int x,
    int y,
    const char *text,
    int scale,
    rgb_color_t color
) {
    while (*text != '\0') {
        draw_character(x, y, *text, scale, color);
        x += 6 * scale;
        ++text;
    }
}

static void draw_text_centered(
    int y,
    const char *text,
    int scale,
    rgb_color_t color
) {
    int x = ((int)DISPLAY_WIDTH - text_width(text, scale)) / 2;
    draw_text(x, y, text, scale, color);
}

static unsigned long rounded_positive(float value)
{
    if (value <= 0.0f) return 0UL;
    return (unsigned long)(value + 0.5f);
}

static unsigned long fixed_milli(float value)
{
    if (value <= 0.0f) return 0UL;
    return (unsigned long)(value * 1000.0f + 0.5f);
}

static void draw_integer_parameter(
    int y,
    const char *label,
    float value,
    const char *unit
) {
    char line[48];

    (void)snprintf(
        line,
        sizeof(line),
        "%s  %lu %s",
        label,
        rounded_positive(value),
        unit
    );
    draw_text(120, y, line, 4, COLOR_TEXT);
}

static void draw_fixed_parameter(
    int y,
    const char *label,
    float value
) {
    char line[48];
    unsigned long scaled = fixed_milli(value);

    (void)snprintf(
        line,
        sizeof(line),
        "%s  %lu.%03lu",
        label,
        scaled / 1000UL,
        scaled % 1000UL
    );
    draw_text(120, y, line, 4, COLOR_TEXT);
}

static void draw_bpsk_summary(
    const ps_signal_parameters_t *parameters
) {
    char line[48];

    draw_integer_parameter(
        245,
        "RC",
        parameters->symbol_rate_bps,
        "BPS"
    );
    (void)snprintf(
        line,
        sizeof(line),
        "BITS  %u",
        (unsigned int)parameters->bpsk_bit_count
    );
    draw_text(120, 315, line, 4, COLOR_TEXT);
}

static void render_error(const char *label, int error_code)
{
    char line[48];

    draw_text_centered(252, label, 4, COLOR_ERROR);
    (void)snprintf(line, sizeof(line), "CODE  %d", error_code);
    draw_text_centered(315, line, 3, COLOR_ERROR);
}

static void render_dashboard(
    ps_signal_type_t signal_type,
    const ps_signal_parameters_t *parameters,
    rgb_result_state_t state,
    int error_code
) {
    const char *name = ps_signal_type_name(signal_type);

    fill_rect(0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT, COLOR_BACKGROUND);
    fill_rect(0, 0, DISPLAY_WIDTH, 72, COLOR_HEADER);
    fill_rect(50, 92, 700, 340, COLOR_PANEL);
    fill_rect(50, 92, 7, 340, COLOR_ACCENT);
    fill_rect(80, 202, 640, 2, COLOR_GRID);

    draw_text_centered(22, "SIGNAL ANALYZER", 4, COLOR_TEXT);
    draw_text(92, 120, "TYPE", 4, COLOR_MUTED);
    draw_text(
        300,
        108,
        name,
        6,
        signal_type == PS_SIGNAL_UNKNOWN ? COLOR_WARNING : COLOR_ACCENT
    );

    if (state == RGB_RESULT_STATE_CAPTURE_ERROR) {
        render_error("CAPTURE ERROR", error_code);
        return;
    }
    if (state == RGB_RESULT_STATE_PARAMETER_ERROR) {
        render_error("PARAMETER ERROR", error_code);
        return;
    }
    if (state == RGB_RESULT_STATE_WAITING
            || signal_type == PS_SIGNAL_UNKNOWN) {
        draw_text_centered(270, "WAITING FOR SIGNAL", 4, COLOR_WARNING);
        return;
    }
    if (state == RGB_RESULT_STATE_MEASURING) {
        draw_text_centered(270, "MEASURING PARAMETERS", 3, COLOR_WARNING);
        return;
    }
    if (parameters == 0) {
        render_error("PARAMETER ERROR", PS_PARAM_BAD_ARGUMENT);
        return;
    }

    switch (signal_type) {
    case PS_SIGNAL_AM:
        draw_integer_parameter(
            238, "F", parameters->modulation_frequency_hz, "HZ"
        );
        draw_fixed_parameter(305, "MA", parameters->am_depth);
        break;
    case PS_SIGNAL_FM:
        draw_integer_parameter(
            225, "F", parameters->modulation_frequency_hz, "HZ"
        );
        draw_integer_parameter(
            285, "DF", parameters->frequency_deviation_hz, "HZ"
        );
        draw_fixed_parameter(345, "MF", parameters->modulation_index);
        break;
    case PS_SIGNAL_CW:
        draw_text_centered(278, "NO MODULATION", 5, COLOR_TEXT);
        break;
    case PS_SIGNAL_2ASK:
        draw_integer_parameter(
            275, "RC", parameters->symbol_rate_bps, "BPS"
        );
        break;
    case PS_SIGNAL_2FSK:
        draw_integer_parameter(
            225, "RC", parameters->symbol_rate_bps, "BPS"
        );
        draw_integer_parameter(
            285, "DF", parameters->frequency_deviation_hz, "HZ"
        );
        draw_fixed_parameter(345, "H", parameters->fsk_h);
        break;
    case PS_SIGNAL_2PSK:
        draw_bpsk_summary(parameters);
        break;
    default:
        draw_text_centered(270, "WAITING FOR SIGNAL", 4, COLOR_WARNING);
        break;
    }
}

static void flush_framebuffer(void)
{
    Xil_DCacheFlushRange(
        (INTPTR)frame_buffer,
        (u32)DISPLAY_FRAME_SIZE
    );
}

int rgb_result_display_init(void)
{
    vdma_display_status_t status;

    render_dashboard(
        PS_SIGNAL_UNKNOWN,
        0,
        RGB_RESULT_STATE_WAITING,
        0
    );
    flush_framebuffer();

    status = vdma_display_start(
        &display_vdma,
        (uint32_t)RGB_RESULT_FRAMEBUFFER_ADDRESS,
        DISPLAY_WIDTH,
        DISPLAY_HEIGHT,
        DISPLAY_BYTES_PIXEL
    );
    return (int)status;
}

void rgb_result_display_update(
    ps_signal_type_t signal_type,
    const ps_signal_parameters_t *parameters,
    rgb_result_state_t state,
    int error_code
) {
    render_dashboard(signal_type, parameters, state, error_code);
    flush_framebuffer();
}
