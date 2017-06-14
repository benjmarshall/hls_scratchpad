; ModuleID = '/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/hls_gui_proj/hls_sin_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sin_taylor_series_st = internal unnamed_addr constant [18 x i8] c"sin_taylor_series\00"
@p_str3 = private unnamed_addr constant [9 x i8] c"sum_loop\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"power_loop\00", align 1
@p_str1 = private unnamed_addr constant [10 x i8] c"fact_loop\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define double @sin_taylor_series(double %x) nounwind uwtable readnone {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(double %x) nounwind, !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @sin_taylor_series_st) nounwind
  %x_read = call double @_ssdm_op_Read.ap_auto.double(double %x) nounwind
  %call_ret = call fastcc { double, double } @Loop_sum_loop_proc(double %x_read) nounwind
  %sum_positive_0_loc_l = extractvalue { double, double } %call_ret, 0
  %sum_negative_0_loc_l = extractvalue { double, double } %call_ret, 1
  %tmp_loc_channel = call fastcc double @Block_sin_taylor_ser(double %sum_positive_0_loc_l, double %sum_negative_0_loc_l) nounwind
  %tmp = call fastcc double @"__../source_files/sr"(double %tmp_loc_channel) nounwind
  ret double %tmp
}

define internal fastcc double @power(double %x, i5 %y) readnone {
  %y_read = call i5 @_ssdm_op_Read.ap_auto.i5(i5 %y)
  %x_read = call double @_ssdm_op_Read.ap_auto.double(double %x)
  %tmp_cast = zext i5 %y_read to i6
  %tmp_2 = add i6 %tmp_cast, 1
  br label %1

; <label>:1                                       ; preds = %2, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int_1, %2 ]
  %i = phi i6 [ 1, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i6 %i, %tmp_2
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 31, i64 0)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %result_int_1 = fmul double %result_int, %x_read
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_1) nounwind
  %i_1 = add i6 %i, 1
  br label %1

; <label>:3                                       ; preds = %1
  ret double %result_int
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define internal fastcc double @fact(i5 %x) readnone {
  %x_read = call i5 @_ssdm_op_Read.ap_auto.i5(i5 %x)
  %tmp_cast = zext i5 %x_read to i6
  %tmp_3 = add i6 %tmp_cast, 1
  br label %1

; <label>:1                                       ; preds = %2, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int_2, %2 ]
  %i = phi i6 [ 1, %0 ], [ %i_2, %2 ]
  %exitcond = icmp eq i6 %i, %tmp_3
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %i_cast1 = zext i6 %i to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 31, i64 0)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_s = sitofp i32 %i_cast1 to double
  %result_int_2 = fmul double %result_int, %tmp_s
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1, i32 %tmp_2) nounwind
  %i_2 = add i6 %i, 1
  br label %1

; <label>:3                                       ; preds = %1
  ret double %result_int
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i5 @_ssdm_op_Read.ap_auto.i5(i5) {
entry:
  ret i5 %0
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

define internal fastcc double @"__../source_files/sr"(double %p_read) readnone {
entry:
  %p_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %p_read)
  ret double %p_read_1
}

define internal fastcc { double, double } @Loop_sum_loop_proc(double %x) readnone {
newFuncRoot:
  %x_read = call double @_ssdm_op_Read.ap_auto.double(double %x)
  br label %0

sin_taylor_series_.exit2.exitStub:                ; preds = %0
  %mrv = insertvalue { double, double } undef, double %sum_positive_0_loc_l, 0
  %mrv_1 = insertvalue { double, double } %mrv, double %sum_negative_0_loc_l, 1
  ret { double, double } %mrv_1

; <label>:0                                       ; preds = %1, %newFuncRoot
  %sum_positive_0_loc_l = phi double [ 0.000000e+00, %newFuncRoot ], [ %sum_positive, %1 ]
  %sum_negative_0_loc_l = phi double [ 0.000000e+00, %newFuncRoot ], [ %sum_negative, %1 ]
  %i_0_i_i = phi i5 [ 1, %newFuncRoot ], [ %i, %1 ]
  %tmp_i = icmp ult i5 %i_0_i_i, -11
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  br i1 %tmp_i, label %1, label %sin_taylor_series_.exit2.exitStub

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str3) nounwind
  %tmp_1_i = call fastcc double @power(double %x_read, i5 %i_0_i_i) nounwind
  %tmp_2_i = call fastcc double @fact(i5 %i_0_i_i) nounwind
  %tmp_3_i = fdiv double %tmp_1_i, %tmp_2_i
  %sum_positive = fadd double %sum_positive_0_loc_l, %tmp_3_i
  %tmp_5_i = add i5 %i_0_i_i, 2
  %tmp_6_i = call fastcc double @power(double %x_read, i5 %tmp_5_i) nounwind
  %tmp_7_i = call fastcc double @fact(i5 %tmp_5_i) nounwind
  %tmp_8_i = fdiv double %tmp_6_i, %tmp_7_i
  %sum_negative = fadd double %sum_negative_0_loc_l, %tmp_8_i
  %i = add i5 %i_0_i_i, 4
  br label %0
}

define internal fastcc double @Block_sin_taylor_ser(double %p_read, double %p_read1) readnone {
entry:
  %p_read_2 = call double @_ssdm_op_Read.ap_auto.double(double %p_read1)
  %p_read_3 = call double @_ssdm_op_Read.ap_auto.double(double %p_read)
  %tmp_loc = fsub double %p_read_3, %p_read_2
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
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 63, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"x", metadata !19, metadata !"double", i32 0, i32 63}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 63, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"return", metadata !25, metadata !"double", i32 0, i32 63}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 1, i32 0}
