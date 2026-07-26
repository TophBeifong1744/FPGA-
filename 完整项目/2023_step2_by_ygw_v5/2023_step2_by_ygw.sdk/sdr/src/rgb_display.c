#include "rgb_display.h"

#include "vdma_api.h"
#include "xaxivdma.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"

#include <stdio.h>
#include <string.h>

#define DISPLAY_WIDTH        800
#define DISPLAY_HEIGHT       480
#define DISPLAY_BYTES_PIXEL  3
#define DISPLAY_FRAME_SIZE   \
		(DISPLAY_WIDTH * DISPLAY_HEIGHT * DISPLAY_BYTES_PIXEL)

#define VDMA_DEVICE_ID       XPAR_AXIVDMA_0_DEVICE_ID
#define FRAME_BUFFER_ADDR    \
		(XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x01000000U)

typedef struct {
	u8 red;
	u8 green;
	u8 blue;
} RgbColor;

static const RgbColor COLOR_BACKGROUND = {7U, 15U, 28U};
static const RgbColor COLOR_PANEL = {15U, 31U, 52U};
static const RgbColor COLOR_HEADER = {22U, 43U, 70U};
static const RgbColor COLOR_GRID = {40U, 63U, 84U};
static const RgbColor COLOR_TEXT = {230U, 239U, 246U};
static const RgbColor COLOR_MUTED = {126U, 148U, 165U};
static const RgbColor COLOR_ACCENT = {24U, 232U, 164U};
static const RgbColor COLOR_WARNING = {255U, 190U, 70U};

static XAxiVdma vdma_instance;
static u8 *const frame_buffer = (u8 *)FRAME_BUFFER_ADDR;

static const char FONT_KEYS[] =
		" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-.:/";

static const u8 FONT_5X7[][5] = {
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

static void set_pixel(int x, int y, RgbColor color)
{
	u32 offset;

	if ((x < 0) || (x >= DISPLAY_WIDTH)
			|| (y < 0) || (y >= DISPLAY_HEIGHT)) {
		return;
	}

	offset = (u32)(y * DISPLAY_WIDTH + x) * DISPLAY_BYTES_PIXEL;
	frame_buffer[offset + 0U] = color.blue;
	frame_buffer[offset + 1U] = color.green;
	frame_buffer[offset + 2U] = color.red;
}

static void fill_rect(
		int x, int y, int width, int height, RgbColor color)
{
	int x_end = x + width;
	int y_end = y + height;
	int px;
	int py;

	if (x < 0) {
		x = 0;
	}
	if (y < 0) {
		y = 0;
	}
	if (x_end > DISPLAY_WIDTH) {
		x_end = DISPLAY_WIDTH;
	}
	if (y_end > DISPLAY_HEIGHT) {
		y_end = DISPLAY_HEIGHT;
	}

	for (py = y; py < y_end; ++py) {
		for (px = x; px < x_end; ++px) {
			set_pixel(px, py, color);
		}
	}
}

static const u8 *find_glyph(char character)
{
	const char *position = strchr(FONT_KEYS, character);

	if (position == 0) {
		return FONT_5X7[0];
	}
	return FONT_5X7[position - FONT_KEYS];
}

static void draw_character(
		int x, int y, char character, int scale, RgbColor color)
{
	const u8 *glyph = find_glyph(character);
	int column;
	int row;
	int dx;
	int dy;

	for (column = 0; column < 5; ++column) {
		for (row = 0; row < 7; ++row) {
			if ((glyph[column] & (1U << row)) == 0U) {
				continue;
			}
			for (dy = 0; dy < scale; ++dy) {
				for (dx = 0; dx < scale; ++dx) {
					set_pixel(
							x + column * scale + dx,
							y + row * scale + dy,
							color);
				}
			}
		}
	}
}

static int text_width(const char *text, int scale)
{
	size_t length = strlen(text);

	if (length == 0U) {
		return 0;
	}
	return (int)(length * 6U - 1U) * scale;
}

static void draw_text(
		int x, int y, const char *text, int scale, RgbColor color)
{
	while (*text != '\0') {
		draw_character(x, y, *text, scale, color);
		x += 6 * scale;
		text++;
	}
}

static void draw_text_centered(
		int y, const char *text, int scale, RgbColor color)
{
	int x = (DISPLAY_WIDTH - text_width(text, scale)) / 2;

	draw_text(x, y, text, scale, color);
}

static const char *signal_name(SignalType signal)
{
	switch (signal) {
	case SIGNAL_AM:
		return "AM";
	case SIGNAL_FM:
		return "FM";
	case SIGNAL_CW:
		return "CW";
	case SIGNAL_2ASK:
		return "2ASK";
	case SIGNAL_2PSK:
		return "2PSK";
	case SIGNAL_2FSK:
		return "2FSK";
	default:
		return "UNKNOWN";
	}
}

static unsigned long rounded_positive(float value)
{
	if (value <= 0.0f) {
		return 0UL;
	}
	return (unsigned long)(value + 0.5f);
}

static unsigned long fixed_milli(float value)
{
	if (value <= 0.0f) {
		return 0UL;
	}
	return (unsigned long)(value * 1000.0f + 0.5f);
}

static void draw_integer_parameter(
		int y,
		const char *label,
		float value,
		const char *unit)
{
	char line[48];

	snprintf(
			line,
			sizeof(line),
			"%s  %lu %s",
			label,
			rounded_positive(value),
			unit);
	draw_text(120, y, line, 4, COLOR_TEXT);
}

static void draw_fixed_parameter(
		int y, const char *label, float value)
{
	char line[48];
	unsigned long scaled = fixed_milli(value);

	snprintf(
			line,
			sizeof(line),
			"%s  %lu.%03lu",
			label,
			scaled / 1000UL,
			scaled % 1000UL);
	draw_text(120, y, line, 4, COLOR_TEXT);
}

static void render_dashboard(
		SignalType signal,
		const SignalParams *params,
		int params_valid)
{
	const char *name = signal_name(signal);

	fill_rect(
			0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT,
			COLOR_BACKGROUND);
	fill_rect(0, 0, DISPLAY_WIDTH, 72, COLOR_HEADER);
	fill_rect(50, 92, 700, 340, COLOR_PANEL);
	fill_rect(50, 92, 7, 340, COLOR_ACCENT);
	fill_rect(80, 202, 640, 2, COLOR_GRID);

	draw_text_centered(
			22, "SIGNAL ANALYZER", 4, COLOR_TEXT);
	draw_text(92, 120, "TYPE", 4, COLOR_MUTED);
	draw_text(
			300,
			108,
			name,
			6,
			(signal == SIGNAL_UNKNOWN)
					? COLOR_WARNING : COLOR_ACCENT);

	if (signal == SIGNAL_UNKNOWN) {
		draw_text_centered(
				270, "WAITING FOR SIGNAL", 4, COLOR_WARNING);
		return;
	}

	if ((signal != SIGNAL_CW) && (params_valid == 0)) {
		draw_text_centered(
				270, "WAITING FOR PARAMETERS", 3, COLOR_WARNING);
		return;
	}

	switch (signal) {
	case SIGNAL_AM:
		draw_integer_parameter(238, "F", params->F, "HZ");
		draw_fixed_parameter(305, "MA", params->ma);
		break;
	case SIGNAL_FM:
		draw_integer_parameter(225, "F", params->F, "HZ");
		draw_integer_parameter(285, "DF", params->delta_f, "HZ");
		draw_fixed_parameter(345, "MF", params->mf);
		break;
	case SIGNAL_CW:
		draw_text_centered(
				278, "NO MODULATION", 5, COLOR_TEXT);
		break;
	case SIGNAL_2ASK:
	case SIGNAL_2PSK:
		draw_integer_parameter(275, "RC", params->Rc, "BPS");
		break;
	case SIGNAL_2FSK:
		draw_integer_parameter(225, "RC", params->Rc, "BPS");
		draw_integer_parameter(285, "DF", params->delta_f, "HZ");
		draw_fixed_parameter(345, "H", params->h);
		break;
	default:
		break;
	}
}

int rgb_display_init(void)
{
	SignalParams empty_params = {
		0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f
	};
	int status;

	render_dashboard(SIGNAL_UNKNOWN, &empty_params, 0);
	Xil_DCacheFlushRange(
			(INTPTR)frame_buffer,
			DISPLAY_FRAME_SIZE);

	status = run_triple_frame_buffer(
			&vdma_instance,
			VDMA_DEVICE_ID,
			DISPLAY_WIDTH,
			DISPLAY_HEIGHT,
			FRAME_BUFFER_ADDR,
			0,
			0);

	if (status != XST_SUCCESS) {
		xil_printf("VDMA display start failed: %d\r\n", status);
		return -1;
	}

	return 0;
}

void rgb_display_update(
		SignalType signal,
		const SignalParams *params,
		int params_valid)
{
	SignalParams empty_params = {
		0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f
	};

	if (params == 0) {
		params = &empty_params;
	}

	render_dashboard(signal, params, params_valid);
	Xil_DCacheFlushRange(
			(INTPTR)frame_buffer,
			DISPLAY_FRAME_SIZE);
}
