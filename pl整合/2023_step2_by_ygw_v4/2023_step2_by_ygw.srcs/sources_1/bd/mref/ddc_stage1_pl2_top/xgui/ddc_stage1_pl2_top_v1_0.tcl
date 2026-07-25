# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FIFO_ADDR_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCALE_SHIFT" -parent ${Page_0}


}

proc update_PARAM_VALUE.FIFO_ADDR_W { PARAM_VALUE.FIFO_ADDR_W } {
	# Procedure called to update FIFO_ADDR_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_ADDR_W { PARAM_VALUE.FIFO_ADDR_W } {
	# Procedure called to validate FIFO_ADDR_W
	return true
}

proc update_PARAM_VALUE.SCALE_SHIFT { PARAM_VALUE.SCALE_SHIFT } {
	# Procedure called to update SCALE_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCALE_SHIFT { PARAM_VALUE.SCALE_SHIFT } {
	# Procedure called to validate SCALE_SHIFT
	return true
}


proc update_MODELPARAM_VALUE.SCALE_SHIFT { MODELPARAM_VALUE.SCALE_SHIFT PARAM_VALUE.SCALE_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCALE_SHIFT}] ${MODELPARAM_VALUE.SCALE_SHIFT}
}

proc update_MODELPARAM_VALUE.FIFO_ADDR_W { MODELPARAM_VALUE.FIFO_ADDR_W PARAM_VALUE.FIFO_ADDR_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_ADDR_W}] ${MODELPARAM_VALUE.FIFO_ADDR_W}
}

