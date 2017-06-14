; ModuleID = '/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/hls_gui_proj/hls_sin_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sin_taylor_series.str = internal unnamed_addr constant [18 x i8] c"sin_taylor_series\00" ; [#uses=1 type=[18 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"sum_loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"power_loop\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [10 x i8] c"fact_loop\00", align 1 ; [#uses=3 type=[10 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]

; [#uses=0]
define double @sin_taylor_series(double %x) nounwind uwtable readnone {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str) nounwind, !dbg !34 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecBitsMap(double %x) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @sin_taylor_series.str) nounwind
  call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !48), !dbg !49 ; [debug line = 23:34] [debug variable = x]
  %call.ret = call fastcc { double, double } @Loop_sum_loop_proc(double %x, double undef, double undef) nounwind ; [#uses=2 type={ double, double }]
  %sum_positive.0.loc.loc.loc.channel = extractvalue { double, double } %call.ret, 0 ; [#uses=1 type=double]
  %sum_negative.0.loc.loc.loc.channel = extractvalue { double, double } %call.ret, 1 ; [#uses=1 type=double]
  %tmp..loc.channel = call fastcc double @Block_sin_taylor_series_.exit2_proc(double %sum_positive.0.loc.loc.loc.channel, double %sum_negative.0.loc.loc.loc.channel, double undef) nounwind ; [#uses=1 type=double]
  %tmp = call fastcc double @"__../source_files/src/dut.cpp_line36_proc"(double %tmp..loc.channel) nounwind ; [#uses=1 type=double]
  ret double %tmp, !dbg !50                       ; [debug line = 36:2]
}

; [#uses=2]
define internal fastcc double @power(double %x, i5 %y) readnone {
  call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !51), !dbg !52 ; [debug line = 12:22] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i5 %y}, i64 0, metadata !53), !dbg !54 ; [debug line = 12:29] [debug variable = y]
  %tmp.cast = zext i5 %y to i6, !dbg !55          ; [#uses=1 type=i6] [debug line = 16:26]
  %tmp.2 = add i6 %tmp.cast, 1, !dbg !55          ; [#uses=1 type=i6] [debug line = 16:26]
  br label %1, !dbg !55                           ; [debug line = 16:26]

; <label>:1                                       ; preds = %3, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int.1, %3 ] ; [#uses=2 type=double]
  %i = phi i6 [ 1, %0 ], [ %i.1, %3 ]             ; [#uses=2 type=i6]
  %exitcond = icmp eq i6 %i, %tmp.2, !dbg !55     ; [#uses=1 type=i1] [debug line = 16:26]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 31, i64 0) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %3, !dbg !55   ; [debug line = 16:26]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str2) nounwind, !dbg !58 ; [debug line = 16:40]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str2) nounwind, !dbg !58 ; [#uses=1 type=i32] [debug line = 16:40]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !60 ; [debug line = 17:1]
  %result_int.1 = fmul double %result_int, %x, !dbg !61 ; [#uses=1 type=double] [debug line = 18:2]
  call void @llvm.dbg.value(metadata !{double %result_int.1}, i64 0, metadata !62), !dbg !61 ; [debug line = 18:2] [debug variable = result_int]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str2, i32 %tmp.1) nounwind, !dbg !63 ; [#uses=0 type=i32] [debug line = 19:2]
  %i.1 = add i6 %i, 1, !dbg !64                   ; [#uses=1 type=i6] [debug line = 16:34]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !65), !dbg !64 ; [debug line = 16:34] [debug variable = i]
  br label %1, !dbg !64                           ; [debug line = 16:34]

; <label>:5                                       ; preds = %1
  %result_int.lcssa = phi double [ %result_int, %1 ] ; [#uses=1 type=double]
  ret double %result_int.lcssa, !dbg !66          ; [debug line = 20:2]
}

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
define internal fastcc double @fact(i5 %x) readnone {
  call void @llvm.dbg.value(metadata !{i5 %x}, i64 0, metadata !67), !dbg !68 ; [debug line = 1:17] [debug variable = x]
  %tmp.cast = zext i5 %x to i6, !dbg !69          ; [#uses=1 type=i6] [debug line = 5:25]
  %tmp.3 = add i6 %tmp.cast, 1, !dbg !69          ; [#uses=1 type=i6] [debug line = 5:25]
  br label %1, !dbg !69                           ; [debug line = 5:25]

; <label>:1                                       ; preds = %3, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int.2, %3 ] ; [#uses=2 type=double]
  %i = phi i6 [ 1, %0 ], [ %i.2, %3 ]             ; [#uses=3 type=i6]
  %i.cast1 = zext i6 %i to i32, !dbg !69          ; [#uses=1 type=i32] [debug line = 5:25]
  %exitcond = icmp eq i6 %i, %tmp.3, !dbg !69     ; [#uses=1 type=i1] [debug line = 5:25]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 31, i64 0) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %3, !dbg !69   ; [debug line = 5:25]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @.str1) nounwind, !dbg !72 ; [debug line = 5:39]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @.str1) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 5:39]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !74 ; [debug line = 6:1]
  %tmp. = sitofp i32 %i.cast1 to double, !dbg !75 ; [#uses=1 type=double] [debug line = 7:2]
  %result_int.2 = fmul double %result_int, %tmp., !dbg !75 ; [#uses=1 type=double] [debug line = 7:2]
  call void @llvm.dbg.value(metadata !{double %result_int.2}, i64 0, metadata !76), !dbg !75 ; [debug line = 7:2] [debug variable = result_int]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @.str1, i32 %tmp.2) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 8:2]
  %i.2 = add i6 %i, 1, !dbg !78                   ; [#uses=1 type=i6] [debug line = 5:33]
  call void @llvm.dbg.value(metadata !{i6 %i.2}, i64 0, metadata !79), !dbg !78 ; [debug line = 5:33] [debug variable = i]
  br label %1, !dbg !78                           ; [debug line = 5:33]

; <label>:5                                       ; preds = %1
  %result_int.lcssa = phi double [ %result_int, %1 ] ; [#uses=1 type=double]
  ret double %result_int.lcssa, !dbg !80          ; [debug line = 9:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
define internal fastcc double @"__../source_files/src/dut.cpp_line36_proc"(double %.read) readnone {
entry:
  ret double %.read
}

; [#uses=1]
define internal fastcc { double, double } @Loop_sum_loop_proc(double %x, double %.read, double %.read1) readnone {
newFuncRoot:
  br label %0

sin_taylor_series_.exit2.exitStub:                ; preds = %0
  %sum_negative.0.loc.loc.out.0.lcssa = phi double [ %sum_negative.0.loc.loc.out, %0 ] ; [#uses=1 type=double]
  %sum_positive.0.loc.loc.out.0.lcssa = phi double [ %sum_positive.0.loc.loc.out, %0 ] ; [#uses=1 type=double]
  %mrv = insertvalue { double, double } undef, double %sum_positive.0.loc.loc.out.0.lcssa, 0 ; [#uses=1 type={ double, double }]
  %mrv.1 = insertvalue { double, double } %mrv, double %sum_negative.0.loc.loc.out.0.lcssa, 1 ; [#uses=1 type={ double, double }]
  ret { double, double } %mrv.1

; <label>:0                                       ; preds = %2, %newFuncRoot
  %sum_positive.0.loc.loc.out = phi double [ 0.000000e+00, %newFuncRoot ], [ %sum_positive, %2 ] ; [#uses=2 type=double]
  %sum_negative.0.loc.loc.out = phi double [ 0.000000e+00, %newFuncRoot ], [ %sum_negative, %2 ] ; [#uses=2 type=double]
  %i.0.i.i = phi i5 [ 1, %newFuncRoot ], [ %i, %2 ] ; [#uses=5 type=i5]
  %tmp.i = icmp ult i5 %i.0.i.i, -11, !dbg !81    ; [#uses=1 type=i1] [debug line = 31:24]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %2, label %sin_taylor_series_.exit2.exitStub, !dbg !81 ; [debug line = 31:24]

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str3) nounwind, !dbg !83 ; [debug line = 31:39]
  %tmp.1.i = call fastcc double @power(double %x, i5 %i.0.i.i) nounwind, !dbg !85 ; [#uses=1 type=double] [debug line = 32:34]
  %tmp.2.i = call fastcc double @fact(i5 %i.0.i.i) nounwind, !dbg !86 ; [#uses=1 type=double] [debug line = 32:48]
  %tmp.3.i = fdiv double %tmp.1.i, %tmp.2.i, !dbg !86 ; [#uses=1 type=double] [debug line = 32:48]
  %sum_positive = fadd double %sum_positive.0.loc.loc.out, %tmp.3.i, !dbg !86 ; [#uses=1 type=double] [debug line = 32:48]
  call void @llvm.dbg.value(metadata !{double %sum_positive}, i64 0, metadata !87) nounwind, !dbg !86 ; [debug line = 32:48] [debug variable = sum_positive]
  %tmp.5.i = add i5 %i.0.i.i, 2, !dbg !88         ; [#uses=2 type=i5] [debug line = 33:34]
  %tmp.6.i = call fastcc double @power(double %x, i5 %tmp.5.i) nounwind, !dbg !88 ; [#uses=1 type=double] [debug line = 33:34]
  %tmp.7.i = call fastcc double @fact(i5 %tmp.5.i) nounwind, !dbg !89 ; [#uses=1 type=double] [debug line = 33:50]
  %tmp.8.i = fdiv double %tmp.6.i, %tmp.7.i, !dbg !89 ; [#uses=1 type=double] [debug line = 33:50]
  %sum_negative = fadd double %sum_negative.0.loc.loc.out, %tmp.8.i, !dbg !89 ; [#uses=1 type=double] [debug line = 33:50]
  call void @llvm.dbg.value(metadata !{double %sum_negative}, i64 0, metadata !90) nounwind, !dbg !89 ; [debug line = 33:50] [debug variable = sum_negative]
  %i = add i5 %i.0.i.i, 4, !dbg !91               ; [#uses=1 type=i5] [debug line = 31:32]
  call void @llvm.dbg.value(metadata !{i5 %i}, i64 0, metadata !92) nounwind, !dbg !91 ; [debug line = 31:32] [debug variable = i]
  br label %0, !dbg !91                           ; [debug line = 31:32]
}

; [#uses=1]
define internal fastcc double @Block_sin_taylor_series_.exit2_proc(double %.read, double %.read1, double %.read2) readnone {
entry:
  %tmp..loc = fsub double %.read, %.read1, !dbg !50 ; [#uses=1 type=double] [debug line = 36:2]
  ret double %tmp..loc
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!19, !26, !32}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/hls_gui_proj/hls_sin_proj/solution1/.autopilot/db/dut.pragma.2.cpp", metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/hls_gui_proj", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !16}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fact", metadata !"fact", metadata !"_Z4facti", metadata !6, i32 1, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 1} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../source_files/src/dut.cpp", metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/hls_gui_proj", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"power", metadata !"power", metadata !"_Z5powerdi", metadata !6, i32 12, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 12} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !9, metadata !9, metadata !10}
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sin_taylor_series", metadata !"sin_taylor_series", metadata !"_Z17sin_taylor_seriesd", metadata !6, i32 23, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sin_taylor_series, null, null, metadata !11, i32 23} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{metadata !9, metadata !9}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!25 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !25}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!32 = metadata !{double (double)* @sin_taylor_series, metadata !20, metadata !21, metadata !33, metadata !23, metadata !24, metadata !25}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!34 = metadata !{i32 25, i32 1, metadata !35, null}
!35 = metadata !{i32 786443, metadata !16, i32 23, i32 36, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 63, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"x", metadata !40, metadata !"double", i32 0, i32 63}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, i32 0}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 63, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"return", metadata !46, metadata !"double", i32 0, i32 63}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 1, i32 0}
!48 = metadata !{i32 786689, metadata !16, metadata !"x", metadata !6, i32 16777239, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 23, i32 34, metadata !16, null}
!50 = metadata !{i32 36, i32 2, metadata !35, null}
!51 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 12, i32 22, metadata !13, null}
!53 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !6, i32 33554444, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 12, i32 29, metadata !13, null}
!55 = metadata !{i32 16, i32 26, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 16, i32 14, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !13, i32 12, i32 32, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 16, i32 40, metadata !59, null}
!59 = metadata !{i32 786443, metadata !56, i32 16, i32 39, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 17, i32 1, metadata !59, null}
!61 = metadata !{i32 18, i32 2, metadata !59, null}
!62 = metadata !{i32 786688, metadata !57, metadata !"result_int", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 19, i32 2, metadata !59, null}
!64 = metadata !{i32 16, i32 34, metadata !56, null}
!65 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !6, i32 16, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 20, i32 2, metadata !57, null}
!67 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777217, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 1, i32 17, metadata !5, null}
!69 = metadata !{i32 5, i32 25, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 5, i32 13, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !5, i32 1, i32 20, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 5, i32 39, metadata !73, null}
!73 = metadata !{i32 786443, metadata !70, i32 5, i32 38, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 6, i32 1, metadata !73, null}
!75 = metadata !{i32 7, i32 2, metadata !73, null}
!76 = metadata !{i32 786688, metadata !71, metadata !"result_int", metadata !6, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 8, i32 2, metadata !73, null}
!78 = metadata !{i32 5, i32 33, metadata !70, null}
!79 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 9, i32 2, metadata !71, null}
!81 = metadata !{i32 31, i32 24, metadata !82, null}
!82 = metadata !{i32 786443, metadata !35, i32 31, i32 12, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 31, i32 39, metadata !84, null}
!84 = metadata !{i32 786443, metadata !82, i32 31, i32 38, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 32, i32 34, metadata !84, null}
!86 = metadata !{i32 32, i32 48, metadata !84, null}
!87 = metadata !{i32 786688, metadata !35, metadata !"sum_positive", metadata !6, i32 28, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 33, i32 34, metadata !84, null}
!89 = metadata !{i32 33, i32 50, metadata !84, null}
!90 = metadata !{i32 786688, metadata !35, metadata !"sum_negative", metadata !6, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 31, i32 32, metadata !82, null}
!92 = metadata !{i32 786688, metadata !82, metadata !"i", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
