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
    id 127 \
    name w_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w_strm \
    op interface \
    ports { w_strm_dout { I 64 vector } w_strm_empty_n { I 1 bit } w_strm_read { O 1 bit } w_strm_num_data_valid { I 6 vector } w_strm_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name nblk_strm2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nblk_strm2 \
    op interface \
    ports { nblk_strm2_dout { I 128 vector } nblk_strm2_empty_n { I 1 bit } nblk_strm2_read { O 1 bit } nblk_strm2_num_data_valid { I 6 vector } nblk_strm2_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name end_nblk_strm2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_end_nblk_strm2 \
    op interface \
    ports { end_nblk_strm2_dout { I 1 vector } end_nblk_strm2_empty_n { I 1 bit } end_nblk_strm2_read { O 1 bit } end_nblk_strm2_num_data_valid { I 6 vector } end_nblk_strm2_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
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
    id 131 \
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


