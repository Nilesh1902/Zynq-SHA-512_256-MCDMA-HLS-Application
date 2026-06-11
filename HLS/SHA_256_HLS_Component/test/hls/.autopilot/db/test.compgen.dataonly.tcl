# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
msg_len { 
	dir I
	width 128
	depth 1
	mode ap_none
	offset 16
	offset_end 35
}
dest_id { 
	dir I
	width 2
	depth 1
	mode ap_none
	offset 36
	offset_end 43
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


