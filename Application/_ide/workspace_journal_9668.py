# 2026-06-11T10:17:54.513551300
import vitis

client = vitis.create_client()
client.set_workspace(path="Application")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../Vivado/project_1/design_1_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

vitis.dispose()

