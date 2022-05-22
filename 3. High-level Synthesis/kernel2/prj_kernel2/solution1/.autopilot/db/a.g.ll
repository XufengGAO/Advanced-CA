; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @_Z7kernel2Pi(i32* %array) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=6 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %reg2 = alloca i32, align 4                     ; [#uses=4 type=i32*]
  %reg1 = alloca i32, align 4                     ; [#uses=4 type=i32*]
  %reg0 = alloca i32, align 4                     ; [#uses=3 type=i32*]
  %result = alloca i32, align 4                   ; [#uses=3 type=i32*]
  store i32* %array, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !20), !dbg !21 ; [debug line = 3:19] [debug variable = array]
  %2 = load i32** %1, align 8, !dbg !22           ; [#uses=1 type=i32*] [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %2, i32 1024) nounwind, !dbg !22 ; [debug line = 4:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !24), !dbg !25 ; [debug line = 5:9] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %reg2}, metadata !26), !dbg !27 ; [debug line = 5:12] [debug variable = reg2]
  call void @llvm.dbg.declare(metadata !{i32* %reg1}, metadata !28), !dbg !29 ; [debug line = 5:18] [debug variable = reg1]
  call void @llvm.dbg.declare(metadata !{i32* %reg0}, metadata !30), !dbg !31 ; [debug line = 5:24] [debug variable = reg0]
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !32), !dbg !33 ; [debug line = 5:30] [debug variable = result]
  %3 = load i32** %1, align 8, !dbg !34           ; [#uses=1 type=i32*] [debug line = 7:5]
  %4 = getelementptr inbounds i32* %3, i64 2, !dbg !34 ; [#uses=1 type=i32*] [debug line = 7:5]
  %5 = load i32* %4, align 4, !dbg !34            ; [#uses=1 type=i32] [debug line = 7:5]
  store i32 %5, i32* %reg2, align 4, !dbg !34     ; [debug line = 7:5]
  %6 = load i32** %1, align 8, !dbg !35           ; [#uses=1 type=i32*] [debug line = 8:5]
  %7 = getelementptr inbounds i32* %6, i64 1, !dbg !35 ; [#uses=1 type=i32*] [debug line = 8:5]
  %8 = load i32* %7, align 4, !dbg !35            ; [#uses=1 type=i32] [debug line = 8:5]
  store i32 %8, i32* %reg1, align 4, !dbg !35     ; [debug line = 8:5]
  %9 = load i32** %1, align 8, !dbg !36           ; [#uses=1 type=i32*] [debug line = 9:5]
  %10 = getelementptr inbounds i32* %9, i64 0, !dbg !36 ; [#uses=1 type=i32*] [debug line = 9:5]
  %11 = load i32* %10, align 4, !dbg !36          ; [#uses=1 type=i32] [debug line = 9:5]
  store i32 %11, i32* %reg0, align 4, !dbg !36    ; [debug line = 9:5]
  store i32 3, i32* %i, align 4, !dbg !37         ; [debug line = 11:9]
  br label %12, !dbg !37                          ; [debug line = 11:9]

; <label>:12                                      ; preds = %29, %0
  %13 = load i32* %i, align 4, !dbg !37           ; [#uses=1 type=i32] [debug line = 11:9]
  %14 = icmp slt i32 %13, 1024, !dbg !37          ; [#uses=1 type=i1] [debug line = 11:9]
  br i1 %14, label %15, label %32, !dbg !37       ; [debug line = 11:9]

; <label>:15                                      ; preds = %12
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !39 ; [debug line = 11:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !41 ; [debug line = 12:1]
  %16 = load i32* %reg2, align 4, !dbg !42        ; [#uses=1 type=i32] [debug line = 14:2]
  %17 = load i32* %reg1, align 4, !dbg !42        ; [#uses=1 type=i32] [debug line = 14:2]
  %18 = load i32* %reg0, align 4, !dbg !42        ; [#uses=1 type=i32] [debug line = 14:2]
  %19 = mul nsw i32 %17, %18, !dbg !42            ; [#uses=1 type=i32] [debug line = 14:2]
  %20 = add nsw i32 %16, %19, !dbg !42            ; [#uses=1 type=i32] [debug line = 14:2]
  store i32 %20, i32* %result, align 4, !dbg !42  ; [debug line = 14:2]
  %21 = load i32* %result, align 4, !dbg !43      ; [#uses=1 type=i32] [debug line = 15:6]
  %22 = load i32* %i, align 4, !dbg !43           ; [#uses=1 type=i32] [debug line = 15:6]
  %23 = sext i32 %22 to i64, !dbg !43             ; [#uses=1 type=i64] [debug line = 15:6]
  %24 = load i32** %1, align 8, !dbg !43          ; [#uses=1 type=i32*] [debug line = 15:6]
  %25 = getelementptr inbounds i32* %24, i64 %23, !dbg !43 ; [#uses=1 type=i32*] [debug line = 15:6]
  store i32 %21, i32* %25, align 4, !dbg !43      ; [debug line = 15:6]
  %26 = load i32* %reg1, align 4, !dbg !44        ; [#uses=1 type=i32] [debug line = 17:6]
  store i32 %26, i32* %reg0, align 4, !dbg !44    ; [debug line = 17:6]
  %27 = load i32* %reg2, align 4, !dbg !45        ; [#uses=1 type=i32] [debug line = 18:6]
  store i32 %27, i32* %reg1, align 4, !dbg !45    ; [debug line = 18:6]
  %28 = load i32* %result, align 4, !dbg !46      ; [#uses=1 type=i32] [debug line = 19:6]
  store i32 %28, i32* %reg2, align 4, !dbg !46    ; [debug line = 19:6]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !47 ; [debug line = 25:5]
  br label %29, !dbg !47                          ; [debug line = 25:5]

; <label>:29                                      ; preds = %15
  %30 = load i32* %i, align 4, !dbg !48           ; [#uses=1 type=i32] [debug line = 11:22]
  %31 = add nsw i32 %30, 1, !dbg !48              ; [#uses=1 type=i32] [debug line = 11:22]
  store i32 %31, i32* %i, align 4, !dbg !48       ; [debug line = 11:22]
  br label %12, !dbg !48                          ; [debug line = 11:22]

; <label>:32                                      ; preds = %12
  ret void, !dbg !49                              ; [debug line = 27:1]
}

; [#uses=6]
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

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/kernel2.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel2", metadata !"kernel2", metadata !"_Z7kernel2Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @_Z7kernel2Pi, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel2", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{void (i32*)* @_Z7kernel2Pi, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
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
!26 = metadata !{i32 786688, metadata !23, metadata !"reg2", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!27 = metadata !{i32 5, i32 12, metadata !23, null}
!28 = metadata !{i32 786688, metadata !23, metadata !"reg1", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!29 = metadata !{i32 5, i32 18, metadata !23, null}
!30 = metadata !{i32 786688, metadata !23, metadata !"reg0", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 5, i32 24, metadata !23, null}
!32 = metadata !{i32 786688, metadata !23, metadata !"result", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 5, i32 30, metadata !23, null}
!34 = metadata !{i32 7, i32 5, metadata !23, null}
!35 = metadata !{i32 8, i32 5, metadata !23, null}
!36 = metadata !{i32 9, i32 5, metadata !23, null}
!37 = metadata !{i32 11, i32 9, metadata !38, null}
!38 = metadata !{i32 786443, metadata !23, i32 11, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 11, i32 27, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 11, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 12, i32 1, metadata !40, null}
!42 = metadata !{i32 14, i32 2, metadata !40, null}
!43 = metadata !{i32 15, i32 6, metadata !40, null}
!44 = metadata !{i32 17, i32 6, metadata !40, null}
!45 = metadata !{i32 18, i32 6, metadata !40, null}
!46 = metadata !{i32 19, i32 6, metadata !40, null}
!47 = metadata !{i32 25, i32 5, metadata !40, null}
!48 = metadata !{i32 11, i32 22, metadata !38, null}
!49 = metadata !{i32 27, i32 1, metadata !23, null}
