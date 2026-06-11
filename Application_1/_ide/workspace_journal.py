# 2026-06-11T10:08:57.092166900
import vitis

client = vitis.create_client()
client.set_workspace(path="Application_1")

platform = client.get_component(name="platform")
status = platform.build()

vitis.dispose()

