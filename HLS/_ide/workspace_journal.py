# 2026-06-10T15:13:56.414712800
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS")

comp = client.get_component(name="SHA_256_HLS_Component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

