set moduleName SHA512Digest_64u_256u_s
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
set C_modelName {SHA512Digest<64u, 256u>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ w_strm int 64 regular {fifo 0 volatile }  }
	{ nblk_strm2 int 128 regular {fifo 0 volatile }  }
	{ end_nblk_strm2 int 1 regular {fifo 0 volatile }  }
	{ core_digest_strm int 256 regular {fifo 1 volatile }  }
	{ core_end_digest_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "nblk_strm2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "end_nblk_strm2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "core_digest_strm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "core_end_digest_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_strm_dout sc_in sc_lv 64 signal 0 } 
	{ w_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ w_strm_read sc_out sc_logic 1 signal 0 } 
	{ w_strm_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ w_strm_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ nblk_strm2_dout sc_in sc_lv 128 signal 1 } 
	{ nblk_strm2_empty_n sc_in sc_logic 1 signal 1 } 
	{ nblk_strm2_read sc_out sc_logic 1 signal 1 } 
	{ nblk_strm2_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ nblk_strm2_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ end_nblk_strm2_dout sc_in sc_lv 1 signal 2 } 
	{ end_nblk_strm2_empty_n sc_in sc_logic 1 signal 2 } 
	{ end_nblk_strm2_read sc_out sc_logic 1 signal 2 } 
	{ end_nblk_strm2_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ end_nblk_strm2_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ core_digest_strm_din sc_out sc_lv 256 signal 3 } 
	{ core_digest_strm_full_n sc_in sc_logic 1 signal 3 } 
	{ core_digest_strm_write sc_out sc_logic 1 signal 3 } 
	{ core_digest_strm_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ core_digest_strm_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ core_end_digest_strm_din sc_out sc_lv 1 signal 4 } 
	{ core_end_digest_strm_full_n sc_in sc_logic 1 signal 4 } 
	{ core_end_digest_strm_write sc_out sc_logic 1 signal 4 } 
	{ core_end_digest_strm_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ core_end_digest_strm_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_strm", "role": "dout" }} , 
 	{ "name": "w_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "empty_n" }} , 
 	{ "name": "w_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "read" }} , 
 	{ "name": "w_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "num_data_valid" }} , 
 	{ "name": "w_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "fifo_cap" }} , 
 	{ "name": "nblk_strm2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "dout" }} , 
 	{ "name": "nblk_strm2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "empty_n" }} , 
 	{ "name": "nblk_strm2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "read" }} , 
 	{ "name": "nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "dout" }} , 
 	{ "name": "end_nblk_strm2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "empty_n" }} , 
 	{ "name": "end_nblk_strm2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "read" }} , 
 	{ "name": "end_nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "fifo_cap" }} , 
 	{ "name": "core_digest_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "din" }} , 
 	{ "name": "core_digest_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "full_n" }} , 
 	{ "name": "core_digest_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "write" }} , 
 	{ "name": "core_digest_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_digest_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_digest_strm", "role": "fifo_cap" }} , 
 	{ "name": "core_end_digest_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "din" }} , 
 	{ "name": "core_end_digest_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "full_n" }} , 
 	{ "name": "core_end_digest_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "write" }} , 
 	{ "name": "core_end_digest_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "num_data_valid" }} , 
 	{ "name": "core_end_digest_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "core_end_digest_strm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "SHA512Digest_64u_256u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "87", "EstimateLatencyMax" : "87",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145", "Port" : "w_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "core_digest_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "core_digest_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "core_end_digest_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "core_end_digest_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA1_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145.sparsemux_161_7_64_1_1_U119", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	SHA512Digest_64u_256u_s {
		w_strm {Type I LastRead 2 FirstWrite -1}
		nblk_strm2 {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm2 {Type I LastRead 4 FirstWrite -1}
		core_digest_strm {Type O LastRead -1 FirstWrite 4}
		core_end_digest_strm {Type O LastRead -1 FirstWrite 1}}
	SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS {
		mul_ln685 {Type I LastRead 0 FirstWrite -1}
		w_strm {Type I LastRead 2 FirstWrite -1}
		add_ln7788_out {Type O LastRead -1 FirstWrite 1}
		add_ln7797_out {Type O LastRead -1 FirstWrite 1}
		add_ln7806_out {Type O LastRead -1 FirstWrite 1}
		add_ln7815_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "87", "Max" : "87"}
	, {"Name" : "Interval", "Min" : "87", "Max" : "87"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_strm { ap_fifo {  { w_strm_dout fifo_data_in 0 64 }  { w_strm_empty_n fifo_status 0 1 }  { w_strm_read fifo_port_we 1 1 }  { w_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { w_strm_fifo_cap fifo_update 0 6 } } }
	nblk_strm2 { ap_fifo {  { nblk_strm2_dout fifo_data_in 0 128 }  { nblk_strm2_empty_n fifo_status 0 1 }  { nblk_strm2_read fifo_port_we 1 1 }  { nblk_strm2_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm2_fifo_cap fifo_update 0 6 } } }
	end_nblk_strm2 { ap_fifo {  { end_nblk_strm2_dout fifo_data_in 0 1 }  { end_nblk_strm2_empty_n fifo_status 0 1 }  { end_nblk_strm2_read fifo_port_we 1 1 }  { end_nblk_strm2_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm2_fifo_cap fifo_update 0 6 } } }
	core_digest_strm { ap_fifo {  { core_digest_strm_din fifo_data_in 1 256 }  { core_digest_strm_full_n fifo_status 0 1 }  { core_digest_strm_write fifo_port_we 1 1 }  { core_digest_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { core_digest_strm_fifo_cap fifo_update 0 3 } } }
	core_end_digest_strm { ap_fifo {  { core_end_digest_strm_din fifo_data_in 1 1 }  { core_end_digest_strm_full_n fifo_status 0 1 }  { core_end_digest_strm_write fifo_port_we 1 1 }  { core_end_digest_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { core_end_digest_strm_fifo_cap fifo_update 0 3 } } }
}
