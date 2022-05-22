; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel4/prj_kernel4/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @_Z7kernel4PiS_i(i32* %array, i32* %index, i32 %offset) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=6 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %3 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %sum = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store i32* %array, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !20), !dbg !21 ; [debug line = 3:18] [debug variable = array]
  store i32* %index, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !22), !dbg !23 ; [debug line = 3:35] [debug variable = index]
  store i32 %offset, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !24), !dbg !25 ; [debug line = 3:52] [debug variable = offset]
  %4 = load i32** %1, align 8, !dbg !26           ; [#uses=1 type=i32*] [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %4, i32 1024) nounwind, !dbg !26 ; [debug line = 4:2]
  %5 = load i32** %2, align 8, !dbg !28           ; [#uses=1 type=i32*] [debug line = 4:37]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %5, i32 1024) nounwind, !dbg !28 ; [debug line = 4:37]
  call void @llvm.dbg.declare(metadata !{i32* %sum}, metadata !29), !dbg !30 ; [debug line = 6:6] [debug variable = sum]
  %6 = load i32* %3, align 4, !dbg !31            ; [#uses=1 type=i32] [debug line = 6:25]
  %7 = sext i32 %6 to i64, !dbg !31               ; [#uses=1 type=i64] [debug line = 6:25]
  %8 = load i32** %1, align 8, !dbg !31           ; [#uses=1 type=i32*] [debug line = 6:25]
  %9 = getelementptr inbounds i32* %8, i64 %7, !dbg !31 ; [#uses=1 type=i32*] [debug line = 6:25]
  %10 = load i32* %9, align 4, !dbg !31           ; [#uses=1 type=i32] [debug line = 6:25]
  store i32 %10, i32* %sum, align 4, !dbg !31     ; [debug line = 6:25]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !32), !dbg !34 ; [debug line = 8:14] [debug variable = i]
  %11 = load i32* %3, align 4, !dbg !35           ; [#uses=1 type=i32] [debug line = 8:24]
  %12 = add nsw i32 %11, 1, !dbg !35              ; [#uses=1 type=i32] [debug line = 8:24]
  store i32 %12, i32* %i, align 4, !dbg !35       ; [debug line = 8:24]
  br label %13, !dbg !35                          ; [debug line = 8:24]

; <label>:13                                      ; preds = %43, %0
  %14 = load i32* %i, align 4, !dbg !35           ; [#uses=1 type=i32] [debug line = 8:24]
  %15 = icmp slt i32 %14, 1023, !dbg !35          ; [#uses=1 type=i1] [debug line = 8:24]
  br i1 %15, label %16, label %46, !dbg !35       ; [debug line = 8:24]

; <label>:16                                      ; preds = %13
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !36 ; [debug line = 8:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !38 ; [debug line = 9:1]
  %17 = load i32* %sum, align 4, !dbg !39         ; [#uses=1 type=i32] [debug line = 10:2]
  %18 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 10:2]
  %19 = sext i32 %18 to i64, !dbg !39             ; [#uses=1 type=i64] [debug line = 10:2]
  %20 = load i32** %2, align 8, !dbg !39          ; [#uses=1 type=i32*] [debug line = 10:2]
  %21 = getelementptr inbounds i32* %20, i64 %19, !dbg !39 ; [#uses=1 type=i32*] [debug line = 10:2]
  %22 = load i32* %21, align 4, !dbg !39          ; [#uses=1 type=i32] [debug line = 10:2]
  %23 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 10:2]
  %24 = sext i32 %23 to i64, !dbg !39             ; [#uses=1 type=i64] [debug line = 10:2]
  %25 = load i32** %1, align 8, !dbg !39          ; [#uses=1 type=i32*] [debug line = 10:2]
  %26 = getelementptr inbounds i32* %25, i64 %24, !dbg !39 ; [#uses=1 type=i32*] [debug line = 10:2]
  %27 = load i32* %26, align 4, !dbg !39          ; [#uses=1 type=i32] [debug line = 10:2]
  %28 = mul nsw i32 %22, %27, !dbg !39            ; [#uses=1 type=i32] [debug line = 10:2]
  %29 = sub nsw i32 %17, %28, !dbg !39            ; [#uses=1 type=i32] [debug line = 10:2]
  %30 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 10:2]
  %31 = sext i32 %30 to i64, !dbg !39             ; [#uses=1 type=i64] [debug line = 10:2]
  %32 = load i32** %2, align 8, !dbg !39          ; [#uses=1 type=i32*] [debug line = 10:2]
  %33 = getelementptr inbounds i32* %32, i64 %31, !dbg !39 ; [#uses=1 type=i32*] [debug line = 10:2]
  %34 = load i32* %33, align 4, !dbg !39          ; [#uses=1 type=i32] [debug line = 10:2]
  %35 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 10:2]
  %36 = add nsw i32 %35, 1, !dbg !39              ; [#uses=1 type=i32] [debug line = 10:2]
  %37 = sext i32 %36 to i64, !dbg !39             ; [#uses=1 type=i64] [debug line = 10:2]
  %38 = load i32** %1, align 8, !dbg !39          ; [#uses=1 type=i32*] [debug line = 10:2]
  %39 = getelementptr inbounds i32* %38, i64 %37, !dbg !39 ; [#uses=1 type=i32*] [debug line = 10:2]
  %40 = load i32* %39, align 4, !dbg !39          ; [#uses=1 type=i32] [debug line = 10:2]
  %41 = mul nsw i32 %34, %40, !dbg !39            ; [#uses=1 type=i32] [debug line = 10:2]
  %42 = add nsw i32 %29, %41, !dbg !39            ; [#uses=1 type=i32] [debug line = 10:2]
  store i32 %42, i32* %sum, align 4, !dbg !39     ; [debug line = 10:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !40 ; [debug line = 11:5]
  br label %43, !dbg !40                          ; [debug line = 11:5]

; <label>:43                                      ; preds = %16
  %44 = load i32* %i, align 4, !dbg !41           ; [#uses=1 type=i32] [debug line = 8:37]
  %45 = add nsw i32 %44, 1, !dbg !41              ; [#uses=1 type=i32] [debug line = 8:37]
  store i32 %45, i32* %i, align 4, !dbg !41       ; [debug line = 8:37]
  br label %13, !dbg !41                          ; [debug line = 8:37]

; <label>:46                                      ; preds = %13
  %47 = load i32* %sum, align 4, !dbg !42         ; [#uses=1 type=i32] [debug line = 13:5]
  %48 = load i32* %3, align 4, !dbg !42           ; [#uses=1 type=i32] [debug line = 13:5]
  %49 = sext i32 %48 to i64, !dbg !42             ; [#uses=1 type=i64] [debug line = 13:5]
  %50 = load i32** %1, align 8, !dbg !42          ; [#uses=1 type=i32*] [debug line = 13:5]
  %51 = getelementptr inbounds i32* %50, i64 %49, !dbg !42 ; [#uses=1 type=i32*] [debug line = 13:5]
  store i32 %47, i32* %51, align 4, !dbg !42      ; [debug line = 13:5]
  ret void, !dbg !43                              ; [debug line = 14:1]
}

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
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

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel4/prj_kernel4/solution1/.autopilot/db/kernel4.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel4", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel4", metadata !"kernel4", metadata !"_Z7kernel4PiS_i", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32)* @_Z7kernel4PiS_i, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel4.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel4", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{void (i32*, i32*, i32)* @_Z7kernel4PiS_i, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"array", metadata !"index", metadata !"offset"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{i32 786689, metadata !5, metadata !"array", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 3, i32 18, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"index", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 3, i32 35, metadata !5, null}
!24 = metadata !{i32 786689, metadata !5, metadata !"offset", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 3, i32 52, metadata !5, null}
!26 = metadata !{i32 4, i32 2, metadata !27, null}
!27 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 4, i32 37, metadata !27, null}
!29 = metadata !{i32 786688, metadata !27, metadata !"sum", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 6, i32 6, metadata !27, null}
!31 = metadata !{i32 6, i32 25, metadata !27, null}
!32 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 786443, metadata !27, i32 8, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 8, i32 14, metadata !33, null}
!35 = metadata !{i32 8, i32 24, metadata !33, null}
!36 = metadata !{i32 8, i32 43, metadata !37, null}
!37 = metadata !{i32 786443, metadata !33, i32 8, i32 42, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 9, i32 1, metadata !37, null}
!39 = metadata !{i32 10, i32 2, metadata !37, null}
!40 = metadata !{i32 11, i32 5, metadata !37, null}
!41 = metadata !{i32 8, i32 37, metadata !33, null}
!42 = metadata !{i32 13, i32 5, metadata !27, null}
!43 = metadata !{i32 14, i32 1, metadata !27, null}
