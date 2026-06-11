# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name core_msg_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_core_msg_strm \
    op interface \
    ports { core_msg_strm_dout { I 64 vector } core_msg_strm_empty_n { I 1 bit } core_msg_strm_read { O 1 bit } core_msg_strm_num_data_valid { I 7 vector } core_msg_strm_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name core_len_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_core_len_strm \
    op interface \
    ports { core_len_strm_dout { I 128 vector } core_len_strm_empty_n { I 1 bit } core_len_strm_read { O 1 bit } core_len_strm_num_data_valid { I 3 vector } core_len_strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name core_end_len_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_core_end_len_strm \
    op interface \
    ports { core_end_len_strm_dout { I 1 vector } core_end_len_strm_empty_n { I 1 bit } core_end_len_strm_read { O 1 bit } core_end_len_strm_num_data_valid { I 3 vector } core_end_len_strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name core_digest_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_core_digest_strm \
    op interface \
    ports { core_digest_strm_din { O 256 vector } core_digest_strm_full_n { I 1 bit } core_digest_strm_write { O 1 bit } core_digest_strm_num_data_valid { I 3 vector } core_digest_strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name core_end_digest_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_core_end_digest_strm \
    op interface \
    ports { core_end_digest_strm_din { O 1 vector } core_end_digest_strm_full_n { I 1 bit } core_end_digest_strm_write { O 1 bit } core_end_digest_strm_num_data_valid { I 3 vector } core_end_digest_strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


