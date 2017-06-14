; ModuleID = '/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [10 x i8] c"fact_loop\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"power_loop\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"sum_loop\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=2]
define double @_Z4facti(i32 %x) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %result_int = alloca double, align 8            ; [#uses=4 type=double*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !34), !dbg !35 ; [debug line = 1:17] [debug variable = x]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !36 ; [debug line = 3:1]
  call void @llvm.dbg.declare(metadata !{double* %result_int}, metadata !38), !dbg !39 ; [debug line = 4:9] [debug variable = result_int]
  store double 1.000000e+00, double* %result_int, align 8, !dbg !40 ; [debug line = 4:25]
  br label %2, !dbg !40                           ; [debug line = 4:25]

; <label>:2                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !41), !dbg !43 ; [debug line = 5:22] [debug variable = i]
  store i32 1, i32* %i, align 4, !dbg !44         ; [debug line = 5:25]
  br label %3, !dbg !44                           ; [debug line = 5:25]

; <label>:3                                       ; preds = %12, %2
  %4 = load i32* %i, align 4, !dbg !44            ; [#uses=1 type=i32] [debug line = 5:25]
  %5 = load i32* %1, align 4, !dbg !44            ; [#uses=1 type=i32] [debug line = 5:25]
  %6 = icmp sle i32 %4, %5, !dbg !44              ; [#uses=1 type=i1] [debug line = 5:25]
  br i1 %6, label %7, label %15, !dbg !44         ; [debug line = 5:25]

; <label>:7                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !45 ; [debug line = 5:39]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !45 ; [debug line = 5:39]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !47 ; [debug line = 6:1]
  %8 = load double* %result_int, align 8, !dbg !48 ; [#uses=1 type=double] [debug line = 7:2]
  %9 = load i32* %i, align 4, !dbg !48            ; [#uses=1 type=i32] [debug line = 7:2]
  %10 = sitofp i32 %9 to double, !dbg !48         ; [#uses=1 type=double] [debug line = 7:2]
  %11 = fmul double %8, %10, !dbg !48             ; [#uses=1 type=double] [debug line = 7:2]
  store double %11, double* %result_int, align 8, !dbg !48 ; [debug line = 7:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !49 ; [debug line = 8:2]
  br label %12, !dbg !49                          ; [debug line = 8:2]

; <label>:12                                      ; preds = %7
  %13 = load i32* %i, align 4, !dbg !50           ; [#uses=1 type=i32] [debug line = 5:33]
  %14 = add nsw i32 %13, 1, !dbg !50              ; [#uses=1 type=i32] [debug line = 5:33]
  store i32 %14, i32* %i, align 4, !dbg !50       ; [debug line = 5:33]
  br label %3, !dbg !50                           ; [debug line = 5:33]

; <label>:15                                      ; preds = %3
  %16 = load double* %result_int, align 8, !dbg !51 ; [#uses=1 type=double] [debug line = 9:2]
  ret double %16, !dbg !51                        ; [debug line = 9:2]
}

; [#uses=12]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=2]
define double @_Z5powerdi(double %x, i32 %y) nounwind uwtable {
  %1 = alloca double, align 8                     ; [#uses=2 type=double*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %result_int = alloca double, align 8            ; [#uses=4 type=double*]
  %i = alloca i32, align 4                        ; [#uses=4 type=i32*]
  store double %x, double* %1, align 8
  call void @llvm.dbg.declare(metadata !{double* %1}, metadata !52), !dbg !53 ; [debug line = 12:22] [debug variable = x]
  store i32 %y, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !54), !dbg !55 ; [debug line = 12:29] [debug variable = y]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 14:1]
  call void @llvm.dbg.declare(metadata !{double* %result_int}, metadata !58), !dbg !59 ; [debug line = 15:9] [debug variable = result_int]
  store double 1.000000e+00, double* %result_int, align 8, !dbg !60 ; [debug line = 15:25]
  br label %3, !dbg !60                           ; [debug line = 15:25]

; <label>:3                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !61), !dbg !63 ; [debug line = 16:23] [debug variable = i]
  store i32 1, i32* %i, align 4, !dbg !64         ; [debug line = 16:26]
  br label %4, !dbg !64                           ; [debug line = 16:26]

; <label>:4                                       ; preds = %12, %3
  %5 = load i32* %i, align 4, !dbg !64            ; [#uses=1 type=i32] [debug line = 16:26]
  %6 = load i32* %2, align 4, !dbg !64            ; [#uses=1 type=i32] [debug line = 16:26]
  %7 = icmp sle i32 %5, %6, !dbg !64              ; [#uses=1 type=i1] [debug line = 16:26]
  br i1 %7, label %8, label %15, !dbg !64         ; [debug line = 16:26]

; <label>:8                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !65 ; [debug line = 16:40]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !65 ; [debug line = 16:40]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !67 ; [debug line = 17:1]
  %9 = load double* %result_int, align 8, !dbg !68 ; [#uses=1 type=double] [debug line = 18:2]
  %10 = load double* %1, align 8, !dbg !68        ; [#uses=1 type=double] [debug line = 18:2]
  %11 = fmul double %9, %10, !dbg !68             ; [#uses=1 type=double] [debug line = 18:2]
  store double %11, double* %result_int, align 8, !dbg !68 ; [debug line = 18:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !69 ; [debug line = 19:2]
  br label %12, !dbg !69                          ; [debug line = 19:2]

; <label>:12                                      ; preds = %8
  %13 = load i32* %i, align 4, !dbg !70           ; [#uses=1 type=i32] [debug line = 16:34]
  %14 = add nsw i32 %13, 1, !dbg !70              ; [#uses=1 type=i32] [debug line = 16:34]
  store i32 %14, i32* %i, align 4, !dbg !70       ; [debug line = 16:34]
  br label %4, !dbg !70                           ; [debug line = 16:34]

; <label>:15                                      ; preds = %4
  %16 = load double* %result_int, align 8, !dbg !71 ; [#uses=1 type=double] [debug line = 20:2]
  ret double %16, !dbg !71                        ; [debug line = 20:2]
}

; [#uses=0]
define double @_Z17sin_taylor_seriesd(double %x) nounwind uwtable {
  %1 = alloca double, align 8                     ; [#uses=3 type=double*]
  %n = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %sum_positive = alloca double, align 8          ; [#uses=4 type=double*]
  %sum_negative = alloca double, align 8          ; [#uses=4 type=double*]
  %i = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store double %x, double* %1, align 8
  call void @llvm.dbg.declare(metadata !{double* %1}, metadata !72), !dbg !73 ; [debug line = 23:34] [debug variable = x]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !74 ; [debug line = 25:1]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !76), !dbg !77 ; [debug line = 27:6] [debug variable = n]
  store i32 20, i32* %n, align 4, !dbg !78        ; [debug line = 27:12]
  call void @llvm.dbg.declare(metadata !{double* %sum_positive}, metadata !79), !dbg !80 ; [debug line = 28:9] [debug variable = sum_positive]
  store double 0.000000e+00, double* %sum_positive, align 8, !dbg !81 ; [debug line = 28:27]
  call void @llvm.dbg.declare(metadata !{double* %sum_negative}, metadata !82), !dbg !83 ; [debug line = 29:9] [debug variable = sum_negative]
  store double 0.000000e+00, double* %sum_negative, align 8, !dbg !84 ; [debug line = 29:26]
  br label %2, !dbg !84                           ; [debug line = 29:26]

; <label>:2                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !85), !dbg !87 ; [debug line = 31:21] [debug variable = i]
  store i32 1, i32* %i, align 4, !dbg !88         ; [debug line = 31:24]
  br label %3, !dbg !88                           ; [debug line = 31:24]

; <label>:3                                       ; preds = %26, %2
  %4 = load i32* %i, align 4, !dbg !88            ; [#uses=1 type=i32] [debug line = 31:24]
  %5 = load i32* %n, align 4, !dbg !88            ; [#uses=1 type=i32] [debug line = 31:24]
  %6 = icmp sle i32 %4, %5, !dbg !88              ; [#uses=1 type=i1] [debug line = 31:24]
  br i1 %6, label %7, label %29, !dbg !88         ; [debug line = 31:24]

; <label>:7                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !89 ; [debug line = 31:39]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !89 ; [debug line = 31:39]
  %8 = load double* %sum_positive, align 8, !dbg !91 ; [#uses=1 type=double] [debug line = 32:3]
  %9 = load double* %1, align 8, !dbg !92         ; [#uses=1 type=double] [debug line = 32:34]
  %10 = load i32* %i, align 4, !dbg !92           ; [#uses=1 type=i32] [debug line = 32:34]
  %11 = call double @_Z5powerdi(double %9, i32 %10), !dbg !92 ; [#uses=1 type=double] [debug line = 32:34]
  %12 = load i32* %i, align 4, !dbg !93           ; [#uses=1 type=i32] [debug line = 32:48]
  %13 = call double @_Z4facti(i32 %12), !dbg !93  ; [#uses=1 type=double] [debug line = 32:48]
  %14 = fdiv double %11, %13, !dbg !93            ; [#uses=1 type=double] [debug line = 32:48]
  %15 = fadd double %8, %14, !dbg !93             ; [#uses=1 type=double] [debug line = 32:48]
  store double %15, double* %sum_positive, align 8, !dbg !93 ; [debug line = 32:48]
  %16 = load double* %sum_negative, align 8, !dbg !94 ; [#uses=1 type=double] [debug line = 33:3]
  %17 = load double* %1, align 8, !dbg !95        ; [#uses=1 type=double] [debug line = 33:34]
  %18 = load i32* %i, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 33:34]
  %19 = add nsw i32 %18, 2, !dbg !95              ; [#uses=1 type=i32] [debug line = 33:34]
  %20 = call double @_Z5powerdi(double %17, i32 %19), !dbg !95 ; [#uses=1 type=double] [debug line = 33:34]
  %21 = load i32* %i, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 33:50]
  %22 = add nsw i32 %21, 2, !dbg !96              ; [#uses=1 type=i32] [debug line = 33:50]
  %23 = call double @_Z4facti(i32 %22), !dbg !96  ; [#uses=1 type=double] [debug line = 33:50]
  %24 = fdiv double %20, %23, !dbg !96            ; [#uses=1 type=double] [debug line = 33:50]
  %25 = fadd double %16, %24, !dbg !96            ; [#uses=1 type=double] [debug line = 33:50]
  store double %25, double* %sum_negative, align 8, !dbg !96 ; [debug line = 33:50]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !97 ; [debug line = 34:2]
  br label %26, !dbg !97                          ; [debug line = 34:2]

; <label>:26                                      ; preds = %7
  %27 = load i32* %i, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 31:32]
  %28 = add nsw i32 %27, 4, !dbg !98              ; [#uses=1 type=i32] [debug line = 31:32]
  store i32 %28, i32* %i, align 4, !dbg !98       ; [debug line = 31:32]
  br label %3, !dbg !98                           ; [debug line = 31:32]

; <label>:29                                      ; preds = %3
  %30 = load double* %sum_positive, align 8, !dbg !99 ; [#uses=1 type=double] [debug line = 36:2]
  %31 = load double* %sum_negative, align 8, !dbg !99 ; [#uses=1 type=double] [debug line = 36:2]
  %32 = fsub double %30, %31, !dbg !99            ; [#uses=1 type=double] [debug line = 36:2]
  ret double %32, !dbg !99                        ; [debug line = 36:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!19, !26, !32}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/.autopilot/db/dut.pragma.2.cpp", metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !16}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fact", metadata !"fact", metadata !"_Z4facti", metadata !6, i32 1, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (i32)* @_Z4facti, null, null, metadata !11, i32 1} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../source_files/src/dut.cpp", metadata !"/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"power", metadata !"power", metadata !"_Z5powerdi", metadata !6, i32 12, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, i32)* @_Z5powerdi, null, null, metadata !11, i32 12} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !9, metadata !9, metadata !10}
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sin_taylor_series", metadata !"sin_taylor_series", metadata !"_Z17sin_taylor_seriesd", metadata !6, i32 23, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @_Z17sin_taylor_seriesd, null, null, metadata !11, i32 23} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{metadata !9, metadata !9}
!19 = metadata !{double (i32)* @_Z4facti, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!25 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!26 = metadata !{double (double, i32)* @_Z5powerdi, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !25}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!32 = metadata !{double (double)* @_Z17sin_taylor_seriesd, metadata !20, metadata !21, metadata !33, metadata !23, metadata !24, metadata !25}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!34 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777217, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 1, i32 17, metadata !5, null}
!36 = metadata !{i32 3, i32 1, metadata !37, null}
!37 = metadata !{i32 786443, metadata !5, i32 1, i32 20, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786688, metadata !37, metadata !"result_int", metadata !6, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 4, i32 9, metadata !37, null}
!40 = metadata !{i32 4, i32 25, metadata !37, null}
!41 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786443, metadata !37, i32 5, i32 13, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 5, i32 22, metadata !42, null}
!44 = metadata !{i32 5, i32 25, metadata !42, null}
!45 = metadata !{i32 5, i32 39, metadata !46, null}
!46 = metadata !{i32 786443, metadata !42, i32 5, i32 38, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 6, i32 1, metadata !46, null}
!48 = metadata !{i32 7, i32 2, metadata !46, null}
!49 = metadata !{i32 8, i32 2, metadata !46, null}
!50 = metadata !{i32 5, i32 33, metadata !42, null}
!51 = metadata !{i32 9, i32 2, metadata !37, null}
!52 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 12, i32 22, metadata !13, null}
!54 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !6, i32 33554444, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 12, i32 29, metadata !13, null}
!56 = metadata !{i32 14, i32 1, metadata !57, null}
!57 = metadata !{i32 786443, metadata !13, i32 12, i32 32, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786688, metadata !57, metadata !"result_int", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 15, i32 9, metadata !57, null}
!60 = metadata !{i32 15, i32 25, metadata !57, null}
!61 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !6, i32 16, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786443, metadata !57, i32 16, i32 14, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 16, i32 23, metadata !62, null}
!64 = metadata !{i32 16, i32 26, metadata !62, null}
!65 = metadata !{i32 16, i32 40, metadata !66, null}
!66 = metadata !{i32 786443, metadata !62, i32 16, i32 39, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 17, i32 1, metadata !66, null}
!68 = metadata !{i32 18, i32 2, metadata !66, null}
!69 = metadata !{i32 19, i32 2, metadata !66, null}
!70 = metadata !{i32 16, i32 34, metadata !62, null}
!71 = metadata !{i32 20, i32 2, metadata !57, null}
!72 = metadata !{i32 786689, metadata !16, metadata !"x", metadata !6, i32 16777239, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 23, i32 34, metadata !16, null}
!74 = metadata !{i32 25, i32 1, metadata !75, null}
!75 = metadata !{i32 786443, metadata !16, i32 23, i32 36, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786688, metadata !75, metadata !"n", metadata !6, i32 27, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 27, i32 6, metadata !75, null}
!78 = metadata !{i32 27, i32 12, metadata !75, null}
!79 = metadata !{i32 786688, metadata !75, metadata !"sum_positive", metadata !6, i32 28, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 28, i32 9, metadata !75, null}
!81 = metadata !{i32 28, i32 27, metadata !75, null}
!82 = metadata !{i32 786688, metadata !75, metadata !"sum_negative", metadata !6, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 29, i32 9, metadata !75, null}
!84 = metadata !{i32 29, i32 26, metadata !75, null}
!85 = metadata !{i32 786688, metadata !86, metadata !"i", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 786443, metadata !75, i32 31, i32 12, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 31, i32 21, metadata !86, null}
!88 = metadata !{i32 31, i32 24, metadata !86, null}
!89 = metadata !{i32 31, i32 39, metadata !90, null}
!90 = metadata !{i32 786443, metadata !86, i32 31, i32 38, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 32, i32 3, metadata !90, null}
!92 = metadata !{i32 32, i32 34, metadata !90, null}
!93 = metadata !{i32 32, i32 48, metadata !90, null}
!94 = metadata !{i32 33, i32 3, metadata !90, null}
!95 = metadata !{i32 33, i32 34, metadata !90, null}
!96 = metadata !{i32 33, i32 50, metadata !90, null}
!97 = metadata !{i32 34, i32 2, metadata !90, null}
!98 = metadata !{i32 31, i32 32, metadata !86, null}
!99 = metadata !{i32 36, i32 2, metadata !75, null}
