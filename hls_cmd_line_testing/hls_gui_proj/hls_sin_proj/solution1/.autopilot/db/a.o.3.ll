; ModuleID = '/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/hls_gui_proj/hls_sin_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sin_taylor_series_st = internal unnamed_addr constant [18 x i8] c"sin_taylor_series\00" ; [#uses=1 type=[18 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"sum_loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"power_loop\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [10 x i8] c"fact_loop\00", align 1 ; [#uses=3 type=[10 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]

; [#uses=0]
define double @sin_taylor_series(double %x) nounwind uwtable readnone {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !15 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecBitsMap(double %x) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @sin_taylor_series_st) nounwind
  %x_read = call double @_ssdm_op_Read.ap_auto.double(double %x) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %x_read}, i64 0, metadata !36), !dbg !37 ; [debug line = 23:34] [debug variable = x]
  call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !36), !dbg !37 ; [debug line = 23:34] [debug variable = x]
  %call_ret = call fastcc { double, double } @Loop_sum_loop_proc(double %x_read) nounwind ; [#uses=2 type={ double, double }]
  %sum_positive_0_loc_l = extractvalue { double, double } %call_ret, 0 ; [#uses=1 type=double]
  %sum_negative_0_loc_l = extractvalue { double, double } %call_ret, 1 ; [#uses=1 type=double]
  %tmp_loc_channel = call fastcc double @Block_sin_taylor_ser(double %sum_positive_0_loc_l, double %sum_negative_0_loc_l) nounwind ; [#uses=1 type=double]
  %tmp = call fastcc double @"__../source_files/sr"(double %tmp_loc_channel) nounwind ; [#uses=1 type=double]
  ret double %tmp, !dbg !38                       ; [debug line = 36:2]
}

; [#uses=2]
define internal fastcc double @power(double %x, i5 %y) readnone {
  %y_read = call i5 @_ssdm_op_Read.ap_auto.i5(i5 %y) ; [#uses=1 type=i5]
  call void @llvm.dbg.value(metadata !{i5 %y_read}, i64 0, metadata !39), !dbg !44 ; [debug line = 12:29] [debug variable = y]
  %x_read = call double @_ssdm_op_Read.ap_auto.double(double %x) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %x_read}, i64 0, metadata !45), !dbg !46 ; [debug line = 12:22] [debug variable = x]
  call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !45), !dbg !46 ; [debug line = 12:22] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i5 %y}, i64 0, metadata !39), !dbg !44 ; [debug line = 12:29] [debug variable = y]
  %tmp_cast = zext i5 %y_read to i6, !dbg !47     ; [#uses=1 type=i6] [debug line = 16:26]
  %tmp_2 = add i6 %tmp_cast, 1, !dbg !47          ; [#uses=1 type=i6] [debug line = 16:26]
  br label %1, !dbg !47                           ; [debug line = 16:26]

; <label>:1                                       ; preds = %2, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int_1, %2 ] ; [#uses=2 type=double]
  %i = phi i6 [ 1, %0 ], [ %i_1, %2 ]             ; [#uses=2 type=i6]
  %exitcond = icmp eq i6 %i, %tmp_2, !dbg !47     ; [#uses=1 type=i1] [debug line = 16:26]
  br i1 %exitcond, label %3, label %2, !dbg !47   ; [debug line = 16:26]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 31, i64 0) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind, !dbg !50 ; [debug line = 16:40]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2) nounwind, !dbg !50 ; [#uses=1 type=i32] [debug line = 16:40]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !52 ; [debug line = 17:1]
  %result_int_1 = fmul double %result_int, %x_read, !dbg !53 ; [#uses=1 type=double] [debug line = 18:2]
  call void @llvm.dbg.value(metadata !{double %result_int_1}, i64 0, metadata !54), !dbg !53 ; [debug line = 18:2] [debug variable = result_int]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_1) nounwind, !dbg !55 ; [#uses=0 type=i32] [debug line = 19:2]
  %i_1 = add i6 %i, 1, !dbg !56                   ; [#uses=1 type=i6] [debug line = 16:34]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !57), !dbg !56 ; [debug line = 16:34] [debug variable = i]
  br label %1, !dbg !56                           ; [debug line = 16:34]

; <label>:3                                       ; preds = %1
  ret double %result_int, !dbg !58                ; [debug line = 20:2]
}

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
define internal fastcc double @fact(i5 %x) readnone {
  %x_read = call i5 @_ssdm_op_Read.ap_auto.i5(i5 %x) ; [#uses=1 type=i5]
  call void @llvm.dbg.value(metadata !{i5 %x_read}, i64 0, metadata !59), !dbg !63 ; [debug line = 1:17] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i5 %x}, i64 0, metadata !59), !dbg !63 ; [debug line = 1:17] [debug variable = x]
  %tmp_cast = zext i5 %x_read to i6, !dbg !64     ; [#uses=1 type=i6] [debug line = 5:25]
  %tmp_3 = add i6 %tmp_cast, 1, !dbg !64          ; [#uses=1 type=i6] [debug line = 5:25]
  br label %1, !dbg !64                           ; [debug line = 5:25]

; <label>:1                                       ; preds = %2, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int_2, %2 ] ; [#uses=2 type=double]
  %i = phi i6 [ 1, %0 ], [ %i_2, %2 ]             ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %i, %tmp_3, !dbg !64     ; [#uses=1 type=i1] [debug line = 5:25]
  br i1 %exitcond, label %3, label %2, !dbg !64   ; [debug line = 5:25]

; <label>:2                                       ; preds = %1
  %i_cast1 = zext i6 %i to i32, !dbg !64          ; [#uses=1 type=i32] [debug line = 5:25]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 31, i64 0) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1) nounwind, !dbg !67 ; [debug line = 5:39]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 5:39]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !69 ; [debug line = 6:1]
  %tmp_s = sitofp i32 %i_cast1 to double, !dbg !70 ; [#uses=1 type=double] [debug line = 7:2]
  %result_int_2 = fmul double %result_int, %tmp_s, !dbg !70 ; [#uses=1 type=double] [debug line = 7:2]
  call void @llvm.dbg.value(metadata !{double %result_int_2}, i64 0, metadata !71), !dbg !70 ; [debug line = 7:2] [debug variable = result_int]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1, i32 %tmp_2) nounwind, !dbg !72 ; [#uses=0 type=i32] [debug line = 8:2]
  %i_2 = add i6 %i, 1, !dbg !73                   ; [#uses=1 type=i6] [debug line = 5:33]
  call void @llvm.dbg.value(metadata !{i6 %i_2}, i64 0, metadata !74), !dbg !73 ; [debug line = 5:33] [debug variable = i]
  br label %1, !dbg !73                           ; [debug line = 5:33]

; <label>:3                                       ; preds = %1
  ret double %result_int, !dbg !75                ; [debug line = 9:2]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i5 @_ssdm_op_Read.ap_auto.i5(i5) {
entry:
  ret i5 %0
}

; [#uses=6]
define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

; [#uses=1]
define internal fastcc double @"__../source_files/sr"(double %p_read) readnone {
entry:
  %p_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %p_read) ; [#uses=1 type=double]
  ret double %p_read_1
}

; [#uses=1]
define internal fastcc { double, double } @Loop_sum_loop_proc(double %x) readnone {
newFuncRoot:
  %x_read = call double @_ssdm_op_Read.ap_auto.double(double %x) ; [#uses=2 type=double]
  br label %0

sin_taylor_series_.exit2.exitStub:                ; preds = %0
  %mrv = insertvalue { double, double } undef, double %sum_positive_0_loc_l, 0 ; [#uses=1 type={ double, double }]
  %mrv_1 = insertvalue { double, double } %mrv, double %sum_negative_0_loc_l, 1 ; [#uses=1 type={ double, double }]
  ret { double, double } %mrv_1

; <label>:0                                       ; preds = %1, %newFuncRoot
  %sum_positive_0_loc_l = phi double [ 0.000000e+00, %newFuncRoot ], [ %sum_positive, %1 ] ; [#uses=2 type=double]
  %sum_negative_0_loc_l = phi double [ 0.000000e+00, %newFuncRoot ], [ %sum_negative, %1 ] ; [#uses=2 type=double]
  %i_0_i_i = phi i5 [ 1, %newFuncRoot ], [ %i, %1 ] ; [#uses=5 type=i5]
  %tmp_i = icmp ult i5 %i_0_i_i, -11, !dbg !76    ; [#uses=1 type=i1] [debug line = 31:24]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_i, label %1, label %sin_taylor_series_.exit2.exitStub, !dbg !76 ; [debug line = 31:24]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str3) nounwind, !dbg !78 ; [debug line = 31:39]
  %tmp_1_i = call fastcc double @power(double %x_read, i5 %i_0_i_i) nounwind, !dbg !80 ; [#uses=1 type=double] [debug line = 32:34]
  %tmp_2_i = call fastcc double @fact(i5 %i_0_i_i) nounwind, !dbg !81 ; [#uses=1 type=double] [debug line = 32:48]
  %tmp_3_i = fdiv double %tmp_1_i, %tmp_2_i, !dbg !81 ; [#uses=1 type=double] [debug line = 32:48]
  %sum_positive = fadd double %sum_positive_0_loc_l, %tmp_3_i, !dbg !81 ; [#uses=1 type=double] [debug line = 32:48]
  call void @llvm.dbg.value(metadata !{double %sum_positive}, i64 0, metadata !82) nounwind, !dbg !81 ; [debug line = 32:48] [debug variable = sum_positive]
  %tmp_5_i = add i5 %i_0_i_i, 2, !dbg !83         ; [#uses=2 type=i5] [debug line = 33:34]
  %tmp_6_i = call fastcc double @power(double %x_read, i5 %tmp_5_i) nounwind, !dbg !83 ; [#uses=1 type=double] [debug line = 33:34]
  %tmp_7_i = call fastcc double @fact(i5 %tmp_5_i) nounwind, !dbg !84 ; [#uses=1 type=double] [debug line = 33:50]
  %tmp_8_i = fdiv double %tmp_6_i, %tmp_7_i, !dbg !84 ; [#uses=1 type=double] [debug line = 33:50]
  %sum_negative = fadd double %sum_negative_0_loc_l, %tmp_8_i, !dbg !84 ; [#uses=1 type=double] [debug line = 33:50]
  call void @llvm.dbg.value(metadata !{double %sum_negative}, i64 0, metadata !85) nounwind, !dbg !84 ; [debug line = 33:50] [debug variable = sum_negative]
  %i = add i5 %i_0_i_i, 4, !dbg !86               ; [#uses=1 type=i5] [debug line = 31:32]
  call void @llvm.dbg.value(metadata !{i5 %i}, i64 0, metadata !87) nounwind, !dbg !86 ; [debug line = 31:32] [debug variable = i]
  br label %0, !dbg !86                           ; [debug line = 31:32]
}

; [#uses=1]
define internal fastcc double @Block_sin_taylor_ser(double %p_read, double %p_read1) readnone {
entry:
  %p_read_2 = call double @_ssdm_op_Read.ap_auto.double(double %p_read1) ; [#uses=1 type=double]
  %p_read_3 = call double @_ssdm_op_Read.ap_auto.double(double %p_read) ; [#uses=1 type=double]
  %tmp_loc = fsub double %p_read_3, %p_read_2, !dbg !38 ; [#uses=1 type=double] [debug line = 36:2]
  ret double %tmp_loc
}

!opencl.kernels = !{!0, !7, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!13 = metadata !{double (double)* @sin_taylor_series, metadata !1, metadata !2, metadata !14, metadata !4, metadata !5, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!15 = metadata !{i32 25, i32 1, metadata !16, null}
!16 = metadata !{i32 786443, metadata !17, i32 23, i32 36, metadata !18, i32 6} ; [ DW_TAG_lexical_block ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"sin_taylor_series", metadata !"sin_taylor_series", metadata !"_Z17sin_taylor_seriesd", metadata !18, i32 23, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sin_taylor_series, null, null, metadata !22, i32 23} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"../source_files/src/dut.cpp", metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/hls_gui_proj", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{metadata !21, metadata !21}
!21 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 63, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"x", metadata !28, metadata !"double", i32 0, i32 63}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 0, i32 0}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 63, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"return", metadata !34, metadata !"double", i32 0, i32 63}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 1, i32 0}
!36 = metadata !{i32 786689, metadata !17, metadata !"x", metadata !18, i32 16777239, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 23, i32 34, metadata !17, null}
!38 = metadata !{i32 36, i32 2, metadata !16, null}
!39 = metadata !{i32 786689, metadata !40, metadata !"y", metadata !18, i32 33554444, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 786478, i32 0, metadata !18, metadata !"power", metadata !"power", metadata !"_Z5powerdi", metadata !18, i32 12, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 12} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{metadata !21, metadata !21, metadata !43}
!43 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 12, i32 29, metadata !40, null}
!45 = metadata !{i32 786689, metadata !40, metadata !"x", metadata !18, i32 16777228, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 12, i32 22, metadata !40, null}
!47 = metadata !{i32 16, i32 26, metadata !48, null}
!48 = metadata !{i32 786443, metadata !49, i32 16, i32 14, metadata !18, i32 4} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786443, metadata !40, i32 12, i32 32, metadata !18, i32 3} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 16, i32 40, metadata !51, null}
!51 = metadata !{i32 786443, metadata !48, i32 16, i32 39, metadata !18, i32 5} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 17, i32 1, metadata !51, null}
!53 = metadata !{i32 18, i32 2, metadata !51, null}
!54 = metadata !{i32 786688, metadata !49, metadata !"result_int", metadata !18, i32 15, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 19, i32 2, metadata !51, null}
!56 = metadata !{i32 16, i32 34, metadata !48, null}
!57 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !18, i32 16, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 20, i32 2, metadata !49, null}
!59 = metadata !{i32 786689, metadata !60, metadata !"x", metadata !18, i32 16777217, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786478, i32 0, metadata !18, metadata !"fact", metadata !"fact", metadata !"_Z4facti", metadata !18, i32 1, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 1} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !21, metadata !43}
!63 = metadata !{i32 1, i32 17, metadata !60, null}
!64 = metadata !{i32 5, i32 25, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 5, i32 13, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !60, i32 1, i32 20, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 5, i32 39, metadata !68, null}
!68 = metadata !{i32 786443, metadata !65, i32 5, i32 38, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 6, i32 1, metadata !68, null}
!70 = metadata !{i32 7, i32 2, metadata !68, null}
!71 = metadata !{i32 786688, metadata !66, metadata !"result_int", metadata !18, i32 4, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 8, i32 2, metadata !68, null}
!73 = metadata !{i32 5, i32 33, metadata !65, null}
!74 = metadata !{i32 786688, metadata !65, metadata !"i", metadata !18, i32 5, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 9, i32 2, metadata !66, null}
!76 = metadata !{i32 31, i32 24, metadata !77, null}
!77 = metadata !{i32 786443, metadata !16, i32 31, i32 12, metadata !18, i32 7} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 31, i32 39, metadata !79, null}
!79 = metadata !{i32 786443, metadata !77, i32 31, i32 38, metadata !18, i32 8} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 32, i32 34, metadata !79, null}
!81 = metadata !{i32 32, i32 48, metadata !79, null}
!82 = metadata !{i32 786688, metadata !16, metadata !"sum_positive", metadata !18, i32 28, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 33, i32 34, metadata !79, null}
!84 = metadata !{i32 33, i32 50, metadata !79, null}
!85 = metadata !{i32 786688, metadata !16, metadata !"sum_negative", metadata !18, i32 29, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 31, i32 32, metadata !77, null}
!87 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !18, i32 31, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
