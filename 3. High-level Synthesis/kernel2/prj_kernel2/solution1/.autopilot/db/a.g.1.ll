; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel2.str = internal unnamed_addr constant [8 x i8] c"kernel2\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel2(i32* %array) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel2.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %array}, i64 0, metadata !20), !dbg !21 ; [debug line = 3:19] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %array, i32 1024) nounwind, !dbg !22 ; [debug line = 4:2]
  %array.addr = getelementptr inbounds i32* %array, i64 2, !dbg !24 ; [#uses=1 type=i32*] [debug line = 7:5]
  %reg2 = load i32* %array.addr, align 4, !dbg !24 ; [#uses=2 type=i32] [debug line = 7:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %reg2) nounwind
  call void @llvm.dbg.value(metadata !{i32 %reg2}, i64 0, metadata !25), !dbg !24 ; [debug line = 7:5] [debug variable = reg2]
  %array.addr.1 = getelementptr inbounds i32* %array, i64 1, !dbg !26 ; [#uses=1 type=i32*] [debug line = 8:5]
  %reg1 = load i32* %array.addr.1, align 4, !dbg !26 ; [#uses=2 type=i32] [debug line = 8:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %reg1) nounwind
  call void @llvm.dbg.value(metadata !{i32 %reg1}, i64 0, metadata !27), !dbg !26 ; [debug line = 8:5] [debug variable = reg1]
  %reg0 = load i32* %array, align 4, !dbg !28     ; [#uses=2 type=i32] [debug line = 9:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %reg0) nounwind
  call void @llvm.dbg.value(metadata !{i32 %reg0}, i64 0, metadata !29), !dbg !28 ; [debug line = 9:5] [debug variable = reg0]
  br label %1, !dbg !30                           ; [debug line = 11:9]

; <label>:1                                       ; preds = %2, %0
  %reg0.2 = phi i32 [ %reg1, %0 ], [ %reg1.2, %2 ] ; [#uses=2 type=i32]
  %reg1.2 = phi i32 [ %reg2, %0 ], [ %result, %2 ] ; [#uses=2 type=i32]
  %i = phi i32 [ 3, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %reg01 = phi i32 [ %reg0, %0 ], [ %reg0.2, %2 ] ; [#uses=1 type=i32]
  %exitcond = icmp eq i32 %i, 1024, !dbg !30      ; [#uses=1 type=i1] [debug line = 11:9]
  br i1 %exitcond, label %3, label %2, !dbg !30   ; [debug line = 11:9]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !32 ; [#uses=1 type=i32] [debug line = 11:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !34 ; [debug line = 12:1]
  %tmp = mul nsw i32 %reg01, %reg0.2, !dbg !35    ; [#uses=1 type=i32] [debug line = 14:2]
  %result = add nsw i32 %tmp, %reg1.2, !dbg !35   ; [#uses=2 type=i32] [debug line = 14:2]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !36), !dbg !35 ; [debug line = 14:2] [debug variable = result]
  %tmp.1 = sext i32 %i to i64, !dbg !37           ; [#uses=1 type=i64] [debug line = 15:6]
  %array.addr.2 = getelementptr inbounds i32* %array, i64 %tmp.1, !dbg !37 ; [#uses=1 type=i32*] [debug line = 15:6]
  store i32 %result, i32* %array.addr.2, align 4, !dbg !37 ; [debug line = 15:6]
  call void @llvm.dbg.value(metadata !{i32 %reg0.2}, i64 0, metadata !29), !dbg !38 ; [debug line = 17:6] [debug variable = reg0]
  call void @llvm.dbg.value(metadata !{i32 %reg1.2}, i64 0, metadata !27), !dbg !39 ; [debug line = 18:6] [debug variable = reg1]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !25), !dbg !40 ; [debug line = 19:6] [debug variable = reg2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !41 ; [#uses=0 type=i32] [debug line = 25:5]
  %i.1 = add nsw i32 %i, 1, !dbg !42              ; [#uses=1 type=i32] [debug line = 11:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !43), !dbg !42 ; [debug line = 11:22] [debug variable = i]
  br label %1, !dbg !42                           ; [debug line = 11:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !44                              ; [debug line = 27:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/kernel2.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel2", metadata !"kernel2", metadata !"_Z7kernel2Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @kernel2, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel2", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{void (i32*)* @kernel2, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
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
!24 = metadata !{i32 7, i32 5, metadata !23, null}
!25 = metadata !{i32 786688, metadata !23, metadata !"reg2", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!26 = metadata !{i32 8, i32 5, metadata !23, null}
!27 = metadata !{i32 786688, metadata !23, metadata !"reg1", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!28 = metadata !{i32 9, i32 5, metadata !23, null}
!29 = metadata !{i32 786688, metadata !23, metadata !"reg0", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 11, i32 9, metadata !31, null}
!31 = metadata !{i32 786443, metadata !23, i32 11, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 11, i32 27, metadata !33, null}
!33 = metadata !{i32 786443, metadata !31, i32 11, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 12, i32 1, metadata !33, null}
!35 = metadata !{i32 14, i32 2, metadata !33, null}
!36 = metadata !{i32 786688, metadata !23, metadata !"result", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!37 = metadata !{i32 15, i32 6, metadata !33, null}
!38 = metadata !{i32 17, i32 6, metadata !33, null}
!39 = metadata !{i32 18, i32 6, metadata !33, null}
!40 = metadata !{i32 19, i32 6, metadata !33, null}
!41 = metadata !{i32 25, i32 5, metadata !33, null}
!42 = metadata !{i32 11, i32 22, metadata !31, null}
!43 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 27, i32 1, metadata !23, null}
