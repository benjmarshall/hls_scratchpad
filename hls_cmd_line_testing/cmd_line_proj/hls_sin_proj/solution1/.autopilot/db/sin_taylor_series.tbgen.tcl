set C_TypeInfoList {{ 
"sin_taylor_series" : [[], {"return": [[], {"scalar": "double"}] }, [{"ExternC" : 0}], [ {"x": [[], {"scalar": "double"}] }],[],""]
}}
set moduleName sin_taylor_series
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sin_taylor_series}
set C_modelType { double 64 }
set C_modelArgList {
	{ x double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "x","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "return","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ x sc_in sc_lv 64 signal 0 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "16", "18", "19", "20", "21"],
		"CDFG" : "sin_taylor_series",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Loop_sum_loop_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "p_source_files_sr_U0"}],
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0", "Parent" : "0", "Child" : ["2", "5", "8", "10", "12", "13", "14", "15"],
		"CDFG" : "Loop_sum_loop_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fact_fu_70"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fact_fu_76"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_power_fu_81"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_power_fu_88"}],
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_fact_fu_70", "Parent" : "1", "Child" : ["3", "4"],
		"CDFG" : "fact",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_fact_fu_70.sin_taylor_seriesbkb_x_U4", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_fact_fu_70.sin_taylor_seriescud_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_fact_fu_76", "Parent" : "1", "Child" : ["6", "7"],
		"CDFG" : "fact",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_fact_fu_76.sin_taylor_seriesbkb_x_U4", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_fact_fu_76.sin_taylor_seriescud_U5", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_power_fu_81", "Parent" : "1", "Child" : ["9"],
		"CDFG" : "power",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_power_fu_81.sin_taylor_seriesbkb_U1", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_power_fu_88", "Parent" : "1", "Child" : ["11"],
		"CDFG" : "power",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.grp_power_fu_88.sin_taylor_seriesbkb_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.sin_taylor_seriesdEe_U7", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.sin_taylor_seriesdEe_U8", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.sin_taylor_serieseOg_U9", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_sum_loop_proc_U0.sin_taylor_serieseOg_U10", "Parent" : "1"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_sin_taylor_ser_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "Block_sin_taylor_ser",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_sin_taylor_ser_U0.sin_taylor_seriesfYi_U12", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_source_files_sr_U0", "Parent" : "0",
		"CDFG" : "p_source_files_sr",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "21"}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_positive_0_loc_l_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_negative_0_loc_l_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_loc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sin_taylor_series {
		x {Type I LastRead 0 FirstWrite -1}}
	Loop_sum_loop_proc {
		x {Type I LastRead 0 FirstWrite -1}}
	fact {
		x {Type I LastRead 0 FirstWrite -1}}
	fact {
		x {Type I LastRead 0 FirstWrite -1}}
	power {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	power {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	Block_sin_taylor_ser {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	p_source_files_sr {
		p_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "201", "Max" : "1156"}
	, {"Name" : "Interval", "Min" : "197", "Max" : "1152"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x { ap_none {  { x in_data 0 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
