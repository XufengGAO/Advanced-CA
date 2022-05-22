; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel4/prj_kernel4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel4_str = internal unnamed_addr constant [8 x i8] c"kernel4\00" ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel4([1024 x i32]* %array, [1024 x i32]* %index, i32 %offset) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %array) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %index) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %offset) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel4_str) nounwind
  %offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %offset) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %offset_read}, i64 0, metadata !23), !dbg !32 ; [debug line = 3:52] [debug variable = offset]
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %array}, i64 0, metadata !33), !dbg !37 ; [debug line = 3:18] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %index}, i64 0, metadata !38), !dbg !39 ; [debug line = 3:35] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i32 %offset}, i64 0, metadata !23), !dbg !32 ; [debug line = 3:52] [debug variable = offset]
  %tmp = sext i32 %offset_read to i64, !dbg !40   ; [#uses=1 type=i64] [debug line = 6:25]
  %array_addr = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp, !dbg !40 ; [#uses=2 type=i32*] [debug line = 6:25]
  %sum = load i32* %array_addr, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 6:25]
  call void @llvm.dbg.value(metadata !{i32 %sum}, i64 0, metadata !42), !dbg !40 ; [debug line = 6:25] [debug variable = sum]
  br label %1, !dbg !43                           ; [debug line = 8:24]

; <label>:1                                       ; preds = %2, %0
  %sum1 = phi i32 [ %sum, %0 ], [ %sum_1, %2 ]    ; [#uses=2 type=i32]
  %i_0_in = phi i32 [ %offset_read, %0 ], [ %i, %2 ] ; [#uses=2 type=i32]
  %i = add nsw i32 %i_0_in, 1, !dbg !43           ; [#uses=3 type=i32] [debug line = 8:24]
  %tmp_1 = icmp slt i32 %i, 1023, !dbg !43        ; [#uses=1 type=i1] [debug line = 8:24]
  br i1 %tmp_1, label %2, label %3, !dbg !43      ; [debug line = 8:24]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !45), !dbg !43 ; [debug line = 8:24] [debug variable = i]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind, !dbg !46 ; [#uses=1 type=i32] [debug line = 8:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !48 ; [debug line = 9:1]
  %tmp_2 = sext i32 %i to i64, !dbg !49           ; [#uses=2 type=i64] [debug line = 10:2]
  %index_addr = getelementptr [1024 x i32]* %index, i64 0, i64 %tmp_2, !dbg !49 ; [#uses=1 type=i32*] [debug line = 10:2]
  %index_load = load i32* %index_addr, align 4, !dbg !49 ; [#uses=2 type=i32] [debug line = 10:2]
  %array_addr_1 = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp_2, !dbg !49 ; [#uses=1 type=i32*] [debug line = 10:2]
  %array_load = load i32* %array_addr_1, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp_3 = mul nsw i32 %array_load, %index_load, !dbg !49 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp_4 = add nsw i32 %i_0_in, 2, !dbg !49       ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp_5 = sext i32 %tmp_4 to i64, !dbg !49       ; [#uses=1 type=i64] [debug line = 10:2]
  %array_addr_2 = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp_5, !dbg !49 ; [#uses=1 type=i32*] [debug line = 10:2]
  %array_load_1 = load i32* %array_addr_2, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp_6 = mul nsw i32 %array_load_1, %index_load, !dbg !49 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp_7 = sub i32 %sum1, %tmp_3, !dbg !49        ; [#uses=1 type=i32] [debug line = 10:2]
  %sum_1 = add i32 %tmp_7, %tmp_6, !dbg !49       ; [#uses=1 type=i32] [debug line = 10:2]
  call void @llvm.dbg.value(metadata !{i32 %sum_1}, i64 0, metadata !42), !dbg !49 ; [debug line = 10:2] [debug variable = sum]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_8) nounwind, !dbg !50 ; [#uses=0 type=i32] [debug line = 11:5]
  br label %1, !dbg !51                           ; [debug line = 8:37]

; <label>:3                                       ; preds = %1
  store i32 %sum1, i32* %array_addr, align 4, !dbg !52 ; [debug line = 13:5]
  ret void, !dbg !53                              ; [debug line = 14:1]
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

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"array", metadata !"index", metadata !"offset"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"array", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 1023, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"index", metadata !11, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"offset", metadata !21, metadata !"int", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, i32 0}
!23 = metadata !{i32 786689, metadata !24, metadata !"offset", metadata !25, i32 50331651, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"kernel4", metadata !"kernel4", metadata !"_Z7kernel4PiS_i", metadata !25, i32 3, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 4} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"kernel4.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel4", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !28, metadata !29}
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 3, i32 52, metadata !24, null}
!33 = metadata !{i32 786689, metadata !24, metadata !"array", null, i32 3, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !29, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 3, i32 18, metadata !24, null}
!38 = metadata !{i32 786689, metadata !24, metadata !"index", null, i32 3, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 3, i32 35, metadata !24, null}
!40 = metadata !{i32 6, i32 25, metadata !41, null}
!41 = metadata !{i32 786443, metadata !24, i32 4, i32 1, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786688, metadata !41, metadata !"sum", metadata !25, i32 6, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 8, i32 24, metadata !44, null}
!44 = metadata !{i32 786443, metadata !41, i32 8, i32 5, metadata !25, i32 1} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 786688, metadata !44, metadata !"i", metadata !25, i32 8, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 8, i32 43, metadata !47, null}
!47 = metadata !{i32 786443, metadata !44, i32 8, i32 42, metadata !25, i32 2} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 9, i32 1, metadata !47, null}
!49 = metadata !{i32 10, i32 2, metadata !47, null}
!50 = metadata !{i32 11, i32 5, metadata !47, null}
!51 = metadata !{i32 8, i32 37, metadata !44, null}
!52 = metadata !{i32 13, i32 5, metadata !41, null}
!53 = metadata !{i32 14, i32 1, metadata !41, null}
