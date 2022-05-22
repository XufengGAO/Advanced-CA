; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel2_str = internal unnamed_addr constant [8 x i8] c"kernel2\00"
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @kernel2([1024 x i32]* %array_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %array_r) nounwind, !map !7
  %array_addr = getelementptr [1024 x i32]* %array_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel2_str) nounwind
  %array_addr_1 = getelementptr [1024 x i32]* %array_r, i64 0, i64 2
  %reg2 = load i32* %array_addr_1, align 4
  %array_addr_2 = getelementptr [1024 x i32]* %array_r, i64 0, i64 1
  %reg1 = load i32* %array_addr_2, align 4
  %reg0 = load i32* %array_addr, align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %reg0_1 = phi i32 [ %reg1, %0 ], [ %reg1_1, %2 ]
  %reg1_1 = phi i32 [ %reg2, %0 ], [ %result, %2 ]
  %i = phi i11 [ 3, %0 ], [ %i_1, %2 ]
  %reg = phi i32 [ %reg0, %0 ], [ %reg0_1, %2 ]
  %exitcond = icmp eq i11 %i, -1024
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1021, i64 1021, i64 1021) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = mul nsw i32 %reg0_1, %reg
  %result = add nsw i32 %tmp, %reg1_1
  %tmp_1 = zext i11 %i to i64
  %array_addr_3 = getelementptr [1024 x i32]* %array_r, i64 0, i64 %tmp_1
  store i32 %result, i32* %array_addr_3, align 4
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_2) nounwind
  %i_1 = add i11 %i, 1
  br label %1

; <label>:3                                       ; preds = %1
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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

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
