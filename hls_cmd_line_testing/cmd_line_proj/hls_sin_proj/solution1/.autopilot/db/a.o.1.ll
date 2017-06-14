; ModuleID = '/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sin_taylor_series.str = internal unnamed_addr constant [18 x i8] c"sin_taylor_series\00" ; [#uses=1 type=[18 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"sum_loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"power_loop\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [10 x i8] c"fact_loop\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define double @sin_taylor_series(double %x) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @sin_taylor_series.str) nounwind
  call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !40), !dbg !41 ; [debug line = 23:34] [debug variable = x]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !42 ; [debug line = 25:1]
  br label %0

; <label>:0                                       ; preds = %1, %codeRepl
  %sum_positive.0.loc = phi double [ 0.000000e+00, %codeRepl ], [ %sum_positive, %1 ] ; [#uses=2 type=double]
  %sum_negative.0.loc = phi double [ 0.000000e+00, %codeRepl ], [ %sum_negative, %1 ] ; [#uses=2 type=double]
  %i.0.i = phi i32 [ 1, %codeRepl ], [ %i, %1 ]   ; [#uses=5 type=i32]
  %tmp = icmp slt i32 %i.0.i, 21, !dbg !44        ; [#uses=1 type=i1] [debug line = 31:24]
  br i1 %tmp, label %1, label %sin_taylor_series_.exit, !dbg !44 ; [debug line = 31:24]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !46 ; [debug line = 31:39]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !46 ; [#uses=1 type=i32] [debug line = 31:39]
  %tmp.1 = call fastcc double @power(double %x, i32 %i.0.i) nounwind, !dbg !48 ; [#uses=1 type=double] [debug line = 32:34]
  %tmp.2 = call fastcc double @fact(i32 %i.0.i) nounwind, !dbg !49 ; [#uses=1 type=double] [debug line = 32:48]
  %tmp.3 = fdiv double %tmp.1, %tmp.2, !dbg !49   ; [#uses=1 type=double] [debug line = 32:48]
  %sum_positive = fadd double %sum_positive.0.loc, %tmp.3, !dbg !49 ; [#uses=1 type=double] [debug line = 32:48]
  call void @llvm.dbg.value(metadata !{double %sum_positive}, i64 0, metadata !50) nounwind, !dbg !49 ; [debug line = 32:48] [debug variable = sum_positive]
  %tmp.5 = add nsw i32 %i.0.i, 2, !dbg !51        ; [#uses=2 type=i32] [debug line = 33:34]
  %tmp.6 = call fastcc double @power(double %x, i32 %tmp.5) nounwind, !dbg !51 ; [#uses=1 type=double] [debug line = 33:34]
  %tmp.7 = call fastcc double @fact(i32 %tmp.5) nounwind, !dbg !52 ; [#uses=1 type=double] [debug line = 33:50]
  %tmp.8 = fdiv double %tmp.6, %tmp.7, !dbg !52   ; [#uses=1 type=double] [debug line = 33:50]
  %sum_negative = fadd double %sum_negative.0.loc, %tmp.8, !dbg !52 ; [#uses=1 type=double] [debug line = 33:50]
  call void @llvm.dbg.value(metadata !{double %sum_negative}, i64 0, metadata !53) nounwind, !dbg !52 ; [debug line = 33:50] [debug variable = sum_negative]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !54 ; [#uses=0 type=i32] [debug line = 34:2]
  %i = add nsw i32 %i.0.i, 4, !dbg !55            ; [#uses=1 type=i32] [debug line = 31:32]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !56) nounwind, !dbg !55 ; [debug line = 31:32] [debug variable = i]
  br label %0, !dbg !55                           ; [debug line = 31:32]

sin_taylor_series_.exit:                          ; preds = %0
  %sum_negative.0.loc.0.lcssa = phi double [ %sum_negative.0.loc, %0 ] ; [#uses=1 type=double]
  %sum_positive.0.loc.0.lcssa = phi double [ %sum_positive.0.loc, %0 ] ; [#uses=1 type=double]
  %tmp.11 = fsub double %sum_positive.0.loc.0.lcssa, %sum_negative.0.loc.0.lcssa, !dbg !57 ; [#uses=1 type=double] [debug line = 36:2]
  ret double %tmp.11, !dbg !57                    ; [debug line = 36:2]
}

; [#uses=2]
define internal fastcc double @power(double %x, i32 %y) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !58), !dbg !59 ; [debug line = 12:22] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !60), !dbg !61 ; [debug line = 12:29] [debug variable = y]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !62 ; [debug line = 14:1]
  br label %1, !dbg !64                           ; [debug line = 16:26]

; <label>:1                                       ; preds = %2, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int.1, %2 ] ; [#uses=2 type=double]
  %i = phi i32 [ 1, %0 ], [ %i.1, %2 ]            ; [#uses=2 type=i32]
  %tmp = icmp sgt i32 %i, %y, !dbg !64            ; [#uses=1 type=i1] [debug line = 16:26]
  br i1 %tmp, label %3, label %2, !dbg !64        ; [debug line = 16:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !66 ; [debug line = 16:40]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !66 ; [#uses=1 type=i32] [debug line = 16:40]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !68 ; [debug line = 17:1]
  %result_int.1 = fmul double %result_int, %x, !dbg !69 ; [#uses=1 type=double] [debug line = 18:2]
  call void @llvm.dbg.value(metadata !{double %result_int.1}, i64 0, metadata !70), !dbg !69 ; [debug line = 18:2] [debug variable = result_int]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !71 ; [#uses=0 type=i32] [debug line = 19:2]
  %i.1 = add nsw i32 %i, 1, !dbg !72              ; [#uses=1 type=i32] [debug line = 16:34]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !73), !dbg !72 ; [debug line = 16:34] [debug variable = i]
  br label %1, !dbg !72                           ; [debug line = 16:34]

; <label>:3                                       ; preds = %1
  %result_int.0.lcssa = phi double [ %result_int, %1 ] ; [#uses=1 type=double]
  ret double %result_int.0.lcssa, !dbg !74        ; [debug line = 20:2]
}

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
define internal fastcc double @fact(i32 %x) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !75), !dbg !76 ; [debug line = 1:17] [debug variable = x]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !77 ; [debug line = 3:1]
  br label %1, !dbg !79                           ; [debug line = 5:25]

; <label>:1                                       ; preds = %2, %0
  %result_int = phi double [ 1.000000e+00, %0 ], [ %result_int.2, %2 ] ; [#uses=2 type=double]
  %i = phi i32 [ 1, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp sgt i32 %i, %x, !dbg !79            ; [#uses=1 type=i1] [debug line = 5:25]
  br i1 %tmp, label %3, label %2, !dbg !79        ; [debug line = 5:25]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !81 ; [debug line = 5:39]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !81 ; [#uses=1 type=i32] [debug line = 5:39]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !83 ; [debug line = 6:1]
  %tmp.14 = sitofp i32 %i to double, !dbg !84     ; [#uses=1 type=double] [debug line = 7:2]
  %result_int.2 = fmul double %result_int, %tmp.14, !dbg !84 ; [#uses=1 type=double] [debug line = 7:2]
  call void @llvm.dbg.value(metadata !{double %result_int.2}, i64 0, metadata !85), !dbg !84 ; [debug line = 7:2] [debug variable = result_int]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !86 ; [#uses=0 type=i32] [debug line = 8:2]
  %i.2 = add nsw i32 %i, 1, !dbg !87              ; [#uses=1 type=i32] [debug line = 5:33]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !88), !dbg !87 ; [debug line = 5:33] [debug variable = i]
  br label %1, !dbg !87                           ; [debug line = 5:33]

; <label>:3                                       ; preds = %1
  %result_int.0.lcssa = phi double [ %result_int, %1 ] ; [#uses=1 type=double]
  ret double %result_int.0.lcssa, !dbg !89        ; [debug line = 9:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_InlineSelf(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!19, !26, !32}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/.autopilot/db/dut.pragma.2.cpp", metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !16}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fact", metadata !"fact", metadata !"_Z4facti", metadata !6, i32 1, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (i32)* @fact, null, null, metadata !11, i32 1} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../source_files/src/dut.cpp", metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"power", metadata !"power", metadata !"_Z5powerdi", metadata !6, i32 12, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, i32)* @power, null, null, metadata !11, i32 12} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !9, metadata !9, metadata !10}
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sin_taylor_series", metadata !"sin_taylor_series", metadata !"_Z17sin_taylor_seriesd", metadata !6, i32 23, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sin_taylor_series, null, null, metadata !11, i32 23} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{metadata !9, metadata !9}
!19 = metadata !{double (i32)* @fact, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!25 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!26 = metadata !{double (double, i32)* @power, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !25}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!32 = metadata !{double (double)* @sin_taylor_series, metadata !20, metadata !21, metadata !33, metadata !23, metadata !24, metadata !25}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 63, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"return", metadata !38, metadata !"double", i32 0, i32 63}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 1, i32 0}
!40 = metadata !{i32 786689, metadata !16, metadata !"x", metadata !6, i32 16777239, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 23, i32 34, metadata !16, null}
!42 = metadata !{i32 25, i32 1, metadata !43, null}
!43 = metadata !{i32 786443, metadata !16, i32 23, i32 36, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 31, i32 24, metadata !45, null}
!45 = metadata !{i32 786443, metadata !43, i32 31, i32 12, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 31, i32 39, metadata !47, null}
!47 = metadata !{i32 786443, metadata !45, i32 31, i32 38, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 32, i32 34, metadata !47, null}
!49 = metadata !{i32 32, i32 48, metadata !47, null}
!50 = metadata !{i32 786688, metadata !43, metadata !"sum_positive", metadata !6, i32 28, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 33, i32 34, metadata !47, null}
!52 = metadata !{i32 33, i32 50, metadata !47, null}
!53 = metadata !{i32 786688, metadata !43, metadata !"sum_negative", metadata !6, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 34, i32 2, metadata !47, null}
!55 = metadata !{i32 31, i32 32, metadata !45, null}
!56 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 36, i32 2, metadata !43, null}
!58 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 12, i32 22, metadata !13, null}
!60 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !6, i32 33554444, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 12, i32 29, metadata !13, null}
!62 = metadata !{i32 14, i32 1, metadata !63, null}
!63 = metadata !{i32 786443, metadata !13, i32 12, i32 32, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 16, i32 26, metadata !65, null}
!65 = metadata !{i32 786443, metadata !63, i32 16, i32 14, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 16, i32 40, metadata !67, null}
!67 = metadata !{i32 786443, metadata !65, i32 16, i32 39, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 17, i32 1, metadata !67, null}
!69 = metadata !{i32 18, i32 2, metadata !67, null}
!70 = metadata !{i32 786688, metadata !63, metadata !"result_int", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 19, i32 2, metadata !67, null}
!72 = metadata !{i32 16, i32 34, metadata !65, null}
!73 = metadata !{i32 786688, metadata !65, metadata !"i", metadata !6, i32 16, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 20, i32 2, metadata !63, null}
!75 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777217, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 1, i32 17, metadata !5, null}
!77 = metadata !{i32 3, i32 1, metadata !78, null}
!78 = metadata !{i32 786443, metadata !5, i32 1, i32 20, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 5, i32 25, metadata !80, null}
!80 = metadata !{i32 786443, metadata !78, i32 5, i32 13, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 5, i32 39, metadata !82, null}
!82 = metadata !{i32 786443, metadata !80, i32 5, i32 38, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 6, i32 1, metadata !82, null}
!84 = metadata !{i32 7, i32 2, metadata !82, null}
!85 = metadata !{i32 786688, metadata !78, metadata !"result_int", metadata !6, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 8, i32 2, metadata !82, null}
!87 = metadata !{i32 5, i32 33, metadata !80, null}
!88 = metadata !{i32 786688, metadata !80, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 9, i32 2, metadata !78, null}
