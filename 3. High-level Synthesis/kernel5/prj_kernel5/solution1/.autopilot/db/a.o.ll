; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define float @_Z7kernel5fPfS_(float %bound, float* %a, float* %b) nounwind uwtable {
  %1 = alloca float, align 4                      ; [#uses=2 type=float*]
  %2 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %3 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %sum = alloca float, align 4                    ; [#uses=3 type=float*]
  store float %bound, float* %1, align 4
  call void @llvm.dbg.declare(metadata !{float* %1}, metadata !20), !dbg !21 ; [debug line = 3:21] [debug variable = bound]
  store float* %a, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !22), !dbg !23 ; [debug line = 3:34] [debug variable = a]
  store float* %b, float** %3, align 8
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !24), !dbg !25 ; [debug line = 3:49] [debug variable = b]
  %4 = load float** %2, align 8, !dbg !26         ; [#uses=1 type=float*] [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %4, i32 1024) nounwind, !dbg !26 ; [debug line = 4:2]
  %5 = load float** %3, align 8, !dbg !28         ; [#uses=1 type=float*] [debug line = 4:33]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %5, i32 1024) nounwind, !dbg !28 ; [debug line = 4:33]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !29), !dbg !31 ; [debug line = 5:9] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !32         ; [debug line = 5:12]
  call void @llvm.dbg.declare(metadata !{float* %sum}, metadata !33), !dbg !34 ; [debug line = 6:11] [debug variable = sum]
  br label %6, !dbg !35                           ; [debug line = 7:5]

; <label>:6                                       ; preds = %15, %0
  %7 = load float* %sum, align 4, !dbg !35        ; [#uses=1 type=float] [debug line = 7:5]
  %8 = load float* %1, align 4, !dbg !35          ; [#uses=1 type=float] [debug line = 7:5]
  %9 = fcmp olt float %7, %8, !dbg !35            ; [#uses=1 type=i1] [debug line = 7:5]
  br i1 %9, label %10, label %13, !dbg !35        ; [debug line = 7:5]

; <label>:10                                      ; preds = %6
  %11 = load i32* %i, align 4, !dbg !35           ; [#uses=1 type=i32] [debug line = 7:5]
  %12 = icmp slt i32 %11, 1024, !dbg !35          ; [#uses=1 type=i1] [debug line = 7:5]
  br label %13

; <label>:13                                      ; preds = %10, %6
  %14 = phi i1 [ false, %6 ], [ %12, %10 ]        ; [#uses=1 type=i1]
  br i1 %14, label %15, label %29

; <label>:15                                      ; preds = %13
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !36 ; [debug line = 8:6]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !38 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !39 ; [debug line = 10:1]
  %16 = load i32* %i, align 4, !dbg !40           ; [#uses=1 type=i32] [debug line = 11:2]
  %17 = sext i32 %16 to i64, !dbg !40             ; [#uses=1 type=i64] [debug line = 11:2]
  %18 = load float** %2, align 8, !dbg !40        ; [#uses=1 type=float*] [debug line = 11:2]
  %19 = getelementptr inbounds float* %18, i64 %17, !dbg !40 ; [#uses=1 type=float*] [debug line = 11:2]
  %20 = load float* %19, align 4, !dbg !40        ; [#uses=1 type=float] [debug line = 11:2]
  %21 = load i32* %i, align 4, !dbg !40           ; [#uses=1 type=i32] [debug line = 11:2]
  %22 = sext i32 %21 to i64, !dbg !40             ; [#uses=1 type=i64] [debug line = 11:2]
  %23 = load float** %3, align 8, !dbg !40        ; [#uses=1 type=float*] [debug line = 11:2]
  %24 = getelementptr inbounds float* %23, i64 %22, !dbg !40 ; [#uses=1 type=float*] [debug line = 11:2]
  %25 = load float* %24, align 4, !dbg !40        ; [#uses=1 type=float] [debug line = 11:2]
  %26 = fadd float %20, %25, !dbg !40             ; [#uses=1 type=float] [debug line = 11:2]
  store float %26, float* %sum, align 4, !dbg !40 ; [debug line = 11:2]
  %27 = load i32* %i, align 4, !dbg !41           ; [#uses=1 type=i32] [debug line = 12:9]
  %28 = add nsw i32 %27, 1, !dbg !41              ; [#uses=1 type=i32] [debug line = 12:9]
  store i32 %28, i32* %i, align 4, !dbg !41       ; [debug line = 12:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !42 ; [debug line = 13:5]
  br label %6, !dbg !42                           ; [debug line = 13:5]

; <label>:29                                      ; preds = %13
  %30 = load float* %sum, align 4, !dbg !43       ; [#uses=1 type=float] [debug line = 14:5]
  ret float %30, !dbg !43                         ; [debug line = 14:5]
}

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/kernel5.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel5", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel5", metadata !"kernel5", metadata !"_Z7kernel5fPfS_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float, float*, float*)* @_Z7kernel5fPfS_, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel5.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel5", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{float (float, float*, float*)* @_Z7kernel5fPfS_, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"bound", metadata !"a", metadata !"b"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{i32 786689, metadata !5, metadata !"bound", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 3, i32 21, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 3, i32 34, metadata !5, null}
!24 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 3, i32 49, metadata !5, null}
!26 = metadata !{i32 4, i32 2, metadata !27, null}
!27 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 4, i32 33, metadata !27, null}
!29 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !6, i32 5, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 5, i32 9, metadata !27, null}
!32 = metadata !{i32 5, i32 12, metadata !27, null}
!33 = metadata !{i32 786688, metadata !27, metadata !"sum", metadata !6, i32 6, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 6, i32 11, metadata !27, null}
!35 = metadata !{i32 7, i32 5, metadata !27, null}
!36 = metadata !{i32 8, i32 6, metadata !37, null}
!37 = metadata !{i32 786443, metadata !27, i32 8, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 9, i32 1, metadata !37, null}
!39 = metadata !{i32 10, i32 1, metadata !37, null}
!40 = metadata !{i32 11, i32 2, metadata !37, null}
!41 = metadata !{i32 12, i32 9, metadata !37, null}
!42 = metadata !{i32 13, i32 5, metadata !37, null}
!43 = metadata !{i32 14, i32 5, metadata !27, null}
