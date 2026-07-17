/*
 * ui_display.h
 *
 *  Created on: 2026年6月22日
 *      Author: Administrator
 */

#ifndef SRC_UI_DISPLAY_H_
#define SRC_UI_DISPLAY_H_

#include "hw_interface.h"
#include "dsp_algorithms.h"

// UI 初始化
void UI_Init(void);

// 核心屏幕刷新函数：传入当前信号类型，以及算好的数据结构体
void UI_UpdateDashboard(SignalType type, SignalParams *params);

#endif /* SRC_UI_DISPLAY_H_ */
