set moduleName test
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
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
set C_modelName {test}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ msg_strm_V_data_V int 64 regular {axi_s 0 volatile  { msg_strm Data } }  }
	{ msg_strm_V_keep_V int 8 regular {axi_s 0 volatile  { msg_strm Keep } }  }
	{ msg_strm_V_strb_V int 8 regular {axi_s 0 volatile  { msg_strm Strb } }  }
	{ msg_strm_V_last_V int 1 regular {axi_s 0 volatile  { msg_strm Last } }  }
	{ msg_strm_V_dest_V int 3 regular {axi_s 0 volatile  { msg_strm Dest } }  }
	{ digest_strm_V_data_V int 256 regular {axi_s 1 volatile  { digest_strm Data } }  }
	{ digest_strm_V_keep_V int 32 regular {axi_s 1 volatile  { digest_strm Keep } }  }
	{ digest_strm_V_strb_V int 32 regular {axi_s 1 volatile  { digest_strm Strb } }  }
	{ digest_strm_V_last_V int 1 regular {axi_s 1 volatile  { digest_strm Last } }  }
	{ digest_strm_V_dest_V int 3 regular {axi_s 1 volatile  { digest_strm Dest } }  }
	{ msg_len int 128 regular {axi_slave 0}  }
	{ dest_id int 2 regular {axi_slave 0}  }
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
 	{ "Name" : "digest_strm_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "digest_strm_V_dest_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "msg_len", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 128, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":35}} , 
 	{ "Name" : "dest_id", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 2, "direction" : "READONLY", "offset" : {"in":36}, "offset_end" : {"in":43}} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ msg_strm_TDATA sc_in sc_lv 64 signal 0 } 
	{ msg_strm_TKEEP sc_in sc_lv 8 signal 1 } 
	{ msg_strm_TSTRB sc_in sc_lv 8 signal 2 } 
	{ msg_strm_TLAST sc_in sc_lv 1 signal 3 } 
	{ msg_strm_TDEST sc_in sc_lv 3 signal 4 } 
	{ digest_strm_TDATA sc_out sc_lv 256 signal 5 } 
	{ digest_strm_TKEEP sc_out sc_lv 32 signal 6 } 
	{ digest_strm_TSTRB sc_out sc_lv 32 signal 7 } 
	{ digest_strm_TLAST sc_out sc_lv 1 signal 8 } 
	{ digest_strm_TDEST sc_out sc_lv 3 signal 9 } 
	{ msg_strm_TVALID sc_in sc_logic 1 invld 4 } 
	{ msg_strm_TREADY sc_out sc_logic 1 inacc 4 } 
	{ digest_strm_TVALID sc_out sc_logic 1 outvld 9 } 
	{ digest_strm_TREADY sc_in sc_logic 1 outacc 9 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"test","role":"start","value":"0","valid_bit":"0"},{"name":"test","role":"continue","value":"0","valid_bit":"4"},{"name":"test","role":"auto_start","value":"0","valid_bit":"7"},{"name":"msg_len","role":"data","value":"16"},{"name":"dest_id","role":"data","value":"36"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"test","role":"start","value":"0","valid_bit":"0"},{"name":"test","role":"done","value":"0","valid_bit":"1"},{"name":"test","role":"idle","value":"0","valid_bit":"2"},{"name":"test","role":"ready","value":"0","valid_bit":"3"},{"name":"test","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "msg_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msg_strm_V_data_V", "role": "default" }} , 
 	{ "name": "msg_strm_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "msg_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "msg_strm_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "msg_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "msg_strm_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "msg_strm_V_last_V", "role": "default" }} , 
 	{ "name": "msg_strm_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msg_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "digest_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "digest_strm_V_data_V", "role": "default" }} , 
 	{ "name": "digest_strm_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "digest_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "digest_strm_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "digest_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "digest_strm_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "digest_strm_V_last_V", "role": "default" }} , 
 	{ "name": "digest_strm_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "digest_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "msg_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "msg_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "msg_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "msg_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "digest_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "digest_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "digest_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "digest_strm_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "11", "42", "50", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "entry_proc_U0"},
			{"ID" : "3", "Name" : "axis_to_core_U0"}],
		"OutputProcess" : [
			{"ID" : "42", "Name" : "core_to_axis_U0"}],
		"Port" : [
			{"Name" : "msg_strm_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis_to_core_U0", "Port" : "msg_strm_V_data_V"}]},
			{"Name" : "msg_strm_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis_to_core_U0", "Port" : "msg_strm_V_keep_V"}]},
			{"Name" : "msg_strm_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis_to_core_U0", "Port" : "msg_strm_V_strb_V"}]},
			{"Name" : "msg_strm_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis_to_core_U0", "Port" : "msg_strm_V_last_V"}]},
			{"Name" : "msg_strm_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis_to_core_U0", "Port" : "msg_strm_V_dest_V"}]},
			{"Name" : "digest_strm_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "core_to_axis_U0", "Port" : "digest_strm_V_data_V"}]},
			{"Name" : "digest_strm_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "core_to_axis_U0", "Port" : "digest_strm_V_keep_V"}]},
			{"Name" : "digest_strm_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "core_to_axis_U0", "Port" : "digest_strm_V_strb_V"}]},
			{"Name" : "digest_strm_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "core_to_axis_U0", "Port" : "digest_strm_V_last_V"}]},
			{"Name" : "digest_strm_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "core_to_axis_U0", "Port" : "digest_strm_V_dest_V"}]},
			{"Name" : "msg_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "dest_id", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dest_id", "Type" : "None", "Direction" : "I"},
			{"Name" : "dest_id_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "50", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dest_id_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0", "Parent" : "0", "Child" : ["4", "6", "7", "8", "9", "10"],
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
					{"ID" : "4", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "msg_strm",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "msg_strm_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "51", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Port" : "core_msg_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "core_len_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "52", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "core_len_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "core_end_len_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "53", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "core_end_len_strm_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0.grp_axis_to_core_Pipeline_FEED_LOOP_fu_85", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0.grp_axis_to_core_Pipeline_FEED_LOOP_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0.regslice_both_msg_strm_V_data_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0.regslice_both_msg_strm_V_keep_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0.regslice_both_msg_strm_V_strb_V_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0.regslice_both_msg_strm_V_last_V_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis_to_core_U0.regslice_both_msg_strm_V_dest_V_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "sha512_t_64u_256u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "112", "EstimateLatencyMax" : "112",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_sha512_t_64u_256u_U0_U",
		"Port" : [
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "51", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha512Top_64u_256u_s_fu_22", "Port" : "core_msg_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "core_len_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "52", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha512Top_64u_256u_s_fu_22", "Port" : "core_len_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "core_end_len_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "53", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha512Top_64u_256u_s_fu_22", "Port" : "core_end_len_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "core_digest_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "54", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha512Top_64u_256u_s_fu_22", "Port" : "core_digest_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "core_end_digest_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "55", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha512Top_64u_256u_s_fu_22", "Port" : "core_end_digest_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22", "Parent" : "11", "Child" : ["13", "18", "21", "27", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "sha512Top_64u_256u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "111", "EstimateLatencyMax" : "111",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "13", "Name" : "preProcessing_64u_U0"}],
		"OutputProcess" : [
			{"ID" : "27", "Name" : "SHA512Digest_64u_256u_U0"}],
		"Port" : [
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "preProcessing_64u_U0", "Port" : "core_msg_strm"}]},
			{"Name" : "core_len_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "preProcessing_64u_U0", "Port" : "core_len_strm"}]},
			{"Name" : "core_end_len_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "preProcessing_64u_U0", "Port" : "core_end_len_strm"}]},
			{"Name" : "core_digest_strm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "SHA512Digest_64u_256u_U0", "Port" : "core_digest_strm"}]},
			{"Name" : "core_end_digest_strm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "SHA512Digest_64u_256u_U0", "Port" : "core_end_digest_strm"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0", "Parent" : "12", "Child" : ["14", "16"],
		"CDFG" : "preProcessing_64u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "42",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "core_msg_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS_fu_334", "Port" : "core_msg_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1_fu_343", "Port" : "core_msg_strm", "Inst_start_state" : "5", "Inst_end_state" : "22"}]},
			{"Name" : "core_len_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "core_len_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "core_end_len_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "core_end_len_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "31", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS_fu_334", "Port" : "blk_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "32", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "33", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_PREPROCESSING_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.grp_preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS_fu_334", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "core_msg_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "core_msg_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_GEN_FULL_BLKS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.grp_preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS_fu_334.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.grp_preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1_fu_343", "Parent" : "13", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.grp_preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1_fu_343.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.dup_strm_128u_U0", "Parent" : "12", "Child" : ["19"],
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
		"StartSource" : "13",
		"StartFifo" : "start_for_dup_strm_128u_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "32", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "33", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "end_nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "34", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "35", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "end_nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "36", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "37", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Port" : "end_nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.dup_strm_128u_U0.grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62", "Parent" : "18", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.dup_strm_128u_U0.grp_dup_strm_128u_Pipeline_LOOP_DUP_STREAM_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0", "Parent" : "12", "Child" : ["22", "25"],
		"CDFG" : "generateMsgSchedule_64u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "92", "EstimateLatencyMax" : "92",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "13",
		"StartFifo" : "start_for_generateMsgSchedule_64u_U0_U",
		"Port" : [
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "31", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "34", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "35", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "38", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16_fu_216", "Port" : "w_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "25", "SubInstance" : "grp_generateMsgSchedule_64u_Pipeline_LOOP_SHA1_GEN_WT64_fu_254", "Port" : "w_strm", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "LOOP_GEN_W_NBLK", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "LOOP_GEN_W_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.grp_generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16_fu_216", "Parent" : "21", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.grp_generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16_fu_216.sparsemux_33_4_64_1_1_U63", "Parent" : "22"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.grp_generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.grp_generateMsgSchedule_64u_Pipeline_LOOP_SHA1_GEN_WT64_fu_254", "Parent" : "21", "Child" : ["26"],
		"CDFG" : "generateMsgSchedule_64u_Pipeline_LOOP_SHA1_GEN_WT64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "W_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "w_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA1_GEN_WT64", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.grp_generateMsgSchedule_64u_Pipeline_LOOP_SHA1_GEN_WT64_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0", "Parent" : "12", "Child" : ["28"],
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
		"StartSource" : "18",
		"StartFifo" : "start_for_SHA512Digest_64u_256u_U0_U",
		"Port" : [
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "38", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145", "Port" : "w_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "36", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "37", "DependentChanDepth" : "32", "DependentChanType" : "0",
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145", "Parent" : "27", "Child" : ["29", "30"],
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
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145.sparsemux_161_7_64_1_1_U119", "Parent" : "28"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.grp_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.blk_strm_U", "Parent" : "12"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.nblk_strm_U", "Parent" : "12"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.end_nblk_strm_U", "Parent" : "12"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.nblk_strm1_U", "Parent" : "12"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.end_nblk_strm1_U", "Parent" : "12"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.nblk_strm2_U", "Parent" : "12"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.end_nblk_strm2_U", "Parent" : "12"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.w_strm_U", "Parent" : "12"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.start_for_dup_strm_128u_U0_U", "Parent" : "12"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.start_for_generateMsgSchedule_64u_U0_U", "Parent" : "12"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.start_for_SHA512Digest_64u_256u_U0_U", "Parent" : "12"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0", "Parent" : "0", "Child" : ["43", "45", "46", "47", "48", "49"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_core_to_axis_U0_U",
		"Port" : [
			{"Name" : "core_digest_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "54", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "core_digest_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "core_end_digest_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "55", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "core_end_digest_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "digest_strm_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "digest_strm",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Port" : "digest_strm_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dest_id", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "50", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dest_id_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60", "Parent" : "42", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0.regslice_both_digest_strm_V_data_V_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0.regslice_both_digest_strm_V_keep_V_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0.regslice_both_digest_strm_V_strb_V_U", "Parent" : "42"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0.regslice_both_digest_strm_V_last_V_U", "Parent" : "42"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.core_to_axis_U0.regslice_both_digest_strm_V_dest_V_U", "Parent" : "42"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dest_id_c_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_msg_strm_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_len_strm_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_end_len_strm_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_digest_strm_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_end_digest_strm_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_core_to_axis_U0_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sha512_t_64u_256u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test {
		msg_strm_V_data_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_keep_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_strb_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_last_V {Type I LastRead 2 FirstWrite -1}
		msg_strm_V_dest_V {Type I LastRead 2 FirstWrite -1}
		digest_strm_V_data_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_keep_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_strb_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_last_V {Type O LastRead -1 FirstWrite 1}
		digest_strm_V_dest_V {Type O LastRead -1 FirstWrite 1}
		msg_len {Type I LastRead 1 FirstWrite -1}
		dest_id {Type I LastRead 1 FirstWrite -1}}
	entry_proc {
		dest_id {Type I LastRead 0 FirstWrite -1}
		dest_id_c {Type O LastRead -1 FirstWrite 0}}
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
		core_msg_strm {Type O LastRead -1 FirstWrite 2}}
	sha512_t_64u_256u_s {
		core_msg_strm {Type I LastRead 19 FirstWrite -1}
		core_len_strm {Type I LastRead 1 FirstWrite -1}
		core_end_len_strm {Type I LastRead 20 FirstWrite -1}
		core_digest_strm {Type O LastRead -1 FirstWrite 4}
		core_end_digest_strm {Type O LastRead -1 FirstWrite 1}}
	sha512Top_64u_256u_s {
		core_msg_strm {Type I LastRead 19 FirstWrite -1}
		core_len_strm {Type I LastRead 1 FirstWrite -1}
		core_end_len_strm {Type I LastRead 20 FirstWrite -1}
		core_digest_strm {Type O LastRead -1 FirstWrite 4}
		core_end_digest_strm {Type O LastRead -1 FirstWrite 1}}
	preProcessing_64u_s {
		core_msg_strm {Type I LastRead 19 FirstWrite -1}
		core_len_strm {Type I LastRead 1 FirstWrite -1}
		core_end_len_strm {Type I LastRead 20 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 4}
		nblk_strm {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm {Type O LastRead -1 FirstWrite 1}}
	preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS {
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		core_msg_strm {Type I LastRead 17 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 17}}
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
		b_out {Type O LastRead -1 FirstWrite 0}}
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
		end_nblk_strm {Type I LastRead 0 FirstWrite -1}}
	generateMsgSchedule_64u_s {
		blk_strm {Type I LastRead 2 FirstWrite -1}
		nblk_strm1 {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm1 {Type I LastRead 2 FirstWrite -1}
		w_strm {Type O LastRead -1 FirstWrite 1}}
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
		W_out {Type O LastRead -1 FirstWrite 0}}
	generateMsgSchedule_64u_Pipeline_LOOP_SHA1_GEN_WT64 {
		W_reload {Type I LastRead 0 FirstWrite -1}
		W_2_reload {Type I LastRead 0 FirstWrite -1}
		W_3_reload {Type I LastRead 0 FirstWrite -1}
		W_4_reload {Type I LastRead 0 FirstWrite -1}
		W_5_reload {Type I LastRead 0 FirstWrite -1}
		W_7_reload {Type I LastRead 0 FirstWrite -1}
		W_8_reload {Type I LastRead 0 FirstWrite -1}
		W_9_reload {Type I LastRead 0 FirstWrite -1}
		W_10_reload {Type I LastRead 0 FirstWrite -1}
		W_11_reload {Type I LastRead 0 FirstWrite -1}
		W_12_reload {Type I LastRead 0 FirstWrite -1}
		W_13_reload {Type I LastRead 0 FirstWrite -1}
		W_15_reload {Type I LastRead 0 FirstWrite -1}
		W_14_reload {Type I LastRead 0 FirstWrite -1}
		W_6_reload {Type I LastRead 0 FirstWrite -1}
		W_1_reload {Type I LastRead 0 FirstWrite -1}
		w_strm {Type O LastRead -1 FirstWrite 2}}
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
		add_ln7815_out {Type O LastRead -1 FirstWrite 1}}
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
	msg_strm_V_data_V { axis {  { msg_strm_TDATA in_data 0 64 } } }
	msg_strm_V_keep_V { axis {  { msg_strm_TKEEP in_data 0 8 } } }
	msg_strm_V_strb_V { axis {  { msg_strm_TSTRB in_data 0 8 } } }
	msg_strm_V_last_V { axis {  { msg_strm_TLAST in_data 0 1 } } }
	msg_strm_V_dest_V { axis {  { msg_strm_TDEST in_data 0 3 }  { msg_strm_TVALID in_vld 0 1 }  { msg_strm_TREADY in_acc 1 1 } } }
	digest_strm_V_data_V { axis {  { digest_strm_TDATA out_data 1 256 } } }
	digest_strm_V_keep_V { axis {  { digest_strm_TKEEP out_data 1 32 } } }
	digest_strm_V_strb_V { axis {  { digest_strm_TSTRB out_data 1 32 } } }
	digest_strm_V_last_V { axis {  { digest_strm_TLAST out_data 1 1 } } }
	digest_strm_V_dest_V { axis {  { digest_strm_TDEST out_data 1 3 }  { digest_strm_TVALID out_vld 1 1 }  { digest_strm_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

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
