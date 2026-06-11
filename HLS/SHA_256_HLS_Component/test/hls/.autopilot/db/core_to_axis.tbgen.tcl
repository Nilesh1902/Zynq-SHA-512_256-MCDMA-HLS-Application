set moduleName core_to_axis
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
set C_modelName {core_to_axis}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ core_digest_strm int 256 regular {fifo 0 volatile }  }
	{ core_end_digest_strm int 1 regular {fifo 0 volatile }  }
	{ digest_strm_V_data_V int 256 regular {axi_s 1 volatile  { digest_strm Data } }  }
	{ digest_strm_V_keep_V int 32 regular {axi_s 1 volatile  { digest_strm Keep } }  }
	{ digest_strm_V_strb_V int 32 regular {axi_s 1 volatile  { digest_strm Strb } }  }
	{ digest_strm_V_last_V int 1 regular {axi_s 1 volatile  { digest_strm Last } }  }
	{ digest_strm_V_dest_V int 3 regular {axi_s 1 volatile  { digest_strm Dest } }  }
	{ dest_id int 2 regular {fifo 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "core_digest_strm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "core_end_digest_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "digest_strm_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_dest_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_id", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ core_digest_strm_dout sc_in sc_lv 256 signal 0 } 
	{ core_digest_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ core_digest_strm_read sc_out sc_logic 1 signal 0 } 
	{ core_digest_strm_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ core_digest_strm_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ core_end_digest_strm_dout sc_in sc_lv 1 signal 1 } 
	{ core_end_digest_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ core_end_digest_strm_read sc_out sc_logic 1 signal 1 } 
	{ core_end_digest_strm_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ core_end_digest_strm_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ digest_strm_TDATA sc_out sc_lv 256 signal 2 } 
	{ digest_strm_TVALID sc_out sc_logic 1 outvld 6 } 
	{ digest_strm_TREADY sc_in sc_logic 1 outacc 6 } 
	{ digest_strm_TKEEP sc_out sc_lv 32 signal 3 } 
	{ digest_strm_TSTRB sc_out sc_lv 32 signal 4 } 
	{ digest_strm_TLAST sc_out sc_lv 1 signal 5 } 
	{ digest_strm_TDEST sc_out sc_lv 3 signal 6 } 
	{ dest_id_dout sc_in sc_lv 2 signal 7 } 
	{ dest_id_empty_n sc_in sc_logic 1 signal 7 } 
	{ dest_id_read sc_out sc_logic 1 signal 7 } 
	{ dest_id_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ dest_id_fifo_cap sc_in sc_lv 3 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "core_digest_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "dout" }} , 
 	{ "name": "core_digest_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "empty_n" }} , 
 	{ "name": "core_digest_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "read" }} , 
 	{ "name": "core_digest_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_digest_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "fifo_cap" }} , 
 	{ "name": "core_end_digest_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "dout" }} , 
 	{ "name": "core_end_digest_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "empty_n" }} , 
 	{ "name": "core_end_digest_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "read" }} , 
 	{ "name": "core_end_digest_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_end_digest_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "fifo_cap" }} , 
 	{ "name": "digest_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "digest_strm_V_data_V", "role": "default" }} , 
 	{ "name": "digest_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "digest_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "digest_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "digest_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "digest_strm_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "digest_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "digest_strm_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "digest_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "digest_strm_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "digest_strm_V_last_V", "role": "default" }} , 
 	{ "name": "digest_strm_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "digest_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "dest_id_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dest_id", "role": "dout" }} , 
 	{ "name": "dest_id_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_id", "role": "empty_n" }} , 
 	{ "name": "dest_id_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_id", "role": "read" }} , 
 	{ "name": "dest_id_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dest_id", "role": "num_data_valid" }} , 
 	{ "name": "dest_id_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dest_id", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7"],
		"CDFG" : "core_to_axis",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "core_digest_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "core_digest_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "core_end_digest_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "core_end_digest_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dest_id", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dest_id_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "core_to_axis_Pipeline_DRAIN_LOOP",
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
			{"Name" : "core_end_digest_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "core_end_digest_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "core_digest_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "core_digest_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_pkt_dest", "Type" : "None", "Direction" : "I"},
			{"Name" : "digest_strm_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"BlockSignal" : [
					{"Name" : "digest_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "digest_strm_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm"},
			{"Name" : "digest_strm_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm"},
			{"Name" : "digest_strm_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm"},
			{"Name" : "digest_strm_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm"}],
		"Loop" : [
			{"Name" : "DRAIN_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_digest_strm_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_digest_strm_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_digest_strm_V_strb_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_digest_strm_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_digest_strm_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	core_to_axis {
		core_digest_strm {Type I LastRead 1 FirstWrite -1}
		core_end_digest_strm {Type I LastRead 0 FirstWrite -1}
		digest_strm_V_data_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_keep_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_strb_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_last_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_dest_V {Type O LastRead -1 FirstWrite 1}
		dest_id {Type I LastRead 0 FirstWrite -1}}
	core_to_axis_Pipeline_DRAIN_LOOP {
		core_end_digest_strm {Type I LastRead 0 FirstWrite -1}
		core_digest_strm {Type I LastRead 1 FirstWrite -1}
		out_pkt_dest {Type I LastRead 0 FirstWrite -1}
		digest_strm_V_data_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_keep_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_strb_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_last_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	core_digest_strm { ap_fifo {  { core_digest_strm_dout fifo_data_in 0 256 }  { core_digest_strm_empty_n fifo_status 0 1 }  { core_digest_strm_read fifo_port_we 1 1 }  { core_digest_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { core_digest_strm_fifo_cap fifo_update 0 3 } } }
	core_end_digest_strm { ap_fifo {  { core_end_digest_strm_dout fifo_data_in 0 1 }  { core_end_digest_strm_empty_n fifo_status 0 1 }  { core_end_digest_strm_read fifo_port_we 1 1 }  { core_end_digest_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { core_end_digest_strm_fifo_cap fifo_update 0 3 } } }
	digest_strm_V_data_V { axis {  { digest_strm_TDATA out_data 1 256 } } }
	digest_strm_V_keep_V { axis {  { digest_strm_TKEEP out_data 1 32 } } }
	digest_strm_V_strb_V { axis {  { digest_strm_TSTRB out_data 1 32 } } }
	digest_strm_V_last_V { axis {  { digest_strm_TLAST out_data 1 1 } } }
	digest_strm_V_dest_V { axis {  { digest_strm_TVALID out_vld 1 1 }  { digest_strm_TREADY out_acc 0 1 }  { digest_strm_TDEST out_data 1 3 } } }
	dest_id { ap_fifo {  { dest_id_dout fifo_data_in 0 2 }  { dest_id_empty_n fifo_status 0 1 }  { dest_id_read fifo_port_we 1 1 }  { dest_id_num_data_valid fifo_status_num_data_valid 0 3 }  { dest_id_fifo_cap fifo_update 0 3 } } }
}
