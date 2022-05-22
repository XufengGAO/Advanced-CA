; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel4/prj_kernel4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel4_str = internal unnamed_addr constant [8 x i8] c"kernel4\00"
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @kernel4([1024 x i32]* %array_r, [1024 x i32]* %index, i32 %offset) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %array_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %index) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %offset) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel4_str) nounwind
  %offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %offset) nounwind
  %tmp = sext i32 %offset_read to i64
  %array_addr = getelementptr [1024 x i32]* %array_r, i64 0, i64 %tmp
  %sum = load i32* %array_addr, align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %sum1 = phi i32 [ %sum, %0 ], [ %sum_1, %2 ]
  %i_0_in = phi i32 [ %offset_read, %0 ], [ %i, %2 ]
  %i = add nsw i32 %i_0_in, 1
  %tmp_1 = icmp slt i32 %i, 1023
  br i1 %tmp_1, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_2 = sext i32 %i to i64
  %index_addr = getelementptr [1024 x i32]* %index, i64 0, i64 %tmp_2
  %index_load = load i32* %index_addr, align 4
  %array_addr_1 = getelementptr [1024 x i32]* %array_r, i64 0, i64 %tmp_2
  %array_load = load i32* %array_addr_1, align 4
  %tmp_3 = mul nsw i32 %array_load, %index_load
  %tmp_4 = add nsw i32 %i_0_in, 2
  %tmp_5 = sext i32 %tmp_4 to i64
  %array_addr_2 = getelementptr [1024 x i32]* %array_r, i64 0, i64 %tmp_5
  %array_load_1 = load i32* %array_addr_2, align 4
  %tmp_6 = mul nsw i32 %array_load_1, %index_load
  %tmp_7 = sub i32 %sum1, %tmp_3
  %sum_1 = add i32 %tmp_7, %tmp_6
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_8) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  store i32 %sum1, i32* %array_addr, align 4
  ret void
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
