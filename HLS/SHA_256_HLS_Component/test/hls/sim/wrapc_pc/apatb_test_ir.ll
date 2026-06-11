; ModuleID = 'D:/Nilesh_3/HLS/SHA_256_HLS_Component/test/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<64>, 0, 0, 3, '8', false>" }
%"struct.hls::axis<ap_uint<64>, 0, 0, 3, '8', false>" = type { %"struct.ap_uint<64>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ssdm_int<8, false>", %"struct.ap_uint<1>", %"struct.ssdm_int<8, false>", %"struct.ap_uint<3>" }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<256>, 0, 0, 3, '8', false>" }
%"struct.hls::axis<ap_uint<256>, 0, 0, 3, '8', false>" = type { %"struct.ap_uint<256>", %"struct.ap_uint<32>", %"struct.ap_uint<32>", %"struct.ssdm_int<8, false>", %"struct.ap_uint<1>", %"struct.ssdm_int<8, false>", %"struct.ap_uint<3>" }
%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }

; Function Attrs: noinline willreturn
define void @apatb_test_ir(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias nonnull dereferenceable(16) %msg_strm, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias nonnull dereferenceable(64) %digest_strm, %"struct.ap_uint<128>"* nocapture readonly %msg_len, %"struct.ap_uint<2>"* nocapture readonly %dest_id) local_unnamed_addr #0 {
entry:
  %msg_strm_copy.data = alloca i64, align 512
  %msg_strm_copy.keep = alloca i8, align 512
  %msg_strm_copy.strb = alloca i8, align 512
  %msg_strm_copy.last = alloca i1, align 512
  %msg_strm_copy.dest = alloca i3, align 512
  %digest_strm_copy.data = alloca i256, align 512
  %digest_strm_copy.keep = alloca i32, align 512
  %digest_strm_copy.strb = alloca i32, align 512
  %digest_strm_copy.last = alloca i1, align 512
  %digest_strm_copy.dest = alloca i3, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* nonnull %msg_strm, i64* nonnull align 512 %msg_strm_copy.data, i8* nonnull align 512 %msg_strm_copy.keep, i8* nonnull align 512 %msg_strm_copy.strb, i1* nonnull align 512 %msg_strm_copy.last, i3* nonnull align 512 %msg_strm_copy.dest, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* nonnull %digest_strm, i256* nonnull align 512 %digest_strm_copy.data, i32* nonnull align 512 %digest_strm_copy.keep, i32* nonnull align 512 %digest_strm_copy.strb, i1* nonnull align 512 %digest_strm_copy.last, i3* nonnull align 512 %digest_strm_copy.dest)
  call void @apatb_test_hw(i64* %msg_strm_copy.data, i8* %msg_strm_copy.keep, i8* %msg_strm_copy.strb, i1* %msg_strm_copy.last, i3* %msg_strm_copy.dest, i256* %digest_strm_copy.data, i32* %digest_strm_copy.keep, i32* %digest_strm_copy.strb, i1* %digest_strm_copy.last, i3* %digest_strm_copy.dest, %"struct.ap_uint<128>"* %msg_len, %"struct.ap_uint<2>"* %dest_id)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %msg_strm, i64* %msg_strm_copy.data, i8* %msg_strm_copy.keep, i8* %msg_strm_copy.strb, i1* %msg_strm_copy.last, i3* %msg_strm_copy.dest, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %digest_strm, i256* %digest_strm_copy.data, i32* %digest_strm_copy.keep, i32* %digest_strm_copy.strb, i1* %digest_strm_copy.last, i3* %digest_strm_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias, i64* noalias align 512 "unpacked"="1.0" %_V_data_V, i8* noalias align 512 "unpacked"="1.1" %_V_keep_V, i8* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, i3* noalias align 512 "unpacked"="1.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias, i256* noalias align 512 "unpacked"="3.0" %_V_data_V1, i32* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i32* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4, i3* noalias align 512 "unpacked"="3.4" %_V_dest_V5) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>.59"(i64* align 512 %_V_data_V, i8* align 512 %_V_keep_V, i8* align 512 %_V_strb_V, i1* align 512 %_V_last_V, i3* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"(i256* align 512 %_V_data_V1, i32* align 512 %_V_keep_V2, i32* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, i3* align 512 %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias %dst, i64* noalias align 512 "unpacked"="1.0" %src_V_data_V, i8* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i8* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V, i3* noalias align 512 "unpacked"="1.4" %src_V_dest_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* nonnull %dst, i64* align 512 %src_V_data_V, i8* align 512 %src_V_keep_V, i8* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V, i3* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias nocapture, i64* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i8* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i8* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V, i3* noalias nocapture align 512 "unpacked"="1.4" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i3
  %4 = alloca i8
  %5 = alloca i8
  %6 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i64* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_8(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i64* %2 to i8*
  %10 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_pop_8(i8* %9, i8* %10)
  %11 = load volatile i64, i64* %2
  call void @fpga_fifo_pop_1(i8* %5, i8* %_V_keep_V)
  %12 = load volatile i8, i8* %5
  call void @fpga_fifo_pop_1(i8* %4, i8* %_V_strb_V)
  %13 = load volatile i8, i8* %4
  %14 = bitcast i1* %1 to i8*
  %15 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %14, i8* %15)
  %16 = bitcast i1* %1 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i1
  %19 = bitcast i3* %3 to i8*
  %20 = bitcast i3* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %19, i8* %20)
  %21 = bitcast i3* %3 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i3
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" undef, i64 %11, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i8 %12, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i8 %13, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %18, 0, 4, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i3 %23, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %6
  %24 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %6 to i8*
  %25 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %24, i8* %25)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"(i256* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i32* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i32* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, i3* noalias align 512 "unpacked"="0.4" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"(i256* align 512 %dst_V_data_V, i32* align 512 %dst_V_keep_V, i32* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, i3* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"(i256* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i32* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i32* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, i3* noalias nocapture align 512 "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"
  %2 = alloca i1
  %3 = alloca i256
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i3
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %0 to i8*
  %8 = call i1 @fpga_fifo_not_empty_64(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %1 to i8*
  %10 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_64(i8* %9, i8* %10)
  %11 = load volatile %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %11, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %11, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %11, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %11, 0, 4, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %11, 0, 6, 0, 0, 0
  store i256 %.fca.0.0.0.0.0.extract, i256* %3
  %12 = bitcast i256* %3 to i8*
  %13 = bitcast i256* %_V_data_V to i8*
  call void @fpga_fifo_push_32(i8* %12, i8* %13)
  store i32 %.fca.0.1.0.0.0.extract, i32* %5
  %14 = bitcast i32* %5 to i8*
  %15 = bitcast i32* %_V_keep_V to i8*
  call void @fpga_fifo_push_4(i8* %14, i8* %15)
  store i32 %.fca.0.2.0.0.0.extract, i32* %4
  %16 = bitcast i32* %4 to i8*
  %17 = bitcast i32* %_V_strb_V to i8*
  call void @fpga_fifo_push_4(i8* %16, i8* %17)
  store i1 %.fca.0.4.0.0.0.extract, i1* %2
  %18 = bitcast i1* %2 to i8*
  %19 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i3 %.fca.0.6.0.0.0.extract, i3* %6
  %20 = bitcast i3* %6 to i8*
  %21 = bitcast i3* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias, i64* noalias align 512 "unpacked"="1.0" %_V_data_V, i8* noalias align 512 "unpacked"="1.1" %_V_keep_V, i8* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, i3* noalias align 512 "unpacked"="1.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias, i256* noalias align 512 "unpacked"="3.0" %_V_data_V1, i32* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i32* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4, i3* noalias align 512 "unpacked"="3.4" %_V_dest_V5) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %0, i64* align 512 %_V_data_V, i8* align 512 %_V_keep_V, i8* align 512 %_V_strb_V, i1* align 512 %_V_last_V, i3* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>.47"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %1, i256* align 512 %_V_data_V1, i32* align 512 %_V_keep_V2, i32* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, i3* align 512 %_V_dest_V5)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>.47"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias %dst, i256* noalias align 512 "unpacked"="1.0" %src_V_data_V, i32* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i32* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V, i3* noalias align 512 "unpacked"="1.4" %src_V_dest_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>.50"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* nonnull %dst, i256* align 512 %src_V_data_V, i32* align 512 %src_V_keep_V, i32* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V, i3* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>.50"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias nocapture, i256* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i32* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i32* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V, i3* noalias nocapture align 512 "unpacked"="1.4" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = alloca i1
  %2 = alloca i256
  %3 = alloca i32
  %4 = alloca i32
  %5 = alloca i3
  %6 = alloca %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i256* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_32(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i256* %2 to i8*
  %10 = bitcast i256* %_V_data_V to i8*
  call void @fpga_fifo_pop_32(i8* %9, i8* %10)
  %11 = load volatile i256, i256* %2
  %12 = bitcast i32* %4 to i8*
  %13 = bitcast i32* %_V_keep_V to i8*
  call void @fpga_fifo_pop_4(i8* %12, i8* %13)
  %14 = load volatile i32, i32* %4
  %15 = bitcast i32* %3 to i8*
  %16 = bitcast i32* %_V_strb_V to i8*
  call void @fpga_fifo_pop_4(i8* %15, i8* %16)
  %17 = load volatile i32, i32* %3
  %18 = bitcast i1* %1 to i8*
  %19 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %18, i8* %19)
  %20 = bitcast i1* %1 to i8*
  %21 = load i8, i8* %20
  %22 = trunc i8 %21 to i1
  %23 = bitcast i3* %5 to i8*
  %24 = bitcast i3* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i3* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i3
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" undef, i256 %11, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i32 %14, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i32 %17, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %22, 0, 4, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i3 %27, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %6
  %28 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %6 to i8*
  %29 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %28, i8* %29)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>.59"(i64* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i8* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i8* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, i3* noalias align 512 "unpacked"="0.4" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>.62"(i64* align 512 %dst_V_data_V, i8* align 512 %dst_V_keep_V, i8* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, i3* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>.62"(i64* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i8* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i8* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, i3* noalias nocapture align 512 "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i3
  %5 = alloca i8
  %6 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %0 to i8*
  %8 = call i1 @fpga_fifo_not_empty_16(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %1 to i8*
  %10 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_16(i8* %9, i8* %10)
  %11 = load volatile %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %11, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %11, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %11, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %11, 0, 4, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>" %11, 0, 6, 0, 0, 0
  store i64 %.fca.0.0.0.0.0.extract, i64* %3
  %12 = bitcast i64* %3 to i8*
  %13 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_push_8(i8* %12, i8* %13)
  store i8 %.fca.0.1.0.0.0.extract, i8* %6
  call void @fpga_fifo_push_1(i8* %6, i8* %_V_keep_V)
  store i8 %.fca.0.2.0.0.0.extract, i8* %5
  call void @fpga_fifo_push_1(i8* %5, i8* %_V_strb_V)
  store i1 %.fca.0.4.0.0.0.extract, i1* %2
  %14 = bitcast i1* %2 to i8*
  %15 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  store i3 %.fca.0.6.0.0.0.extract, i3* %4
  %16 = bitcast i3* %4 to i8*
  %17 = bitcast i3* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_test_hw(i64*, i8*, i8*, i1*, i3*, i256*, i32*, i32*, i1*, i3*, %"struct.ap_uint<128>"*, %"struct.ap_uint<2>"*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias, i64* noalias align 512 "unpacked"="1.0" %_V_data_V, i8* noalias align 512 "unpacked"="1.1" %_V_keep_V, i8* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, i3* noalias align 512 "unpacked"="1.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias, i256* noalias align 512 "unpacked"="3.0" %_V_data_V1, i32* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i32* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4, i3* noalias align 512 "unpacked"="3.4" %_V_dest_V5) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %0, i64* align 512 %_V_data_V, i8* align 512 %_V_keep_V, i8* align 512 %_V_strb_V, i1* align 512 %_V_last_V, i3* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>.47"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %1, i256* align 512 %_V_data_V1, i32* align 512 %_V_keep_V2, i32* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, i3* align 512 %_V_dest_V5)
  ret void
}

declare void @test_hw_stub(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* noalias nonnull, %"struct.ap_uint<128>"* nocapture readonly, %"struct.ap_uint<2>"* nocapture readonly)

define void @test_hw_stub_wrapper(i64*, i8*, i8*, i1*, i3*, i256*, i32*, i32*, i1*, i3*, %"struct.ap_uint<128>"*, %"struct.ap_uint<2>"*) #5 {
entry:
  %12 = call i8* @malloc(i64 16)
  %13 = bitcast i8* %12 to %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"*
  %14 = call i8* @malloc(i64 64)
  %15 = bitcast i8* %14 to %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %13, i64* %0, i8* %1, i8* %2, i1* %3, i3* %4, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %15, i256* %5, i32* %6, i32* %7, i1* %8, i3* %9)
  call void @test_hw_stub(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %13, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %15, %"struct.ap_uint<128>"* %10, %"struct.ap_uint<2>"* %11)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 3, '8', false>, 0>"* %13, i64* %0, i8* %1, i8* %2, i1* %3, i3* %4, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 3, '8', false>, 0>"* %15, i256* %5, i32* %6, i32* %7, i1* %8, i3* %9)
  call void @free(i8* %12)
  call void @free(i8* %14)
  ret void
}

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
