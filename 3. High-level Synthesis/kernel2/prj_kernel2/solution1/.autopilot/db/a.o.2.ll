; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel2.str = internal unnamed_addr constant [8 x i8] c"kernel2\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel2([1024 x i32]* %array) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %array) nounwind, !map !20
  %array.addr = getelementptr [1024 x i32]* %array, i64 0, i64 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel2.str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %array}, i64 0, metadata !26), !dbg !30 ; [debug line = 3:19] [debug variable = array]
  %array.addr.1 = getelementptr [1024 x i32]* %array, i64 0, i64 2, !dbg !31 ; [#uses=1 type=i32*] [debug line = 7:5]
  %reg2 = load i32* %array.addr.1, align 4, !dbg !31 ; [#uses=1 type=i32] [debug line = 7:5]
  call void @llvm.dbg.value(metadata !{i32 %reg2}, i64 0, metadata !33), !dbg !31 ; [debug line = 7:5] [debug variable = reg2]
  %array.addr.2 = getelementptr [1024 x i32]* %array, i64 0, i64 1, !dbg !34 ; [#uses=1 type=i32*] [debug line = 8:5]
  %reg1 = load i32* %array.addr.2, align 4, !dbg !34 ; [#uses=1 type=i32] [debug line = 8:5]
  call void @llvm.dbg.value(metadata !{i32 %reg1}, i64 0, metadata !35), !dbg !34 ; [debug line = 8:5] [debug variable = reg1]
  %reg0 = load i32* %array.addr, align 4, !dbg !36 ; [#uses=1 type=i32] [debug line = 9:5]
  call void @llvm.dbg.value(metadata !{i32 %reg0}, i64 0, metadata !37), !dbg !36 ; [debug line = 9:5] [debug variable = reg0]
  br label %1, !dbg !38                           ; [debug line = 11:9]

; <label>:1                                       ; preds = %3, %0
  %reg0.1 = phi i32 [ %reg1, %0 ], [ %reg1.1, %3 ] ; [#uses=2 type=i32]
  %reg1.1 = phi i32 [ %reg2, %0 ], [ %result, %3 ] ; [#uses=2 type=i32]
  %i = phi i11 [ 3, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i11]
  %reg = phi i32 [ %reg0, %0 ], [ %reg0.1, %3 ]   ; [#uses=1 type=i32]
  %exitcond = icmp eq i11 %i, -1024, !dbg !38     ; [#uses=1 type=i1] [debug line = 11:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1021, i64 1021, i64 1021) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %3, !dbg !38   ; [debug line = 11:9]

; <label>:3                                       ; preds = %1
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str) nounwind, !dbg !40 ; [#uses=1 type=i32] [debug line = 11:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !42 ; [debug line = 12:1]
  %tmp = mul nsw i32 %reg, %reg0.1, !dbg !43      ; [#uses=1 type=i32] [debug line = 14:2]
  %result = add nsw i32 %reg1.1, %tmp, !dbg !43   ; [#uses=2 type=i32] [debug line = 14:2]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !44), !dbg !43 ; [debug line = 14:2] [debug variable = result]
  %tmp.1 = zext i11 %i to i64, !dbg !45           ; [#uses=1 type=i64] [debug line = 15:6]
  %array.addr.3 = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp.1, !dbg !45 ; [#uses=1 type=i32*] [debug line = 15:6]
  store i32 %result, i32* %array.addr.3, align 4, !dbg !45 ; [debug line = 15:6]
  call void @llvm.dbg.value(metadata !{i32 %reg0.1}, i64 0, metadata !37), !dbg !46 ; [debug line = 17:6] [debug variable = reg0]
  call void @llvm.dbg.value(metadata !{i32 %reg1.1}, i64 0, metadata !35), !dbg !47 ; [debug line = 18:6] [debug variable = reg1]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !33), !dbg !48 ; [debug line = 19:6] [debug variable = reg2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str, i32 %tmp.2) nounwind, !dbg !49 ; [#uses=0 type=i32] [debug line = 25:5]
  %i.1 = add i11 %i, 1, !dbg !50                  ; [#uses=1 type=i11] [debug line = 11:22]
  call void @llvm.dbg.value(metadata !{i11 %i.1}, i64 0, metadata !51), !dbg !50 ; [debug line = 11:22] [debug variable = i]
  br label %1, !dbg !50                           ; [debug line = 11:22]

; <label>:5                                       ; preds = %1
  ret void, !dbg !52                              ; [debug line = 27:1]
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
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/kernel2.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel2", metadata !"kernel2", metadata !"_Z7kernel2Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel2", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"array", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 1023, i32 1}
!26 = metadata !{i32 786689, metadata !5, metadata !"array", null, i32 3, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 3, i32 19, metadata !5, null}
!31 = metadata !{i32 7, i32 5, metadata !32, null}
!32 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 786688, metadata !32, metadata !"reg2", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 8, i32 5, metadata !32, null}
!35 = metadata !{i32 786688, metadata !32, metadata !"reg1", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 9, i32 5, metadata !32, null}
!37 = metadata !{i32 786688, metadata !32, metadata !"reg0", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 11, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !32, i32 11, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 11, i32 27, metadata !41, null}
!41 = metadata !{i32 786443, metadata !39, i32 11, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 12, i32 1, metadata !41, null}
!43 = metadata !{i32 14, i32 2, metadata !41, null}
!44 = metadata !{i32 786688, metadata !32, metadata !"result", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 15, i32 6, metadata !41, null}
!46 = metadata !{i32 17, i32 6, metadata !41, null}
!47 = metadata !{i32 18, i32 6, metadata !41, null}
!48 = metadata !{i32 19, i32 6, metadata !41, null}
!49 = metadata !{i32 25, i32 5, metadata !41, null}
!50 = metadata !{i32 11, i32 22, metadata !39, null}
!51 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 27, i32 1, metadata !32, null}
