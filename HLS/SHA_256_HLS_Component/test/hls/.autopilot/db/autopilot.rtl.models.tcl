set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME test_entry_proc}
  {SRCNAME axis_to_core_Pipeline_FEED_LOOP MODELNAME axis_to_core_Pipeline_FEED_LOOP RTLNAME test_axis_to_core_Pipeline_FEED_LOOP
    SUBMODULES {
      {MODELNAME test_flow_control_loop_pipe_sequential_init RTLNAME test_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME axis_to_core MODELNAME axis_to_core RTLNAME test_axis_to_core
    SUBMODULES {
      {MODELNAME test_regslice_both RTLNAME test_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME preProcessing<64u>_Pipeline_LOOP_GEN_FULL_BLKS MODELNAME preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS RTLNAME test_preProcessing_64u_Pipeline_LOOP_GEN_FULL_BLKS}
  {SRCNAME preProcessing<64u>_Pipeline_LOOP_COPY_TAIL_AND_PAD_1 MODELNAME preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1 RTLNAME test_preProcessing_64u_Pipeline_LOOP_COPY_TAIL_AND_PAD_1}
  {SRCNAME preProcessing<64u> MODELNAME preProcessing_64u_s RTLNAME test_preProcessing_64u_s}
  {SRCNAME dup_strm<128u>_Pipeline_LOOP_DUP_STREAM MODELNAME dup_strm_128u_Pipeline_LOOP_DUP_STREAM RTLNAME test_dup_strm_128u_Pipeline_LOOP_DUP_STREAM}
  {SRCNAME dup_strm<128u> MODELNAME dup_strm_128u_s RTLNAME test_dup_strm_128u_s}
  {SRCNAME generateMsgSchedule<64u>_Pipeline_LOOP_SHA512_GEN_WT16 MODELNAME generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16 RTLNAME test_generateMsgSchedule_64u_Pipeline_LOOP_SHA512_GEN_WT16
    SUBMODULES {
      {MODELNAME test_sparsemux_33_4_64_1_1 RTLNAME test_sparsemux_33_4_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME generateMsgSchedule<64u>_Pipeline_LOOP_SHA1_GEN_WT64 MODELNAME generateMsgSchedule_64u_Pipeline_LOOP_SHA1_GEN_WT64 RTLNAME test_generateMsgSchedule_64u_Pipeline_LOOP_SHA1_GEN_WT64}
  {SRCNAME generateMsgSchedule<64u> MODELNAME generateMsgSchedule_64u_s RTLNAME test_generateMsgSchedule_64u_s}
  {SRCNAME SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS MODELNAME SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS RTLNAME test_SHA512Digest_Pipeline_LOOP_SHA1_DIGEST_NBLK_LOOP_SHA1_UPDATE_80_ROUNDS
    SUBMODULES {
      {MODELNAME test_sparsemux_161_7_64_1_1 RTLNAME test_sparsemux_161_7_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME {SHA512Digest<64u, 256u>} MODELNAME SHA512Digest_64u_256u_s RTLNAME test_SHA512Digest_64u_256u_s}
  {SRCNAME {sha512Top<64u, 256u>} MODELNAME sha512Top_64u_256u_s RTLNAME test_sha512Top_64u_256u_s
    SUBMODULES {
      {MODELNAME test_fifo_w1024_d32_D RTLNAME test_fifo_w1024_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME blk_strm_U}
      {MODELNAME test_fifo_w128_d32_D RTLNAME test_fifo_w128_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME nblk_strm_U}
      {MODELNAME test_fifo_w1_d32_D RTLNAME test_fifo_w1_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME end_nblk_strm_U}
      {MODELNAME test_fifo_w128_d32_D RTLNAME test_fifo_w128_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME nblk_strm1_U}
      {MODELNAME test_fifo_w1_d32_D RTLNAME test_fifo_w1_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME end_nblk_strm1_U}
      {MODELNAME test_fifo_w128_d32_D RTLNAME test_fifo_w128_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME nblk_strm2_U}
      {MODELNAME test_fifo_w1_d32_D RTLNAME test_fifo_w1_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME end_nblk_strm2_U}
      {MODELNAME test_fifo_w64_d32_D RTLNAME test_fifo_w64_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME w_strm_U}
      {MODELNAME test_start_for_dup_strm_128u_U0 RTLNAME test_start_for_dup_strm_128u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dup_strm_128u_U0_U}
      {MODELNAME test_start_for_generateMsgSchedule_64u_U0 RTLNAME test_start_for_generateMsgSchedule_64u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_generateMsgSchedule_64u_U0_U}
      {MODELNAME test_start_for_SHA512Digest_64u_256u_U0 RTLNAME test_start_for_SHA512Digest_64u_256u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_SHA512Digest_64u_256u_U0_U}
    }
  }
  {SRCNAME {sha512_t<64u, 256u>} MODELNAME sha512_t_64u_256u_s RTLNAME test_sha512_t_64u_256u_s}
  {SRCNAME core_to_axis_Pipeline_DRAIN_LOOP MODELNAME core_to_axis_Pipeline_DRAIN_LOOP RTLNAME test_core_to_axis_Pipeline_DRAIN_LOOP}
  {SRCNAME core_to_axis MODELNAME core_to_axis RTLNAME test_core_to_axis}
  {SRCNAME test MODELNAME test RTLNAME test IS_TOP 1
    SUBMODULES {
      {MODELNAME test_fifo_w2_d4_S RTLNAME test_fifo_w2_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dest_id_c_U}
      {MODELNAME test_fifo_w64_d64_A RTLNAME test_fifo_w64_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME core_msg_strm_U}
      {MODELNAME test_fifo_w128_d4_S RTLNAME test_fifo_w128_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME core_len_strm_U}
      {MODELNAME test_fifo_w1_d4_S RTLNAME test_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME core_end_len_strm_U}
      {MODELNAME test_fifo_w256_d4_S RTLNAME test_fifo_w256_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME core_digest_strm_U}
      {MODELNAME test_fifo_w1_d4_S RTLNAME test_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME core_end_digest_strm_U}
      {MODELNAME test_start_for_core_to_axis_U0 RTLNAME test_start_for_core_to_axis_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_core_to_axis_U0_U}
      {MODELNAME test_start_for_sha512_t_64u_256u_U0 RTLNAME test_start_for_sha512_t_64u_256u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sha512_t_64u_256u_U0_U}
      {MODELNAME test_control_s_axi RTLNAME test_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
