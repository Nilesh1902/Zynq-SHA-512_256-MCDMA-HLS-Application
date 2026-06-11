# 0 "D:\\Nilesh_3\\Application\\platform\\zynqmp_fsbl\\zynqmp_fsbl_bsp\\lop-config.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "D:\\Nilesh_3\\Application\\platform\\zynqmp_fsbl\\zynqmp_fsbl_bsp\\lop-config.dts"

/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "D:/Nilesh_3/Application/platform/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 D:/version_2024.2/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilffs_v5_3/src D:/Nilesh_3/Application/_ide/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "D:/Nilesh_3/Application/platform/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 D:/version_2024.2/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilsecure_v5_4/src D:/Nilesh_3/Application/_ide/.wsdata/.repo.yaml";
                };

                lop_3 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "D:/Nilesh_3/Application/platform/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 D:/version_2024.2/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilpm_v5_3/src D:/Nilesh_3/Application/_ide/.wsdata/.repo.yaml";
                };

        };
    };
