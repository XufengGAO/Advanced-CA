; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel1/prj_kernel1/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @_Z7kernel1Pi(i32* %array) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32* %array, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !20), !dbg !21 ; [debug line = 3:19] [debug variable = array]
  %2 = load i32** %1, align 8, !dbg !22           ; [#uses=1 type=i32*] [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %2, i32 1024) nounwind, !dbg !22 ; [debug line = 4:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !24), !dbg !25 ; [debug line = 5:9] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !26         ; [debug line = 6:9]
  br label %3, !dbg !26                           ; [debug line = 6:9]

; <label>:3                                       ; preds = %17, %0
  %4 = load i32* %i, align 4, !dbg !26            ; [#uses=1 type=i32] [debug line = 6:9]
  %5 = icmp slt i32 %4, 1024, !dbg !26            ; [#uses=1 type=i1] [debug line = 6:9]
  br i1 %5, label %6, label %20, !dbg !26         ; [debug line = 6:9]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !28 ; [debug line = 8:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !30 ; [debug line = 7:1]
  %7 = load i32* %i, align 4, !dbg !31            ; [#uses=1 type=i32] [debug line = 8:2]
  %8 = sext i32 %7 to i64, !dbg !31               ; [#uses=1 type=i64] [debug line = 8:2]
  %9 = load i32** %1, align 8, !dbg !31           ; [#uses=1 type=i32*] [debug line = 8:2]
  %10 = getelementptr inbounds i32* %9, i64 %8, !dbg !31 ; [#uses=1 type=i32*] [debug line = 8:2]
  %11 = load i32* %10, align 4, !dbg !31          ; [#uses=1 type=i32] [debug line = 8:2]
  %12 = mul nsw i32 %11, 5, !dbg !31              ; [#uses=1 type=i32] [debug line = 8:2]
  %13 = load i32* %i, align 4, !dbg !31           ; [#uses=1 type=i32] [debug line = 8:2]
  %14 = sext i32 %13 to i64, !dbg !31             ; [#uses=1 type=i64] [debug line = 8:2]
  %15 = load i32** %1, align 8, !dbg !31          ; [#uses=1 type=i32*] [debug line = 8:2]
  %16 = getelementptr inbounds i32* %15, i64 %14, !dbg !31 ; [#uses=1 type=i32*] [debug line = 8:2]
  store i32 %12, i32* %16, align 4, !dbg !31      ; [debug line = 8:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !32 ; [debug line = 8:24]
  br label %17, !dbg !32                          ; [debug line = 8:24]

; <label>:17                                      ; preds = %6
  %18 = load i32* %i, align 4, !dbg !33           ; [#uses=1 type=i32] [debug line = 6:22]
  %19 = add nsw i32 %18, 1, !dbg !33              ; [#uses=1 type=i32] [debug line = 6:22]
  store i32 %19, i32* %i, align 4, !dbg !33       ; [debug line = 6:22]
  br label %3, !dbg !33                           ; [debug line = 6:22]

; <label>:20                                      ; preds = %3
  ret void, !dbg !34                              ; [debug line = 9:1]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel1/prj_kernel1/solution1/.autopilot/db/kernel1.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel1", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel1", metadata !"kernel1", metadata !"_Z7kernel1Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @_Z7kernel1Pi, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel1.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel1", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{void (i32*)* @_Z7kernel1Pi, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{i32 786689, metadata !5, metadata !"array", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 3, i32 19, metadata !5, null}
!22 = metadata !{i32 4, i32 2, metadata !23, null}
!23 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!25 = metadata !{i32 5, i32 9, metadata !23, null}
!26 = metadata !{i32 6, i32 9, metadata !27, null}
!27 = metadata !{i32 786443, metadata !23, i32 6, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 8, i32 3, metadata !29, null}
!29 = metadata !{i32 786443, metadata !27, i32 8, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 7, i32 1, metadata !29, null}
!31 = metadata !{i32 8, i32 2, metadata !29, null}
!32 = metadata !{i32 8, i32 24, metadata !29, null}
!33 = metadata !{i32 6, i32 22, metadata !27, null}
!34 = metadata !{i32 9, i32 1, metadata !23, null}
