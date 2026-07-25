# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DC_FILTER_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INVERT_ADC_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_LEFT_SHIFT" -parent ${Page_0}


}

proc update_PARAM_VALUE.DC_FILTER_SHIFT { PARAM_VALUE.DC_FILTER_SHIFT } {
	# Procedure called to update DC_FILTER_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DC_FILTER_SHIFT { PARAM_VALUE.DC_FILTER_SHIFT } {
	# Procedure called to validate DC_FILTER_SHIFT
	return true
}

proc update_PARAM_VALUE.INVERT_ADC_BITS { PARAM_VALUE.INVERT_ADC_BITS } {
	# Procedure called to update INVERT_ADC_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INVERT_ADC_BITS { PARAM_VALUE.INVERT_ADC_BITS } {
	# Procedure called to validate INVERT_ADC_BITS
	return true
}

proc update_PARAM_VALUE.OUTPUT_LEFT_SHIFT { PARAM_VALUE.OUTPUT_LEFT_SHIFT } {
	# Procedure called to update OUTPUT_LEFT_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_LEFT_SHIFT { PARAM_VALUE.OUTPUT_LEFT_SHIFT } {
	# Procedure called to validate OUTPUT_LEFT_SHIFT
	return true
}


proc update_MODELPARAM_VALUE.INVERT_ADC_BITS { MODELPARAM_VALUE.INVERT_ADC_BITS PARAM_VALUE.INVERT_ADC_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INVERT_ADC_BITS}] ${MODELPARAM_VALUE.INVERT_ADC_BITS}
}

proc update_MODELPARAM_VALUE.DC_FILTER_SHIFT { MODELPARAM_VALUE.DC_FILTER_SHIFT PARAM_VALUE.DC_FILTER_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DC_FILTER_SHIFT}] ${MODELPARAM_VALUE.DC_FILTER_SHIFT}
}

proc update_MODELPARAM_VALUE.OUTPUT_LEFT_SHIFT { MODELPARAM_VALUE.OUTPUT_LEFT_SHIFT PARAM_VALUE.OUTPUT_LEFT_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_LEFT_SHIFT}] ${MODELPARAM_VALUE.OUTPUT_LEFT_SHIFT}
}

