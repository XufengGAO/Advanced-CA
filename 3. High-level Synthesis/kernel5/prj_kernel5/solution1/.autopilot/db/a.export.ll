; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel5_str = internal unnamed_addr constant [8 x i8] c"kernel5\00"
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define float @kernel5(float %bound, [1024 x float]* %a, [1024 x float]* %b) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap(float %bound) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %a) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %b) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel5_str) nounwind
  %bound_read = call float @_ssdm_op_Read.ap_auto.float(float %bound) nounwind
  %bound_to_int = bitcast float %bound_read to i32
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bound_to_int, i32 23, i32 30)
  %tmp_1 = trunc i32 %bound_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_6, -1
  %notrhs2 = icmp eq i23 %tmp_1, 0
  %tmp_9 = or i1 %notrhs2, %notlhs1
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i_1, %2 ]
  %sum_s = phi float [ undef, %0 ], [ %sum, %2 ]
  %sum_to_int = bitcast float %sum_s to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_to_int, i32 23, i32 30)
  %tmp_5 = trunc i32 %sum_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_5, 0
  %tmp_8 = or i1 %notrhs, %notlhs
  %tmp_s = and i1 %tmp_8, %tmp_9
  %tmp_7 = fcmp olt float %sum_s, %bound_read
  %tmp_10 = and i1 %tmp_s, %tmp_7
  %tmp_11 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %i, i32 10, i32 31)
  %icmp = icmp slt i22 %tmp_11, 1
  %tmp_2 = and i1 %tmp_10, %icmp
  %i_1 = add nsw i32 1, %i
  br i1 %tmp_2, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_3 = sext i32 %i to i64
  %a_addr = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_3
  %a_load = load float* %a_addr, align 4
  %b_addr = getelementptr [1024 x float]* %b, i64 0, i64 %tmp_3
  %b_load = load float* %b_addr, align 4
  %sum = fadd float %a_load, %b_load
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_4) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret float %sum_s
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i8
  ret i8 %empty_4
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i22
  ret i22 %empty_5
}

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
