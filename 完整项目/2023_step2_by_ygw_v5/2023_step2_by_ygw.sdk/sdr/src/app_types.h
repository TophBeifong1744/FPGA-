#ifndef APP_TYPES_H
#define APP_TYPES_H

typedef enum {
	SIGNAL_UNKNOWN = 0,
	SIGNAL_AM,
	SIGNAL_FM,
	SIGNAL_CW,
	SIGNAL_2ASK,
	SIGNAL_2PSK,
	SIGNAL_2FSK
} SignalType;

typedef struct {
	float Rc;
	float F;
	float ma;
	float delta_f;
	float mf;
	float h;
} SignalParams;

#endif /* APP_TYPES_H */
