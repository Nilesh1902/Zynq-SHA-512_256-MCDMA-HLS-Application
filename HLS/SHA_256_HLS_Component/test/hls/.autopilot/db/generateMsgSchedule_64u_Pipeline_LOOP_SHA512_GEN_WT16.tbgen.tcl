set moduleName generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16
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
set C_modelName {generateMsgSchedule<64u>_Pipeline_LOOP_SHA512_GEN_WT16}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ w_strm int 64 regular {fifo 1 volatile }  }
	{ empty int 64 regular  }
	{ blk_1 int 64 regular  }
	{ blk_2 int 64 regular  }
	{ blk_3 int 64 regular  }
	{ blk_4 int 64 regular  }
	{ blk_5 int 64 regular  }
	{ blk_6 int 64 regular  }
	{ blk_7 int 64 regular  }
	{ blk_8 int 64 regular  }
	{ blk_9 int 64 regular  }
	{ blk_15 int 64 regular  }
	{ blk_10 int 64 regular  }
	{ blk_11 int 64 regular  }
	{ blk_12 int 64 regular  }
	{ blk_13 int 64 regular  }
	{ blk_14 int 64 regular  }
	{ W_15_out int 64 regular {pointer 1}  }
	{ W_14_out int 64 regular {pointer 1}  }
	{ W_13_out int 64 regular {pointer 1}  }
	{ W_12_out int 64 regular {pointer 1}  }
	{ W_11_out int 64 regular {pointer 1}  }
	{ W_10_out int 64 regular {pointer 1}  }
	{ W_9_out int 64 regular {pointer 1}  }
	{ W_8_out int 64 regular {pointer 1}  }
	{ W_7_out int 64 regular {pointer 1}  }
	{ W_6_out int 64 regular {pointer 1}  }
	{ W_5_out int 64 regular {pointer 1}  }
	{ W_4_out int 64 regular {pointer 1}  }
	{ W_3_out int 64 regular {pointer 1}  }
	{ W_2_out int 64 regular {pointer 1}  }
	{ W_1_out int 64 regular {pointer 1}  }
	{ W_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_4", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_6", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_8", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_9", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_15", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_10", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_12", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_13", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "blk_14", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "W_15_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_14_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_13_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_12_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_11_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_10_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_9_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_8_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_7_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_6_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_5_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_4_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_3_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_strm_din sc_out sc_lv 64 signal 0 } 
	{ w_strm_full_n sc_in sc_logic 1 signal 0 } 
	{ w_strm_write sc_out sc_logic 1 signal 0 } 
	{ w_strm_num_data_valid sc_in sc_lv 32 signal 0 } 
	{ w_strm_fifo_cap sc_in sc_lv 32 signal 0 } 
	{ empty sc_in sc_lv 64 signal 1 } 
	{ blk_1 sc_in sc_lv 64 signal 2 } 
	{ blk_2 sc_in sc_lv 64 signal 3 } 
	{ blk_3 sc_in sc_lv 64 signal 4 } 
	{ blk_4 sc_in sc_lv 64 signal 5 } 
	{ blk_5 sc_in sc_lv 64 signal 6 } 
	{ blk_6 sc_in sc_lv 64 signal 7 } 
	{ blk_7 sc_in sc_lv 64 signal 8 } 
	{ blk_8 sc_in sc_lv 64 signal 9 } 
	{ blk_9 sc_in sc_lv 64 signal 10 } 
	{ blk_15 sc_in sc_lv 64 signal 11 } 
	{ blk_10 sc_in sc_lv 64 signal 12 } 
	{ blk_11 sc_in sc_lv 64 signal 13 } 
	{ blk_12 sc_in sc_lv 64 signal 14 } 
	{ blk_13 sc_in sc_lv 64 signal 15 } 
	{ blk_14 sc_in sc_lv 64 signal 16 } 
	{ W_15_out sc_out sc_lv 64 signal 17 } 
	{ W_15_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ W_14_out sc_out sc_lv 64 signal 18 } 
	{ W_14_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ W_13_out sc_out sc_lv 64 signal 19 } 
	{ W_13_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ W_12_out sc_out sc_lv 64 signal 20 } 
	{ W_12_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ W_11_out sc_out sc_lv 64 signal 21 } 
	{ W_11_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ W_10_out sc_out sc_lv 64 signal 22 } 
	{ W_10_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ W_9_out sc_out sc_lv 64 signal 23 } 
	{ W_9_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ W_8_out sc_out sc_lv 64 signal 24 } 
	{ W_8_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ W_7_out sc_out sc_lv 64 signal 25 } 
	{ W_7_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ W_6_out sc_out sc_lv 64 signal 26 } 
	{ W_6_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ W_5_out sc_out sc_lv 64 signal 27 } 
	{ W_5_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ W_4_out sc_out sc_lv 64 signal 28 } 
	{ W_4_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ W_3_out sc_out sc_lv 64 signal 29 } 
	{ W_3_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ W_2_out sc_out sc_lv 64 signal 30 } 
	{ W_2_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ W_1_out sc_out sc_lv 64 signal 31 } 
	{ W_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ W_out sc_out sc_lv 64 signal 32 } 
	{ W_out_ap_vld sc_out sc_logic 1 outvld 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_strm", "role": "din" }} , 
 	{ "name": "w_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "full_n" }} , 
 	{ "name": "w_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "write" }} , 
 	{ "name": "w_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_strm", "role": "num_data_valid" }} , 
 	{ "name": "w_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_strm", "role": "fifo_cap" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "blk_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_1", "role": "default" }} , 
 	{ "name": "blk_2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_2", "role": "default" }} , 
 	{ "name": "blk_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_3", "role": "default" }} , 
 	{ "name": "blk_4", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_4", "role": "default" }} , 
 	{ "name": "blk_5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_5", "role": "default" }} , 
 	{ "name": "blk_6", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_6", "role": "default" }} , 
 	{ "name": "blk_7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_7", "role": "default" }} , 
 	{ "name": "blk_8", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_8", "role": "default" }} , 
 	{ "name": "blk_9", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_9", "role": "default" }} , 
 	{ "name": "blk_15", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_15", "role": "default" }} , 
 	{ "name": "blk_10", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_10", "role": "default" }} , 
 	{ "name": "blk_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_11", "role": "default" }} , 
 	{ "name": "blk_12", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_12", "role": "default" }} , 
 	{ "name": "blk_13", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_13", "role": "default" }} , 
 	{ "name": "blk_14", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blk_14", "role": "default" }} , 
 	{ "name": "W_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_15_out", "role": "default" }} , 
 	{ "name": "W_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_15_out", "role": "ap_vld" }} , 
 	{ "name": "W_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_14_out", "role": "default" }} , 
 	{ "name": "W_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_14_out", "role": "ap_vld" }} , 
 	{ "name": "W_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_13_out", "role": "default" }} , 
 	{ "name": "W_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_13_out", "role": "ap_vld" }} , 
 	{ "name": "W_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_12_out", "role": "default" }} , 
 	{ "name": "W_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_12_out", "role": "ap_vld" }} , 
 	{ "name": "W_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_11_out", "role": "default" }} , 
 	{ "name": "W_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_11_out", "role": "ap_vld" }} , 
 	{ "name": "W_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_10_out", "role": "default" }} , 
 	{ "name": "W_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_10_out", "role": "ap_vld" }} , 
 	{ "name": "W_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_9_out", "role": "default" }} , 
 	{ "name": "W_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_9_out", "role": "ap_vld" }} , 
 	{ "name": "W_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_8_out", "role": "default" }} , 
 	{ "name": "W_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_8_out", "role": "ap_vld" }} , 
 	{ "name": "W_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_7_out", "role": "default" }} , 
 	{ "name": "W_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_7_out", "role": "ap_vld" }} , 
 	{ "name": "W_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_6_out", "role": "default" }} , 
 	{ "name": "W_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_6_out", "role": "ap_vld" }} , 
 	{ "name": "W_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_5_out", "role": "default" }} , 
 	{ "name": "W_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_5_out", "role": "ap_vld" }} , 
 	{ "name": "W_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_4_out", "role": "default" }} , 
 	{ "name": "W_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_4_out", "role": "ap_vld" }} , 
 	{ "name": "W_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_3_out", "role": "default" }} , 
 	{ "name": "W_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_3_out", "role": "ap_vld" }} , 
 	{ "name": "W_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_2_out", "role": "default" }} , 
 	{ "name": "W_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_2_out", "role": "ap_vld" }} , 
 	{ "name": "W_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_1_out", "role": "default" }} , 
 	{ "name": "W_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_1_out", "role": "ap_vld" }} , 
 	{ "name": "W_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_out", "role": "default" }} , 
 	{ "name": "W_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "w_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_SHA512_GEN_WT16", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_64_1_1_U63", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16 {
		w_strm {Type O LastRead -1 FirstWrite 1}
		empty {Type I LastRead 0 FirstWrite -1}
		blk_1 {Type I LastRead 0 FirstWrite -1}
		blk_2 {Type I LastRead 0 FirstWrite -1}
		blk_3 {Type I LastRead 0 FirstWrite -1}
		blk_4 {Type I LastRead 0 FirstWrite -1}
		blk_5 {Type I LastRead 0 FirstWrite -1}
		blk_6 {Type I LastRead 0 FirstWrite -1}
		blk_7 {Type I LastRead 0 FirstWrite -1}
		blk_8 {Type I LastRead 0 FirstWrite -1}
		blk_9 {Type I LastRead 0 FirstWrite -1}
		blk_15 {Type I LastRead 0 FirstWrite -1}
		blk_10 {Type I LastRead 0 FirstWrite -1}
		blk_11 {Type I LastRead 0 FirstWrite -1}
		blk_12 {Type I LastRead 0 FirstWrite -1}
		blk_13 {Type I LastRead 0 FirstWrite -1}
		blk_14 {Type I LastRead 0 FirstWrite -1}
		W_15_out {Type O LastRead -1 FirstWrite 0}
		W_14_out {Type O LastRead -1 FirstWrite 0}
		W_13_out {Type O LastRead -1 FirstWrite 0}
		W_12_out {Type O LastRead -1 FirstWrite 0}
		W_11_out {Type O LastRead -1 FirstWrite 0}
		W_10_out {Type O LastRead -1 FirstWrite 0}
		W_9_out {Type O LastRead -1 FirstWrite 0}
		W_8_out {Type O LastRead -1 FirstWrite 0}
		W_7_out {Type O LastRead -1 FirstWrite 0}
		W_6_out {Type O LastRead -1 FirstWrite 0}
		W_5_out {Type O LastRead -1 FirstWrite 0}
		W_4_out {Type O LastRead -1 FirstWrite 0}
		W_3_out {Type O LastRead -1 FirstWrite 0}
		W_2_out {Type O LastRead -1 FirstWrite 0}
		W_1_out {Type O LastRead -1 FirstWrite 0}
		W_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w_strm { ap_fifo {  { w_strm_din fifo_data_in 1 64 }  { w_strm_full_n fifo_status 0 1 }  { w_strm_write fifo_port_we 1 1 }  { w_strm_num_data_valid fifo_status_num_data_valid 0 32 }  { w_strm_fifo_cap fifo_update 0 32 } } }
	empty { ap_none {  { empty in_data 0 64 } } }
	blk_1 { ap_none {  { blk_1 in_data 0 64 } } }
	blk_2 { ap_none {  { blk_2 in_data 0 64 } } }
	blk_3 { ap_none {  { blk_3 in_data 0 64 } } }
	blk_4 { ap_none {  { blk_4 in_data 0 64 } } }
	blk_5 { ap_none {  { blk_5 in_data 0 64 } } }
	blk_6 { ap_none {  { blk_6 in_data 0 64 } } }
	blk_7 { ap_none {  { blk_7 in_data 0 64 } } }
	blk_8 { ap_none {  { blk_8 in_data 0 64 } } }
	blk_9 { ap_none {  { blk_9 in_data 0 64 } } }
	blk_15 { ap_none {  { blk_15 in_data 0 64 } } }
	blk_10 { ap_none {  { blk_10 in_data 0 64 } } }
	blk_11 { ap_none {  { blk_11 in_data 0 64 } } }
	blk_12 { ap_none {  { blk_12 in_data 0 64 } } }
	blk_13 { ap_none {  { blk_13 in_data 0 64 } } }
	blk_14 { ap_none {  { blk_14 in_data 0 64 } } }
	W_15_out { ap_vld {  { W_15_out out_data 1 64 }  { W_15_out_ap_vld out_vld 1 1 } } }
	W_14_out { ap_vld {  { W_14_out out_data 1 64 }  { W_14_out_ap_vld out_vld 1 1 } } }
	W_13_out { ap_vld {  { W_13_out out_data 1 64 }  { W_13_out_ap_vld out_vld 1 1 } } }
	W_12_out { ap_vld {  { W_12_out out_data 1 64 }  { W_12_out_ap_vld out_vld 1 1 } } }
	W_11_out { ap_vld {  { W_11_out out_data 1 64 }  { W_11_out_ap_vld out_vld 1 1 } } }
	W_10_out { ap_vld {  { W_10_out out_data 1 64 }  { W_10_out_ap_vld out_vld 1 1 } } }
	W_9_out { ap_vld {  { W_9_out out_data 1 64 }  { W_9_out_ap_vld out_vld 1 1 } } }
	W_8_out { ap_vld {  { W_8_out out_data 1 64 }  { W_8_out_ap_vld out_vld 1 1 } } }
	W_7_out { ap_vld {  { W_7_out out_data 1 64 }  { W_7_out_ap_vld out_vld 1 1 } } }
	W_6_out { ap_vld {  { W_6_out out_data 1 64 }  { W_6_out_ap_vld out_vld 1 1 } } }
	W_5_out { ap_vld {  { W_5_out out_data 1 64 }  { W_5_out_ap_vld out_vld 1 1 } } }
	W_4_out { ap_vld {  { W_4_out out_data 1 64 }  { W_4_out_ap_vld out_vld 1 1 } } }
	W_3_out { ap_vld {  { W_3_out out_data 1 64 }  { W_3_out_ap_vld out_vld 1 1 } } }
	W_2_out { ap_vld {  { W_2_out out_data 1 64 }  { W_2_out_ap_vld out_vld 1 1 } } }
	W_1_out { ap_vld {  { W_1_out out_data 1 64 }  { W_1_out_ap_vld out_vld 1 1 } } }
	W_out { ap_vld {  { W_out out_data 1 64 }  { W_out_ap_vld out_vld 1 1 } } }
}
