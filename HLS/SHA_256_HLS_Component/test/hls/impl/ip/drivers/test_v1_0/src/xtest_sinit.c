// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xtest.h"

extern XTest_Config XTest_ConfigTable[];

#ifdef SDT
XTest_Config *XTest_LookupConfig(UINTPTR BaseAddress) {
	XTest_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XTest_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XTest_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XTest_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_Initialize(XTest *InstancePtr, UINTPTR BaseAddress) {
	XTest_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XTest_Config *XTest_LookupConfig(u16 DeviceId) {
	XTest_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_NUM_INSTANCES; Index++) {
		if (XTest_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_Initialize(XTest *InstancePtr, u16 DeviceId) {
	XTest_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

