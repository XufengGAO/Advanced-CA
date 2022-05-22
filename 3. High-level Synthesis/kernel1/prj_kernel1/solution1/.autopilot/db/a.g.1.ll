; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel1/prj_kernel1/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel1.str = internal unnamed_addr constant [8 x i8] c"kernel1\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel1(i32* %array) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel1.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %array}, i64 0, metadata !20), !dbg !21 ; [debug line = 3:19] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %array, i32 1024) nounwind, !dbg !22 ; [debug line = 4:2]
  br label %1, !dbg !24                           ; [debug line = 6:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 1024, !dbg !24      ; [#uses=1 type=i1] [debug line = 6:9]
  br i1 %exitcond, label %3, label %2, !dbg !24   ; [debug line = 6:9]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !26 ; [#uses=1 type=i32] [debug line = 8:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !28 ; [debug line = 7:1]
  %tmp = sext i32 %i to i64, !dbg !29             ; [#uses=1 type=i64] [debug line = 8:2]
  %array.addr = getelementptr inbounds i32* %array, i64 %tmp, !dbg !29 ; [#uses=2 type=i32*] [debug line = 8:2]
  %array.load = load i32* %array.addr, align 4, !dbg !29 ; [#uses=2 type=i32] [debug line = 8:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %tmp.1 = mul nsw i32 %array.load, 5, !dbg !29   ; [#uses=1 type=i32] [debug line = 8:2]
  store i32 %tmp.1, i32* %array.addr, align 4, !dbg !29 ; [debug line = 8:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !30 ; [#uses=0 type=i32] [debug line = 8:24]
  %i.1 = add nsw i32 %i, 1, !dbg !31              ; [#uses=1 type=i32] [debug line = 6:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !32), !dbg !31 ; [debug line = 6:22] [debug variable = i]
  br label %1, !dbg !31                           ; [debug line = 6:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !33                              ; [debug line = 9:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel1/prj_kernel1/solution1/.autopilot/db/kernel1.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel1", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel1", metadata !"kernel1", metadata !"_Z7kernel1Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @kernel1, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel1.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel1", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{void (i32*)* @kernel1, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
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
!24 = metadata !{i32 6, i32 9, metadata !25, null}
!25 = metadata !{i32 786443, metadata !23, i32 6, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 8, i32 3, metadata !27, null}
!27 = metadata !{i32 786443, metadata !25, i32 8, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 7, i32 1, metadata !27, null}
!29 = metadata !{i32 8, i32 2, metadata !27, null}
!30 = metadata !{i32 8, i32 24, metadata !27, null}
!31 = metadata !{i32 6, i32 22, metadata !25, null}
!32 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 9, i32 1, metadata !23, null}
