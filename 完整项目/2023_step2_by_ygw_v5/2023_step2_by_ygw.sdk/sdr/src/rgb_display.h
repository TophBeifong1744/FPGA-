#ifndef RGB_DISPLAY_H
#define RGB_DISPLAY_H

#include "app_types.h"

int rgb_display_init(void);
void rgb_display_update(
		SignalType signal,
		const SignalParams *params,
		int params_valid);

#endif /* RGB_DISPLAY_H */
