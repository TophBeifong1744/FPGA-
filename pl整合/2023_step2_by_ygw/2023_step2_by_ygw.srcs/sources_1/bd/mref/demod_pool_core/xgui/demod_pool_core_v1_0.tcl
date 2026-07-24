# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LGN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAG_GATE" -parent ${Page_0}


}

proc update_PARAM_VALUE.LGN { PARAM_VALUE.LGN } {
	# Procedure called to update LGN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LGN { PARAM_VALUE.LGN } {
	# Procedure called to validate LGN
	return true
}

proc update_PARAM_VALUE.MAG_GATE { PARAM_VALUE.MAG_GATE } {
	# Procedure called to update MAG_GATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAG_GATE { PARAM_VALUE.MAG_GATE } {
	# Procedure called to validate MAG_GATE
	return true
}


proc update_MODELPARAM_VALUE.LGN { MODELPARAM_VALUE.LGN PARAM_VALUE.LGN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LGN}] ${MODELPARAM_VALUE.LGN}
}

proc update_MODELPARAM_VALUE.MAG_GATE { MODELPARAM_VALUE.MAG_GATE PARAM_VALUE.MAG_GATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAG_GATE}] ${MODELPARAM_VALUE.MAG_GATE}
}

