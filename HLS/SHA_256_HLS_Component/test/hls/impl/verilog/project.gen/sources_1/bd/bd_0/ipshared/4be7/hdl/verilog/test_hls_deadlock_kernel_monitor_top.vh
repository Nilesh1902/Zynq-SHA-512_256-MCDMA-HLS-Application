
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [12:0] inst_idle_sigs;
wire [7:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~axis_to_core_U0.grp_axis_to_core_Pipeline_FEED_LOOP_fu_85.msg_strm_TDATA_blk_n;
assign axis_block_sigs[1] = ~core_to_axis_U0.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60.digest_strm_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.dest_id_c_blk_n;
assign inst_idle_sigs[1] = axis_to_core_U0.ap_idle;
assign inst_block_sigs[1] = (axis_to_core_U0.ap_done & ~axis_to_core_U0.ap_continue) | ~axis_to_core_U0.grp_axis_to_core_Pipeline_FEED_LOOP_fu_85.core_msg_strm_blk_n | ~axis_to_core_U0.core_len_strm_blk_n | ~axis_to_core_U0.core_end_len_strm_blk_n;
assign inst_idle_sigs[2] = sha512_t_64u_256u_U0.ap_idle;
assign inst_block_sigs[2] = (sha512_t_64u_256u_U0.ap_done & ~sha512_t_64u_256u_U0.ap_continue) | ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.grp_preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS_fu_334.core_msg_strm_blk_n | ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.grp_preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1_fu_343.core_msg_strm_blk_n | ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.core_msg_strm_blk_n | ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.core_len_strm_blk_n | ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.core_end_len_strm_blk_n | ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.core_digest_strm_blk_n | ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.core_end_digest_strm_blk_n;
assign inst_idle_sigs[3] = core_to_axis_U0.ap_idle;
assign inst_block_sigs[3] = (core_to_axis_U0.ap_done & ~core_to_axis_U0.ap_continue) | ~core_to_axis_U0.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60.core_digest_strm_blk_n | ~core_to_axis_U0.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60.core_end_digest_strm_blk_n | ~core_to_axis_U0.dest_id_blk_n;
assign inst_idle_sigs[4] = sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.ap_idle;
assign inst_block_sigs[4] = (sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.ap_done & ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.preProcessing_64u_U0.ap_continue);
assign inst_idle_sigs[5] = sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.dup_strm_128u_U0.ap_idle;
assign inst_block_sigs[5] = (sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.dup_strm_128u_U0.ap_done & ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.dup_strm_128u_U0.ap_continue);
assign inst_idle_sigs[6] = sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.ap_idle;
assign inst_block_sigs[6] = (sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.ap_done & ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.generateMsgSchedule_64u_U0.ap_continue);
assign inst_idle_sigs[7] = sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.ap_idle;
assign inst_block_sigs[7] = (sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.ap_done & ~sha512_t_64u_256u_U0.grp_sha512Top_64u_256u_s_fu_22.SHA512Digest_64u_256u_U0.ap_continue);

assign inst_idle_sigs[8] = 1'b0;
assign inst_idle_sigs[9] = axis_to_core_U0.ap_idle;
assign inst_idle_sigs[10] = axis_to_core_U0.grp_axis_to_core_Pipeline_FEED_LOOP_fu_85.ap_idle;
assign inst_idle_sigs[11] = core_to_axis_U0.ap_idle;
assign inst_idle_sigs[12] = core_to_axis_U0.grp_core_to_axis_Pipeline_DRAIN_LOOP_fu_60.ap_idle;

test_hls_deadlock_idx0_monitor test_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
