; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel4/prj_kernel4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel4.str = internal unnamed_addr constant [8 x i8] c"kernel4\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel4([1024 x i32]* %array, [1024 x i32]* %index, i32 %offset) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %array) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %index) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %offset) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel4.str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %array}, i64 0, metadata !36), !dbg !40 ; [debug line = 3:18] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %index}, i64 0, metadata !41), !dbg !42 ; [debug line = 3:35] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i32 %offset}, i64 0, metadata !43), !dbg !44 ; [debug line = 3:52] [debug variable = offset]
  %tmp = sext i32 %offset to i64, !dbg !45        ; [#uses=1 type=i64] [debug line = 6:25]
  %array.addr = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp, !dbg !45 ; [#uses=2 type=i32*] [debug line = 6:25]
  %sum = load i32* %array.addr, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 6:25]
  call void @llvm.dbg.value(metadata !{i32 %sum}, i64 0, metadata !47), !dbg !45 ; [debug line = 6:25] [debug variable = sum]
  br label %1, !dbg !48                           ; [debug line = 8:24]

; <label>:1                                       ; preds = %2, %0
  %sum1 = phi i32 [ %sum, %0 ], [ %sum.1, %2 ]    ; [#uses=2 type=i32]
  %i.0.in = phi i32 [ %offset, %0 ], [ %i, %2 ]   ; [#uses=2 type=i32]
  %i = add nsw i32 %i.0.in, 1, !dbg !48           ; [#uses=3 type=i32] [debug line = 8:24]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !50), !dbg !48 ; [debug line = 8:24] [debug variable = i]
  %tmp.1 = icmp slt i32 %i, 1023, !dbg !48        ; [#uses=1 type=i1] [debug line = 8:24]
  br i1 %tmp.1, label %2, label %4, !dbg !48      ; [debug line = 8:24]

; <label>:2                                       ; preds = %1
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str) nounwind, !dbg !51 ; [#uses=1 type=i32] [debug line = 8:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !53 ; [debug line = 9:1]
  %tmp.2 = sext i32 %i to i64, !dbg !54           ; [#uses=2 type=i64] [debug line = 10:2]
  %index.addr = getelementptr [1024 x i32]* %index, i64 0, i64 %tmp.2, !dbg !54 ; [#uses=1 type=i32*] [debug line = 10:2]
  %index.load = load i32* %index.addr, align 4, !dbg !54 ; [#uses=2 type=i32] [debug line = 10:2]
  %array.addr.1 = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp.2, !dbg !54 ; [#uses=1 type=i32*] [debug line = 10:2]
  %array.load = load i32* %array.addr.1, align 4, !dbg !54 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp.3 = mul nsw i32 %index.load, %array.load, !dbg !54 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp.4 = add nsw i32 %i.0.in, 2, !dbg !54       ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp.5 = sext i32 %tmp.4 to i64, !dbg !54       ; [#uses=1 type=i64] [debug line = 10:2]
  %array.addr.2 = getelementptr [1024 x i32]* %array, i64 0, i64 %tmp.5, !dbg !54 ; [#uses=1 type=i32*] [debug line = 10:2]
  %array.load.1 = load i32* %array.addr.2, align 4, !dbg !54 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp.6 = mul nsw i32 %index.load, %array.load.1, !dbg !54 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp.7 = sub i32 %sum1, %tmp.3, !dbg !54        ; [#uses=1 type=i32] [debug line = 10:2]
  %sum.1 = add i32 %tmp.6, %tmp.7, !dbg !54       ; [#uses=1 type=i32] [debug line = 10:2]
  call void @llvm.dbg.value(metadata !{i32 %sum.1}, i64 0, metadata !47), !dbg !54 ; [debug line = 10:2] [debug variable = sum]
  %3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str, i32 %tmp.8) nounwind, !dbg !55 ; [#uses=0 type=i32] [debug line = 11:5]
  br label %1, !dbg !56                           ; [debug line = 8:37]

; <label>:4                                       ; preds = %1
  %sum1.lcssa = phi i32 [ %sum1, %1 ]             ; [#uses=1 type=i32]
  store i32 %sum1.lcssa, i32* %array.addr, align 4, !dbg !57 ; [debug line = 13:5]
  ret void, !dbg !58                              ; [debug line = 14:1]
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
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel4/prj_kernel4/solution1/.autopilot/db/kernel4.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel4", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel4", metadata !"kernel4", metadata !"_Z7kernel4PiS_i", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel4.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel4", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"array", metadata !"index", metadata !"offset"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"array", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 1023, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"index", metadata !24, metadata !"int", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"offset", metadata !34, metadata !"int", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, i32 0}
!36 = metadata !{i32 786689, metadata !5, metadata !"array", null, i32 3, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!40 = metadata !{i32 3, i32 18, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"index", null, i32 3, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 3, i32 35, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"offset", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 3, i32 52, metadata !5, null}
!45 = metadata !{i32 6, i32 25, metadata !46, null}
!46 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786688, metadata !46, metadata !"sum", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 8, i32 24, metadata !49, null}
!49 = metadata !{i32 786443, metadata !46, i32 8, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 8, i32 43, metadata !52, null}
!52 = metadata !{i32 786443, metadata !49, i32 8, i32 42, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 9, i32 1, metadata !52, null}
!54 = metadata !{i32 10, i32 2, metadata !52, null}
!55 = metadata !{i32 11, i32 5, metadata !52, null}
!56 = metadata !{i32 8, i32 37, metadata !49, null}
!57 = metadata !{i32 13, i32 5, metadata !46, null}
!58 = metadata !{i32 14, i32 1, metadata !46, null}
