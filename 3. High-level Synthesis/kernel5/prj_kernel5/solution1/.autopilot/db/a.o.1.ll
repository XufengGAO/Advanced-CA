; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel5.str = internal unnamed_addr constant [8 x i8] c"kernel5\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define float @kernel5(float %bound, float* %a, float* %b) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel5.str) nounwind
  call void @llvm.dbg.value(metadata !{float %bound}, i64 0, metadata !26), !dbg !27 ; [debug line = 3:21] [debug variable = bound]
  call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !28), !dbg !29 ; [debug line = 3:34] [debug variable = a]
  call void @llvm.dbg.value(metadata !{float* %b}, i64 0, metadata !30), !dbg !31 ; [debug line = 3:49] [debug variable = b]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %a, i32 1024) nounwind, !dbg !32 ; [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %b, i32 1024) nounwind, !dbg !34 ; [debug line = 4:33]
  br label %1, !dbg !35                           ; [debug line = 7:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %sum. = phi float [ undef, %0 ], [ %sum, %2 ]   ; [#uses=2 type=float]
  %tmp = fcmp olt float %sum., %bound, !dbg !35   ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp.1 = icmp slt i32 %i, 1024, !dbg !35        ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp.2 = and i1 %tmp, %tmp.1, !dbg !35          ; [#uses=1 type=i1] [debug line = 7:5]
  br i1 %tmp.2, label %2, label %3

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !36 ; [#uses=1 type=i32] [debug line = 8:6]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !38 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !39 ; [debug line = 10:1]
  %tmp.3 = sext i32 %i to i64, !dbg !40           ; [#uses=2 type=i64] [debug line = 11:2]
  %a.addr = getelementptr inbounds float* %a, i64 %tmp.3, !dbg !40 ; [#uses=1 type=float*] [debug line = 11:2]
  %a.load = load float* %a.addr, align 4, !dbg !40 ; [#uses=2 type=float] [debug line = 11:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load) nounwind
  %b.addr = getelementptr inbounds float* %b, i64 %tmp.3, !dbg !40 ; [#uses=1 type=float*] [debug line = 11:2]
  %b.load = load float* %b.addr, align 4, !dbg !40 ; [#uses=2 type=float] [debug line = 11:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %b.load) nounwind
  %sum = fadd float %a.load, %b.load, !dbg !40    ; [#uses=1 type=float] [debug line = 11:2]
  call void @llvm.dbg.value(metadata !{float %sum}, i64 0, metadata !41), !dbg !40 ; [debug line = 11:2] [debug variable = sum]
  %i.1 = add nsw i32 %i, 1, !dbg !42              ; [#uses=1 type=i32] [debug line = 12:9]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !43), !dbg !42 ; [debug line = 12:9] [debug variable = i]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !45 ; [#uses=0 type=i32] [debug line = 13:5]
  br label %1, !dbg !45                           ; [debug line = 13:5]

; <label>:3                                       ; preds = %1
  %sum.01.lcssa = phi float [ %sum., %1 ]         ; [#uses=1 type=float]
  ret float %sum.01.lcssa, !dbg !46               ; [debug line = 14:5]
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
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/kernel5.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel5", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel5", metadata !"kernel5", metadata !"_Z7kernel5fPfS_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float, float*, float*)* @kernel5, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel5.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel5", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{float (float, float*, float*)* @kernel5, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"bound", metadata !"a", metadata !"b"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"return", metadata !24, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 1, i32 0}
!26 = metadata !{i32 786689, metadata !5, metadata !"bound", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 3, i32 21, metadata !5, null}
!28 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 3, i32 34, metadata !5, null}
!30 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 3, i32 49, metadata !5, null}
!32 = metadata !{i32 4, i32 2, metadata !33, null}
!33 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 4, i32 33, metadata !33, null}
!35 = metadata !{i32 7, i32 5, metadata !33, null}
!36 = metadata !{i32 8, i32 6, metadata !37, null}
!37 = metadata !{i32 786443, metadata !33, i32 8, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 9, i32 1, metadata !37, null}
!39 = metadata !{i32 10, i32 1, metadata !37, null}
!40 = metadata !{i32 11, i32 2, metadata !37, null}
!41 = metadata !{i32 786688, metadata !33, metadata !"sum", metadata !6, i32 6, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 12, i32 9, metadata !37, null}
!43 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !6, i32 5, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 13, i32 5, metadata !37, null}
!46 = metadata !{i32 14, i32 5, metadata !33, null}
