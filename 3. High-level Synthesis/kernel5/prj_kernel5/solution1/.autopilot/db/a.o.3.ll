; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel5_str = internal unnamed_addr constant [8 x i8] c"kernel5\00" ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define float @kernel5(float %bound, [1024 x float]* %a, [1024 x float]* %b) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap(float %bound) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %a) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %b) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel5_str) nounwind
  %bound_read = call float @_ssdm_op_Read.ap_auto.float(float %bound) nounwind ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %bound_read}, i64 0, metadata !29), !dbg !38 ; [debug line = 3:21] [debug variable = bound]
  call void @llvm.dbg.value(metadata !{float %bound}, i64 0, metadata !29), !dbg !38 ; [debug line = 3:21] [debug variable = bound]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %a}, i64 0, metadata !39), !dbg !43 ; [debug line = 3:34] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %b}, i64 0, metadata !44), !dbg !45 ; [debug line = 3:49] [debug variable = b]
  %bound_to_int = bitcast float %bound_read to i32 ; [#uses=2 type=i32]
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bound_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_1 = trunc i32 %bound_to_int to i23         ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_6, -1                ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_1, 0                ; [#uses=1 type=i1]
  %tmp_9 = or i1 %notrhs2, %notlhs1               ; [#uses=1 type=i1]
  br label %1, !dbg !46                           ; [debug line = 7:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=3 type=i32]
  %sum_s = phi float [ undef, %0 ], [ %sum, %2 ]  ; [#uses=3 type=float]
  %sum_to_int = bitcast float %sum_s to i32       ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_5 = trunc i32 %sum_to_int to i23           ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_5, 0                 ; [#uses=1 type=i1]
  %tmp_8 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_s = and i1 %tmp_8, %tmp_9                  ; [#uses=1 type=i1]
  %tmp_7 = fcmp olt float %sum_s, %bound_read, !dbg !46 ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp_10 = and i1 %tmp_s, %tmp_7, !dbg !46       ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp_11 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %i, i32 10, i32 31), !dbg !46 ; [#uses=1 type=i22] [debug line = 7:5]
  %icmp = icmp slt i22 %tmp_11, 1, !dbg !46       ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp_2 = and i1 %tmp_10, %icmp, !dbg !46        ; [#uses=1 type=i1] [debug line = 7:5]
  %i_1 = add nsw i32 1, %i, !dbg !48              ; [#uses=1 type=i32] [debug line = 12:9]
  br i1 %tmp_2, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind, !dbg !50 ; [#uses=1 type=i32] [debug line = 8:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !51 ; [debug line = 10:1]
  %tmp_3 = sext i32 %i to i64, !dbg !52           ; [#uses=2 type=i64] [debug line = 11:2]
  %a_addr = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_3, !dbg !52 ; [#uses=1 type=float*] [debug line = 11:2]
  %a_load = load float* %a_addr, align 4, !dbg !52 ; [#uses=1 type=float] [debug line = 11:2]
  %b_addr = getelementptr [1024 x float]* %b, i64 0, i64 %tmp_3, !dbg !52 ; [#uses=1 type=float*] [debug line = 11:2]
  %b_load = load float* %b_addr, align 4, !dbg !52 ; [#uses=1 type=float] [debug line = 11:2]
  %sum = fadd float %a_load, %b_load, !dbg !52    ; [#uses=1 type=float] [debug line = 11:2]
  call void @llvm.dbg.value(metadata !{float %sum}, i64 0, metadata !53), !dbg !52 ; [debug line = 11:2] [debug variable = sum]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !54), !dbg !48 ; [debug line = 12:9] [debug variable = i]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_4) nounwind, !dbg !56 ; [#uses=0 type=i32] [debug line = 13:5]
  br label %1, !dbg !56                           ; [debug line = 13:5]

; <label>:3                                       ; preds = %1
  ret float %sum_s, !dbg !57                      ; [debug line = 14:5]
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

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i22              ; [#uses=1 type=i22]
  ret i22 %empty_5
}

; [#uses=0]
declare void @_ssdm_SpecDependence(...) nounwind

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"bound", metadata !"a", metadata !"b"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"bound", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"a", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1023, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"b", metadata !17, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"return", metadata !27, metadata !"float", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 0}
!29 = metadata !{i32 786689, metadata !30, metadata !"bound", metadata !31, i32 16777219, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 786478, i32 0, metadata !31, metadata !"kernel5", metadata !"kernel5", metadata !"_Z7kernel5fPfS_", metadata !31, i32 3, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 4} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786473, metadata !"kernel5.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel5", null} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{metadata !34, metadata !34, metadata !35, metadata !35}
!34 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!38 = metadata !{i32 3, i32 21, metadata !30, null}
!39 = metadata !{i32 786689, metadata !30, metadata !"a", null, i32 3, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !34, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 3, i32 34, metadata !30, null}
!44 = metadata !{i32 786689, metadata !30, metadata !"b", null, i32 3, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 3, i32 49, metadata !30, null}
!46 = metadata !{i32 7, i32 5, metadata !47, null}
!47 = metadata !{i32 786443, metadata !30, i32 4, i32 1, metadata !31, i32 0} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 12, i32 9, metadata !49, null}
!49 = metadata !{i32 786443, metadata !47, i32 8, i32 5, metadata !31, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 8, i32 6, metadata !49, null}
!51 = metadata !{i32 10, i32 1, metadata !49, null}
!52 = metadata !{i32 11, i32 2, metadata !49, null}
!53 = metadata !{i32 786688, metadata !47, metadata !"sum", metadata !31, i32 6, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !31, i32 5, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 13, i32 5, metadata !49, null}
!57 = metadata !{i32 14, i32 5, metadata !47, null}
