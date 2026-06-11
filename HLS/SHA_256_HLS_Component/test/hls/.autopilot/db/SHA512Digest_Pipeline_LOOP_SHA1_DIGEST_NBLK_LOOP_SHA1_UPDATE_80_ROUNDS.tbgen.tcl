set moduleName SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mul_ln685 int 135 regular  }
	{ w_strm int 64 regular {fifo 0 volatile }  }
	{ add_ln7788_out int 64 regular {pointer 1}  }
	{ add_ln7797_out int 64 regular {pointer 1}  }
	{ add_ln7806_out int 64 regular {pointer 1}  }
	{ add_ln7815_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mul_ln685", "interface" : "wire", "bitwidth" : 135, "direction" : "READONLY"} , 
 	{ "Name" : "w_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln7788_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln7797_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln7806_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln7815_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_strm_dout sc_in sc_lv 64 signal 1 } 
	{ w_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ w_strm_read sc_out sc_logic 1 signal 1 } 
	{ w_strm_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ w_strm_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ mul_ln685 sc_in sc_lv 135 signal 0 } 
	{ add_ln7788_out sc_out sc_lv 64 signal 2 } 
	{ add_ln7788_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ add_ln7797_out sc_out sc_lv 64 signal 3 } 
	{ add_ln7797_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ add_ln7806_out sc_out sc_lv 64 signal 4 } 
	{ add_ln7806_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ add_ln7815_out sc_out sc_lv 64 signal 5 } 
	{ add_ln7815_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_strm", "role": "dout" }} , 
 	{ "name": "w_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "empty_n" }} , 
 	{ "name": "w_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "read" }} , 
 	{ "name": "w_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "num_data_valid" }} , 
 	{ "name": "w_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "fifo_cap" }} , 
 	{ "name": "mul_ln685", "direction": "in", "datatype": "sc_lv", "bitwidth":135, "type": "signal", "bundle":{"name": "mul_ln685", "role": "default" }} , 
 	{ "name": "add_ln7788_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln7788_out", "role": "default" }} , 
 	{ "name": "add_ln7788_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln7788_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln7797_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln7797_out", "role": "default" }} , 
 	{ "name": "add_ln7797_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln7797_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln7806_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln7806_out", "role": "default" }} , 
 	{ "name": "add_ln7806_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln7806_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln7815_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln7815_out", "role": "default" }} , 
 	{ "name": "add_ln7815_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln7815_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul_ln685", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "w_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln7788_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln7797_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln7806_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln7815_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_161_7_64_1_1_U119", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS {
		mul_ln685 {Type I LastRead 0 FirstWrite -1}
		w_strm {Type I LastRead 2 FirstWrite -1}
		add_ln7788_out {Type O LastRead -1 FirstWrite 1}
		add_ln7797_out {Type O LastRead -1 FirstWrite 1}
		add_ln7806_out {Type O LastRead -1 FirstWrite 1}
		add_ln7815_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "82", "Max" : "82"}
	, {"Name" : "Interval", "Min" : "82", "Max" : "82"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mul_ln685 { ap_none {  { mul_ln685 in_data 0 135 } } }
	w_strm { ap_fifo {  { w_strm_dout fifo_data_in 0 64 }  { w_strm_empty_n fifo_status 0 1 }  { w_strm_read fifo_port_we 1 1 }  { w_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { w_strm_fifo_cap fifo_update 0 6 } } }
	add_ln7788_out { ap_vld {  { add_ln7788_out out_data 1 64 }  { add_ln7788_out_ap_vld out_vld 1 1 } } }
	add_ln7797_out { ap_vld {  { add_ln7797_out out_data 1 64 }  { add_ln7797_out_ap_vld out_vld 1 1 } } }
	add_ln7806_out { ap_vld {  { add_ln7806_out out_data 1 64 }  { add_ln7806_out_ap_vld out_vld 1 1 } } }
	add_ln7815_out { ap_vld {  { add_ln7815_out out_data 1 64 }  { add_ln7815_out_ap_vld out_vld 1 1 } } }
}
