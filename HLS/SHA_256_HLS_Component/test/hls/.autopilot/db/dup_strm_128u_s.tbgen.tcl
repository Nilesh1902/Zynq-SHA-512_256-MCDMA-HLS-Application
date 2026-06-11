set moduleName dup_strm_128u_s
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
set C_modelName {dup_strm<128u>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ nblk_strm int 128 regular {fifo 0 volatile }  }
	{ end_nblk_strm int 1 regular {fifo 0 volatile }  }
	{ nblk_strm1 int 128 regular {fifo 1 volatile }  }
	{ end_nblk_strm1 int 1 regular {fifo 1 volatile }  }
	{ nblk_strm2 int 128 regular {fifo 1 volatile }  }
	{ end_nblk_strm2 int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "nblk_strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "end_nblk_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "nblk_strm1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_nblk_strm1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblk_strm2", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_nblk_strm2", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
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
	{ nblk_strm_dout sc_in sc_lv 128 signal 0 } 
	{ nblk_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ nblk_strm_read sc_out sc_logic 1 signal 0 } 
	{ nblk_strm_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ nblk_strm_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ end_nblk_strm_dout sc_in sc_lv 1 signal 1 } 
	{ end_nblk_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ end_nblk_strm_read sc_out sc_logic 1 signal 1 } 
	{ end_nblk_strm_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ end_nblk_strm_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ nblk_strm1_din sc_out sc_lv 128 signal 2 } 
	{ nblk_strm1_full_n sc_in sc_logic 1 signal 2 } 
	{ nblk_strm1_write sc_out sc_logic 1 signal 2 } 
	{ nblk_strm1_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ nblk_strm1_fifo_cap sc_in sc_lv 32 signal 2 } 
	{ end_nblk_strm1_din sc_out sc_lv 1 signal 3 } 
	{ end_nblk_strm1_full_n sc_in sc_logic 1 signal 3 } 
	{ end_nblk_strm1_write sc_out sc_logic 1 signal 3 } 
	{ end_nblk_strm1_num_data_valid sc_in sc_lv 32 signal 3 } 
	{ end_nblk_strm1_fifo_cap sc_in sc_lv 32 signal 3 } 
	{ nblk_strm2_din sc_out sc_lv 128 signal 4 } 
	{ nblk_strm2_full_n sc_in sc_logic 1 signal 4 } 
	{ nblk_strm2_write sc_out sc_logic 1 signal 4 } 
	{ nblk_strm2_num_data_valid sc_in sc_lv 32 signal 4 } 
	{ nblk_strm2_fifo_cap sc_in sc_lv 32 signal 4 } 
	{ end_nblk_strm2_din sc_out sc_lv 1 signal 5 } 
	{ end_nblk_strm2_full_n sc_in sc_logic 1 signal 5 } 
	{ end_nblk_strm2_write sc_out sc_logic 1 signal 5 } 
	{ end_nblk_strm2_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ end_nblk_strm2_fifo_cap sc_in sc_lv 32 signal 5 } 
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
 	{ "name": "nblk_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "nblk_strm", "role": "dout" }} , 
 	{ "name": "nblk_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "empty_n" }} , 
 	{ "name": "nblk_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "read" }} , 
 	{ "name": "nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "dout" }} , 
 	{ "name": "end_nblk_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "empty_n" }} , 
 	{ "name": "end_nblk_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "read" }} , 
 	{ "name": "end_nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "fifo_cap" }} , 
 	{ "name": "nblk_strm1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "din" }} , 
 	{ "name": "nblk_strm1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "full_n" }} , 
 	{ "name": "nblk_strm1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "write" }} , 
 	{ "name": "nblk_strm1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "din" }} , 
 	{ "name": "end_nblk_strm1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "full_n" }} , 
 	{ "name": "end_nblk_strm1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "write" }} , 
 	{ "name": "end_nblk_strm1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "fifo_cap" }} , 
 	{ "name": "nblk_strm2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "din" }} , 
 	{ "name": "nblk_strm2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "full_n" }} , 
 	{ "name": "nblk_strm2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "write" }} , 
 	{ "name": "nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "din" }} , 
 	{ "name": "end_nblk_strm2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "full_n" }} , 
 	{ "name": "end_nblk_strm2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "write" }} , 
 	{ "name": "end_nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dup_strm_128u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "end_nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "end_nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "end_nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dup_strm_128u_Pipeline_LOOP_DUP_STREAM",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_DUP_STREAM", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dup_strm_128u_s {
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm {Type I LastRead 0 FirstWrite -1}
		nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm2 {Type O LastRead -1 FirstWrite 1}}
	dup_strm_128u_Pipeline_LOOP_DUP_STREAM {
		e {Type I LastRead 0 FirstWrite -1}
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nblk_strm { ap_fifo {  { nblk_strm_dout fifo_data_in 0 128 }  { nblk_strm_empty_n fifo_status 0 1 }  { nblk_strm_read fifo_port_we 1 1 }  { nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm_fifo_cap fifo_update 0 6 } } }
	end_nblk_strm { ap_fifo {  { end_nblk_strm_dout fifo_data_in 0 1 }  { end_nblk_strm_empty_n fifo_status 0 1 }  { end_nblk_strm_read fifo_port_we 1 1 }  { end_nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm_fifo_cap fifo_update 0 6 } } }
	nblk_strm1 { ap_fifo {  { nblk_strm1_din fifo_data_in 1 128 }  { nblk_strm1_full_n fifo_status 0 1 }  { nblk_strm1_write fifo_port_we 1 1 }  { nblk_strm1_num_data_valid fifo_status_num_data_valid 0 32 }  { nblk_strm1_fifo_cap fifo_update 0 32 } } }
	end_nblk_strm1 { ap_fifo {  { end_nblk_strm1_din fifo_data_in 1 1 }  { end_nblk_strm1_full_n fifo_status 0 1 }  { end_nblk_strm1_write fifo_port_we 1 1 }  { end_nblk_strm1_num_data_valid fifo_status_num_data_valid 0 32 }  { end_nblk_strm1_fifo_cap fifo_update 0 32 } } }
	nblk_strm2 { ap_fifo {  { nblk_strm2_din fifo_data_in 1 128 }  { nblk_strm2_full_n fifo_status 0 1 }  { nblk_strm2_write fifo_port_we 1 1 }  { nblk_strm2_num_data_valid fifo_status_num_data_valid 0 32 }  { nblk_strm2_fifo_cap fifo_update 0 32 } } }
	end_nblk_strm2 { ap_fifo {  { end_nblk_strm2_din fifo_data_in 1 1 }  { end_nblk_strm2_full_n fifo_status 0 1 }  { end_nblk_strm2_write fifo_port_we 1 1 }  { end_nblk_strm2_num_data_valid fifo_status_num_data_valid 0 32 }  { end_nblk_strm2_fifo_cap fifo_update 0 32 } } }
}
