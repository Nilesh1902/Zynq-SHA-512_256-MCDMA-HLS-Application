set moduleName axis_to_core
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 20
set C_modelName {axis_to_core}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ msg_strm_V_data_V int 64 regular {axi_s 0 volatile  { msg_strm Data } }  }
	{ msg_strm_V_keep_V int 8 regular {axi_s 0 volatile  { msg_strm Keep } }  }
	{ msg_strm_V_strb_V int 8 regular {axi_s 0 volatile  { msg_strm Strb } }  }
	{ msg_strm_V_last_V int 1 regular {axi_s 0 volatile  { msg_strm Last } }  }
	{ msg_strm_V_dest_V int 3 regular {axi_s 0 volatile  { msg_strm Dest } }  }
	{ msg_len int 128 regular  }
	{ core_msg_strm int 64 regular {fifo 1 volatile }  }
	{ core_len_strm int 128 regular {fifo 1 volatile }  }
	{ core_end_len_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "msg_strm_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "msg_strm_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "msg_strm_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "msg_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "msg_strm_V_dest_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "msg_len", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "core_msg_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "core_len_strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "core_end_len_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ msg_strm_TDATA sc_in sc_lv 64 signal 0 } 
	{ msg_strm_TVALID sc_in sc_logic 1 invld 4 } 
	{ msg_strm_TREADY sc_out sc_logic 1 inacc 4 } 
	{ msg_strm_TKEEP sc_in sc_lv 8 signal 1 } 
	{ msg_strm_TSTRB sc_in sc_lv 8 signal 2 } 
	{ msg_strm_TLAST sc_in sc_lv 1 signal 3 } 
	{ msg_strm_TDEST sc_in sc_lv 3 signal 4 } 
	{ msg_len sc_in sc_lv 128 signal 5 } 
	{ core_msg_strm_din sc_out sc_lv 64 signal 6 } 
	{ core_msg_strm_full_n sc_in sc_logic 1 signal 6 } 
	{ core_msg_strm_write sc_out sc_logic 1 signal 6 } 
	{ core_msg_strm_num_data_valid sc_in sc_lv 7 signal 6 } 
	{ core_msg_strm_fifo_cap sc_in sc_lv 7 signal 6 } 
	{ core_len_strm_din sc_out sc_lv 128 signal 7 } 
	{ core_len_strm_full_n sc_in sc_logic 1 signal 7 } 
	{ core_len_strm_write sc_out sc_logic 1 signal 7 } 
	{ core_len_strm_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ core_len_strm_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ core_end_len_strm_din sc_out sc_lv 1 signal 8 } 
	{ core_end_len_strm_full_n sc_in sc_logic 1 signal 8 } 
	{ core_end_len_strm_write sc_out sc_logic 1 signal 8 } 
	{ core_end_len_strm_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ core_end_len_strm_fifo_cap sc_in sc_lv 3 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "msg_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msg_strm_V_data_V", "role": "default" }} , 
 	{ "name": "msg_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "msg_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "msg_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "msg_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "msg_strm_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "msg_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "msg_strm_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "msg_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "msg_strm_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "msg_strm_V_last_V", "role": "default" }} , 
 	{ "name": "msg_strm_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msg_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "msg_len", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "msg_len", "role": "default" }} , 
 	{ "name": "core_msg_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "din" }} , 
 	{ "name": "core_msg_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "full_n" }} , 
 	{ "name": "core_msg_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "write" }} , 
 	{ "name": "core_msg_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_msg_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "fifo_cap" }} , 
 	{ "name": "core_len_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "core_len_strm", "role": "din" }} , 
 	{ "name": "core_len_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_len_strm", "role": "full_n" }} , 
 	{ "name": "core_len_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_len_strm", "role": "write" }} , 
 	{ "name": "core_len_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_len_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_len_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_len_strm", "role": "fifo_cap" }} , 
 	{ "name": "core_end_len_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_len_strm", "role": "din" }} , 
 	{ "name": "core_end_len_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_len_strm", "role": "full_n" }} , 
 	{ "name": "core_end_len_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_len_strm", "role": "write" }} , 
 	{ "name": "core_end_len_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_end_len_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_end_len_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_end_len_strm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7"],
		"CDFG" : "axis_to_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "msg_strm_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "core_msg_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "core_len_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "core_len_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "core_end_len_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "core_end_len_strm_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "axis_to_core_Pipeline_FEED_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "msg_strm_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"BlockSignal" : [
					{"Name" : "msg_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msg_strm_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm"},
			{"Name" : "msg_strm_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm"},
			{"Name" : "msg_strm_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm"},
			{"Name" : "msg_strm_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm"},
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "core_msg_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "FEED_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_axis_to_core_Pipeline_FEED_LOOP_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_msg_strm_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_msg_strm_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_msg_strm_V_strb_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_msg_strm_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_msg_strm_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axis_to_core {
		msg_strm_V_data_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_keep_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_strb_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_last_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_dest_V {Type I LastRead 2 FirstWrite -1}
		msg_len {Type I LastRead 0 FirstWrite -1}
		core_msg_strm {Type O LastRead -1 FirstWrite 2}
		core_len_strm {Type O LastRead -1 FirstWrite 0}
		core_end_len_strm {Type O LastRead -1 FirstWrite 0}}
	axis_to_core_Pipeline_FEED_LOOP {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		msg_strm_V_data_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_keep_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_strb_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_last_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_dest_V {Type I LastRead 2 FirstWrite -1}
		core_msg_strm {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	msg_strm_V_data_V { axis {  { msg_strm_TDATA in_data 0 64 } } }
	msg_strm_V_keep_V { axis {  { msg_strm_TKEEP in_data 0 8 } } }
	msg_strm_V_strb_V { axis {  { msg_strm_TSTRB in_data 0 8 } } }
	msg_strm_V_last_V { axis {  { msg_strm_TLAST in_data 0 1 } } }
	msg_strm_V_dest_V { axis {  { msg_strm_TVALID in_vld 0 1 }  { msg_strm_TREADY in_acc 1 1 }  { msg_strm_TDEST in_data 0 3 } } }
	msg_len { ap_none {  { msg_len in_data 0 128 } } }
	core_msg_strm { ap_fifo {  { core_msg_strm_din fifo_data_in 1 64 }  { core_msg_strm_full_n fifo_status 0 1 }  { core_msg_strm_write fifo_port_we 1 1 }  { core_msg_strm_num_data_valid fifo_status_num_data_valid 0 7 }  { core_msg_strm_fifo_cap fifo_update 0 7 } } }
	core_len_strm { ap_fifo {  { core_len_strm_din fifo_data_in 1 128 }  { core_len_strm_full_n fifo_status 0 1 }  { core_len_strm_write fifo_port_we 1 1 }  { core_len_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { core_len_strm_fifo_cap fifo_update 0 3 } } }
	core_end_len_strm { ap_fifo {  { core_end_len_strm_din fifo_data_in 1 1 }  { core_end_len_strm_full_n fifo_status 0 1 }  { core_end_len_strm_write fifo_port_we 1 1 }  { core_end_len_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { core_end_len_strm_fifo_cap fifo_update 0 3 } } }
}
