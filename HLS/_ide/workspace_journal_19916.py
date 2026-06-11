# 2026-06-10T14:57:14.156526300
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS")

comp = client.create_hls_component(name = "SHA_256_HLS_Component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

vitis.dispose()

