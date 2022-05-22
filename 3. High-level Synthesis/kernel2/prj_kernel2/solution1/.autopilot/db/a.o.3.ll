; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel2_str = internal unnamed_addr constant [8 x i8] c"kernel2\00" ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel2([1024 x i32]* %array) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %array) nounwind, !map !7
  %array_addr = getelementptr [1024 x i32]* %array, i64 0, i64 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel2_str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %array}, i64 0, metadata !13), !dbg !25 ; [debug line = 3:19] [debug variable = array]
  %array_addr_1 = getelementptr [1024 x i32]* %array, i64 0, i64 2, !dbg !26 ; [#uses=1 type=i32*] [debug line = 7:5]
  %reg2 = load i32* %array_addr_1, align 4, !dbg !26 ; [#uses=1 type=i32] [debug line = 7:5]
  call void @llvm.dbg.value(metadata !{i32 %reg2}, i64 0, metadata !28), !dbg !26 ; [debug line = 7:5] [debug variable = reg2]
  %array_addr_2 = getelementptr [1024 x i32]* %array, i64 0, i64 1, !dbg !29 ; [#uses=1 type=i32*] [debug line = 8:5]
  %reg1 = load i32* %array_addr_2, align 4, !dbg !29 ; [#uses=1 type=i32] [debug line = 8:5]
  call void @llvm.dbg.value(metadata !{i32 %reg1}, i64 0, metadata !30), !dbg !29 ; [debug line = 8:5] [debug variable = reg1]
  %reg0 = load i32* %array_addr, align 4, !dbg !31 ; [#uses=1 type=i32] [debug line = 9:5]
  call void @llvm.dbg.value(metadata !{i32 %reg0}, i64 0, metadata !32), !dbg !31 ; [debug line = 9:5] [debug variable = reg0]
  br label %1, !dbg !33                           ; [debug line = 11:9]

; <label>:1                                       ; preds = %2, %0
  %reg0_1 = phi i32 [ %reg1, %0 ], [ %reg1_1, %2 ] ; [#uses=2 type=i32]
  %reg1_1 = phi i32 [ %reg2, %0 ], [ %result, %2 ] ; [#uses=2 type=i32]
  %i = phi i11 [ 3, %0 ], [ %i_1, %2 ]            ; [#uses=3 type=i11]
  %reg = phi i32 [ %reg0, %0 ], [ %reg0_1, %2 ]   ; [#uses=1 type=i32]
  %exitcond = icmp eq i11 %i, -1024, !dbg !33     ; [#uses=1 type=i1] [debug line = 11:9]
  br i1 %exitcond, label %3, label %2, !dbg !33   ; [debug line = 11:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1021, i64 1021, i64 1021) nounwind ; [#uses=0 type=i32]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind, !dbg !35 ; [#uses=1 type=i32] [debug line = 11:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !37 ; [debug line = 12:1]
  %tmp = mul nsw i32 %reg0_1, %reg, !dbg !38      ; [#uses=1 type=i32] [debug line = 14:2]
  %result = add nsw i32 %tmp, %reg1_1, !dbg !38   ; [#uses=2 type=i32] [debug line = 14:2]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !39), !dbg !38 ; [debug line = 14:2] [debug variable = result]
  %tmp_1 = zext i11 %i to i64, !dbg !40           ; [#uses=1 type=i64] [debug line = 15:6]
  %array_addr_3 = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp_1, !dbg !40 ; [#uses=1 type=i32*] [debug line = 15:6]
  store i32 %result, i32* %array_addr_3, align 4, !dbg !40 ; [debug line = 15:6]
  call void @llvm.dbg.value(metadata !{i32 %reg0_1}, i64 0, metadata !32), !dbg !41 ; [debug line = 17:6] [debug variable = reg0]
  call void @llvm.dbg.value(metadata !{i32 %reg1_1}, i64 0, metadata !30), !dbg !42 ; [debug line = 18:6] [debug variable = reg1]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !28), !dbg !43 ; [debug line = 19:6] [debug variable = reg2]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_2) nounwind, !dbg !44 ; [#uses=0 type=i32] [debug line = 25:5]
  %i_1 = add i11 %i, 1, !dbg !45                  ; [#uses=1 type=i11] [debug line = 11:22]
  call void @llvm.dbg.value(metadata !{i11 %i_1}, i64 0, metadata !46), !dbg !45 ; [debug line = 11:22] [debug variable = i]
  br label %1, !dbg !45                           ; [debug line = 11:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !47                              ; [debug line = 27:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"array", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 1023, i32 1}
!13 = metadata !{i32 786689, metadata !14, metadata !"array", null, i32 3, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"kernel2", metadata !"kernel2", metadata !"_Z7kernel2Pi", metadata !15, i32 3, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 4} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"kernel2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel2", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !19, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 3, i32 19, metadata !14, null}
!26 = metadata !{i32 7, i32 5, metadata !27, null}
!27 = metadata !{i32 786443, metadata !14, i32 4, i32 1, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 786688, metadata !27, metadata !"reg2", metadata !15, i32 5, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!29 = metadata !{i32 8, i32 5, metadata !27, null}
!30 = metadata !{i32 786688, metadata !27, metadata !"reg1", metadata !15, i32 5, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 9, i32 5, metadata !27, null}
!32 = metadata !{i32 786688, metadata !27, metadata !"reg0", metadata !15, i32 5, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 11, i32 9, metadata !34, null}
!34 = metadata !{i32 786443, metadata !27, i32 11, i32 5, metadata !15, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 11, i32 27, metadata !36, null}
!36 = metadata !{i32 786443, metadata !34, i32 11, i32 26, metadata !15, i32 2} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 12, i32 1, metadata !36, null}
!38 = metadata !{i32 14, i32 2, metadata !36, null}
!39 = metadata !{i32 786688, metadata !27, metadata !"result", metadata !15, i32 5, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 15, i32 6, metadata !36, null}
!41 = metadata !{i32 17, i32 6, metadata !36, null}
!42 = metadata !{i32 18, i32 6, metadata !36, null}
!43 = metadata !{i32 19, i32 6, metadata !36, null}
!44 = metadata !{i32 25, i32 5, metadata !36, null}
!45 = metadata !{i32 11, i32 22, metadata !34, null}
!46 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !15, i32 5, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 27, i32 1, metadata !27, null}
