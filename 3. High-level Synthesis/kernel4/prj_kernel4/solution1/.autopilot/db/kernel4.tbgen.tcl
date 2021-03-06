set C_TypeInfoList {{ 
"kernel4" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"array": [[], {"array": [ {"scalar": "int"}, [1024]]}] }, {"index": [[], {"array": [ {"scalar": "int"}, [1024]]}] }, {"offset": [[], {"scalar": "int"}] }],[],""]
}}
set moduleName kernel4
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {kernel4}
set C_modelType { void 0 }
set C_modelArgList {
	{ array_r int 32 regular {array 1024 { 1 2 } 1 1 }  }
	{ index int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "array_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "array","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "index", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "index","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ array_r_address0 sc_out sc_lv 10 signal 0 } 
	{ array_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ array_r_q0 sc_in sc_lv 32 signal 0 } 
	{ array_r_address1 sc_out sc_lv 10 signal 0 } 
	{ array_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ array_r_we1 sc_out sc_logic 1 signal 0 } 
	{ array_r_d1 sc_out sc_lv 32 signal 0 } 
	{ array_r_q1 sc_in sc_lv 32 signal 0 } 
	{ index_address0 sc_out sc_lv 10 signal 1 } 
	{ index_ce0 sc_out sc_logic 1 signal 1 } 
	{ index_q0 sc_in sc_lv 32 signal 1 } 
	{ offset sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "array_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_r", "role": "address0" }} , 
 	{ "name": "array_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_r", "role": "ce0" }} , 
 	{ "name": "array_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_r", "role": "q0" }} , 
 	{ "name": "array_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_r", "role": "address1" }} , 
 	{ "name": "array_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_r", "role": "ce1" }} , 
 	{ "name": "array_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_r", "role": "we1" }} , 
 	{ "name": "array_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_r", "role": "d1" }} , 
 	{ "name": "array_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_r", "role": "q1" }} , 
 	{ "name": "index_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "index", "role": "address0" }} , 
 	{ "name": "index_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "index", "role": "ce0" }} , 
 	{ "name": "index_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "index", "role": "q0" }} , 
 	{ "name": "offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "kernel4",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "array_r", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "index", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel4_mul_32s_3bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel4_mul_32s_3bkb_U2", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	array_r { ap_memory {  { array_r_address0 mem_address 1 10 }  { array_r_ce0 mem_ce 1 1 }  { array_r_q0 mem_dout 0 32 }  { array_r_address1 mem_address 1 10 }  { array_r_ce1 mem_ce 1 1 }  { array_r_we1 mem_we 1 1 }  { array_r_d1 mem_din 1 32 }  { array_r_q1 mem_dout 0 32 } } }
	index { ap_memory {  { index_address0 mem_address 1 10 }  { index_ce0 mem_ce 1 1 }  { index_q0 mem_dout 0 32 } } }
	offset { ap_none {  { offset in_data 0 32 } } }
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
