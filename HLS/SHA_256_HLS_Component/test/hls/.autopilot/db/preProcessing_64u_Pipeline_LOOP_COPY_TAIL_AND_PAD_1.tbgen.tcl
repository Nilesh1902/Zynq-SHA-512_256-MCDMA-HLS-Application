set moduleName preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1
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
set C_modelName {preProcessing<64u>_Pipeline_LOOP_COPY_TAIL_AND_PAD_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ core_msg_strm int 64 regular {fifo 0 volatile }  }
	{ shr_i2380_cast int 4 regular  }
	{ len int 3 regular  }
	{ b_13_out int 64 regular {pointer 1}  }
	{ b_12_out int 64 regular {pointer 1}  }
	{ b_11_out int 64 regular {pointer 1}  }
	{ b_10_out int 64 regular {pointer 1}  }
	{ b_9_out int 64 regular {pointer 1}  }
	{ b_8_out int 64 regular {pointer 1}  }
	{ b_7_out int 64 regular {pointer 1}  }
	{ b_6_out int 64 regular {pointer 1}  }
	{ b_5_out int 64 regular {pointer 1}  }
	{ b_4_out int 64 regular {pointer 1}  }
	{ b_3_out int 64 regular {pointer 1}  }
	{ b_2_out int 64 regular {pointer 1}  }
	{ b_1_out int 64 regular {pointer 1}  }
	{ b_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "core_msg_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "shr_i2380_cast", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "b_13_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_12_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_11_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_10_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_9_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_8_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_7_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_6_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_5_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_4_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_3_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ core_msg_strm_dout sc_in sc_lv 64 signal 0 } 
	{ core_msg_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ core_msg_strm_read sc_out sc_logic 1 signal 0 } 
	{ core_msg_strm_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ core_msg_strm_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ shr_i2380_cast sc_in sc_lv 4 signal 1 } 
	{ len sc_in sc_lv 3 signal 2 } 
	{ b_13_out sc_out sc_lv 64 signal 3 } 
	{ b_13_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ b_12_out sc_out sc_lv 64 signal 4 } 
	{ b_12_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ b_11_out sc_out sc_lv 64 signal 5 } 
	{ b_11_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ b_10_out sc_out sc_lv 64 signal 6 } 
	{ b_10_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ b_9_out sc_out sc_lv 64 signal 7 } 
	{ b_9_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ b_8_out sc_out sc_lv 64 signal 8 } 
	{ b_8_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ b_7_out sc_out sc_lv 64 signal 9 } 
	{ b_7_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ b_6_out sc_out sc_lv 64 signal 10 } 
	{ b_6_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ b_5_out sc_out sc_lv 64 signal 11 } 
	{ b_5_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ b_4_out sc_out sc_lv 64 signal 12 } 
	{ b_4_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ b_3_out sc_out sc_lv 64 signal 13 } 
	{ b_3_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ b_2_out sc_out sc_lv 64 signal 14 } 
	{ b_2_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ b_1_out sc_out sc_lv 64 signal 15 } 
	{ b_1_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ b_out sc_out sc_lv 64 signal 16 } 
	{ b_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "core_msg_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "dout" }} , 
 	{ "name": "core_msg_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "empty_n" }} , 
 	{ "name": "core_msg_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "read" }} , 
 	{ "name": "core_msg_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_msg_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "core_msg_strm", "role": "fifo_cap" }} , 
 	{ "name": "shr_i2380_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "shr_i2380_cast", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "b_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_13_out", "role": "default" }} , 
 	{ "name": "b_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_13_out", "role": "ap_vld" }} , 
 	{ "name": "b_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_12_out", "role": "default" }} , 
 	{ "name": "b_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_12_out", "role": "ap_vld" }} , 
 	{ "name": "b_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_11_out", "role": "default" }} , 
 	{ "name": "b_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_11_out", "role": "ap_vld" }} , 
 	{ "name": "b_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_10_out", "role": "default" }} , 
 	{ "name": "b_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_10_out", "role": "ap_vld" }} , 
 	{ "name": "b_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_9_out", "role": "default" }} , 
 	{ "name": "b_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_9_out", "role": "ap_vld" }} , 
 	{ "name": "b_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_8_out", "role": "default" }} , 
 	{ "name": "b_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_8_out", "role": "ap_vld" }} , 
 	{ "name": "b_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_7_out", "role": "default" }} , 
 	{ "name": "b_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_7_out", "role": "ap_vld" }} , 
 	{ "name": "b_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_6_out", "role": "default" }} , 
 	{ "name": "b_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_6_out", "role": "ap_vld" }} , 
 	{ "name": "b_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_5_out", "role": "default" }} , 
 	{ "name": "b_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_5_out", "role": "ap_vld" }} , 
 	{ "name": "b_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_4_out", "role": "default" }} , 
 	{ "name": "b_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_4_out", "role": "ap_vld" }} , 
 	{ "name": "b_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_3_out", "role": "default" }} , 
 	{ "name": "b_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_3_out", "role": "ap_vld" }} , 
 	{ "name": "b_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_2_out", "role": "default" }} , 
 	{ "name": "b_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_2_out", "role": "ap_vld" }} , 
 	{ "name": "b_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_1_out", "role": "default" }} , 
 	{ "name": "b_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_1_out", "role": "ap_vld" }} , 
 	{ "name": "b_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_out", "role": "default" }} , 
 	{ "name": "b_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "core_msg_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shr_i2380_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_COPY_TAIL_AND_PAD_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1 {
		core_msg_strm {Type I LastRead 1 FirstWrite -1}
		shr_i2380_cast {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		b_13_out {Type O LastRead -1 FirstWrite 0}
		b_12_out {Type O LastRead -1 FirstWrite 0}
		b_11_out {Type O LastRead -1 FirstWrite 0}
		b_10_out {Type O LastRead -1 FirstWrite 0}
		b_9_out {Type O LastRead -1 FirstWrite 0}
		b_8_out {Type O LastRead -1 FirstWrite 0}
		b_7_out {Type O LastRead -1 FirstWrite 0}
		b_6_out {Type O LastRead -1 FirstWrite 0}
		b_5_out {Type O LastRead -1 FirstWrite 0}
		b_4_out {Type O LastRead -1 FirstWrite 0}
		b_3_out {Type O LastRead -1 FirstWrite 0}
		b_2_out {Type O LastRead -1 FirstWrite 0}
		b_1_out {Type O LastRead -1 FirstWrite 0}
		b_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	core_msg_strm { ap_fifo {  { core_msg_strm_dout fifo_data_in 0 64 }  { core_msg_strm_empty_n fifo_status 0 1 }  { core_msg_strm_read fifo_port_we 1 1 }  { core_msg_strm_num_data_valid fifo_status_num_data_valid 0 7 }  { core_msg_strm_fifo_cap fifo_update 0 7 } } }
	shr_i2380_cast { ap_none {  { shr_i2380_cast in_data 0 4 } } }
	len { ap_none {  { len in_data 0 3 } } }
	b_13_out { ap_vld {  { b_13_out out_data 1 64 }  { b_13_out_ap_vld out_vld 1 1 } } }
	b_12_out { ap_vld {  { b_12_out out_data 1 64 }  { b_12_out_ap_vld out_vld 1 1 } } }
	b_11_out { ap_vld {  { b_11_out out_data 1 64 }  { b_11_out_ap_vld out_vld 1 1 } } }
	b_10_out { ap_vld {  { b_10_out out_data 1 64 }  { b_10_out_ap_vld out_vld 1 1 } } }
	b_9_out { ap_vld {  { b_9_out out_data 1 64 }  { b_9_out_ap_vld out_vld 1 1 } } }
	b_8_out { ap_vld {  { b_8_out out_data 1 64 }  { b_8_out_ap_vld out_vld 1 1 } } }
	b_7_out { ap_vld {  { b_7_out out_data 1 64 }  { b_7_out_ap_vld out_vld 1 1 } } }
	b_6_out { ap_vld {  { b_6_out out_data 1 64 }  { b_6_out_ap_vld out_vld 1 1 } } }
	b_5_out { ap_vld {  { b_5_out out_data 1 64 }  { b_5_out_ap_vld out_vld 1 1 } } }
	b_4_out { ap_vld {  { b_4_out out_data 1 64 }  { b_4_out_ap_vld out_vld 1 1 } } }
	b_3_out { ap_vld {  { b_3_out out_data 1 64 }  { b_3_out_ap_vld out_vld 1 1 } } }
	b_2_out { ap_vld {  { b_2_out out_data 1 64 }  { b_2_out_ap_vld out_vld 1 1 } } }
	b_1_out { ap_vld {  { b_1_out out_data 1 64 }  { b_1_out_ap_vld out_vld 1 1 } } }
	b_out { ap_vld {  { b_out out_data 1 64 }  { b_out_ap_vld out_vld 1 1 } } }
}
