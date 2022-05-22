; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel3_str = internal unnamed_addr constant [8 x i8] c"kernel3\00"
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @kernel3([1024 x float]* %hist, [1024 x float]* %weight, [1024 x i32]* %index) nounwind uwtable {
_ifconv36:
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %hist) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %weight) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %index) nounwind, !map !17
  %index_addr = getelementptr [1024 x i32]* %index, i64 0, i64 0
  %weight_addr = getelementptr [1024 x float]* %weight, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel3_str) nounwind
  %index0 = load i32* %index_addr, align 4
  %index_addr_1 = getelementptr [1024 x i32]* %index, i64 0, i64 1
  %index1 = load i32* %index_addr_1, align 4
  %index_addr_2 = getelementptr [1024 x i32]* %index, i64 0, i64 2
  %index2 = load i32* %index_addr_2, align 4
  %tmp = sext i32 %index0 to i64
  %hist_addr = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp
  %hist_load = load float* %hist_addr, align 4
  %weight_load = load float* %weight_addr, align 4
  %hist0 = fadd float %hist_load, %weight_load
  %tmp_2 = icmp eq i32 %index1, %index0
  %weight_addr_1 = getelementptr [1024 x float]* %weight, i64 0, i64 1
  %weight_load_1 = load float* %weight_addr_1, align 4
  %tmp_4 = sext i32 %index1 to i64
  %hist_addr_1 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_4
  %hist_load_1 = load float* %hist_addr_1, align 4
  %hist4_v = select i1 %tmp_2, float %hist0, float %hist_load_1
  %hist1 = fadd float %hist4_v, %weight_load_1
  %index4 = select i1 %tmp_2, i32 -1, i32 %index0
  %tmp_6 = icmp eq i32 %index2, %index1
  %weight_addr_2 = getelementptr [1024 x float]* %weight, i64 0, i64 2
  %weight_load_2 = load float* %weight_addr_2, align 4
  %tmp_8 = icmp eq i32 %index2, %index4
  %tmp_s = sext i32 %index2 to i64
  %hist_addr_2 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_s
  %hist_load_2 = load float* %hist_addr_2, align 4
  %index1_1_ph = select i1 %tmp_6, i32 -1, i32 %index1
  %sel_tmp = xor i1 %tmp_6, true
  %sel_tmp3 = and i1 %tmp_8, %sel_tmp
  %sel_tmp4 = select i1 %sel_tmp3, i32 -1, i32 %index4
  %index0_3_ph = select i1 %tmp_6, i32 %index4, i32 %sel_tmp4
  %sel_tmp53_v = select i1 %sel_tmp3, float %hist0, float %hist_load_2
  %hist1_2_ph_v = select i1 %tmp_6, float %hist1, float %sel_tmp53_v
  %hist2 = fadd float %hist1_2_ph_v, %weight_load_2
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge3, %_ifconv36
  %hist5 = phi float [ %hist0_1, %._crit_edge3 ], [ %hist0, %_ifconv36 ]
  %hist0_1 = phi float [ %hist1_1, %._crit_edge3 ], [ %hist1, %_ifconv36 ]
  %index5 = phi i32 [ %index3, %._crit_edge3 ], [ %index2, %_ifconv36 ]
  %index1_1 = phi i32 [ %index1_2, %._crit_edge3 ], [ %index1_1_ph, %_ifconv36 ]
  %index0_3 = phi i32 [ %index0_1, %._crit_edge3 ], [ %index0_3_ph, %_ifconv36 ]
  %hist1_1 = phi float [ %hist3, %._crit_edge3 ], [ %hist2, %_ifconv36 ]
  %i = phi i11 [ %i_1, %._crit_edge3 ], [ 3, %_ifconv36 ]
  %exitcond = icmp eq i11 %i, -1024
  br i1 %exitcond, label %1, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1021, i64 1021, i64 1021) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_3 = zext i11 %i to i64
  %index_addr_3 = getelementptr [1024 x i32]* %index, i64 0, i64 %tmp_3
  %index3 = load i32* %index_addr_3, align 4
  %weight_addr_3 = getelementptr [1024 x float]* %weight, i64 0, i64 %tmp_3
  %weight3 = load float* %weight_addr_3, align 4
  %tmp_5 = icmp eq i32 %index3, %index5
  %tmp_9 = icmp eq i32 %index3, %index1_1
  %tmp_11 = icmp eq i32 %index3, %index0_3
  %tmp_13 = sext i32 %index3 to i64
  %hist_addr_5 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_13
  %hist_load_3 = load float* %hist_addr_5, align 4
  %sel_tmp1 = xor i1 %tmp_5, true
  %sel_tmp2 = and i1 %tmp_9, %sel_tmp1
  %sel_tmp6_demorgan = or i1 %tmp_5, %tmp_9
  %sel_tmp6 = xor i1 %sel_tmp6_demorgan, true
  %sel_tmp7 = and i1 %tmp_11, %sel_tmp6
  %or_cond = or i1 %sel_tmp7, %sel_tmp2
  %newSel = select i1 %tmp_5, i32 -1, i32 %index5
  %index1_2 = select i1 %or_cond, i32 %index5, i32 %newSel
  %sel_tmp5 = select i1 %sel_tmp2, i32 -1, i32 %index1_1
  %index0_1 = select i1 %sel_tmp7, i32 %index1_1, i32 %sel_tmp5
  %index0_6 = select i1 %sel_tmp7, i32 -1, i32 %index0_3
  %sel_tmp8 = select i1 %tmp_5, float %hist1_1, float %hist_load_3
  %sel_tmp9 = select i1 %sel_tmp2, float %hist0_1, float %sel_tmp8
  %hist2_2_pn = select i1 %sel_tmp7, float %hist5, float %sel_tmp9
  %hist3 = fadd float %hist2_2_pn, %weight3
  %tmp_15 = icmp eq i32 %index0_6, -1
  br i1 %tmp_15, label %._crit_edge3, label %0

; <label>:0                                       ; preds = %_ifconv
  %tmp_17 = sext i32 %index0_6 to i64
  %hist_addr_7 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_17
  store float %hist5, float* %hist_addr_7, align 4
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %0, %_ifconv
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_18) nounwind
  %i_1 = add i11 %i, 1
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  %tmp_1 = icmp eq i32 %index0_3, -1
  br i1 %tmp_1, label %._crit_edge4, label %2

; <label>:2                                       ; preds = %1
  %tmp_7 = sext i32 %index0_3 to i64
  %hist_addr_3 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_7
  store float %hist5, float* %hist_addr_3, align 4
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %2, %1
  %tmp_10 = icmp eq i32 %index1_1, -1
  br i1 %tmp_10, label %._crit_edge5, label %3

; <label>:3                                       ; preds = %._crit_edge4
  %tmp_12 = sext i32 %index1_1 to i64
  %hist_addr_4 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_12
  store float %hist0_1, float* %hist_addr_4, align 4
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %3, %._crit_edge4
  %tmp_14 = icmp eq i32 %index5, -1
  br i1 %tmp_14, label %._crit_edge6, label %4

; <label>:4                                       ; preds = %._crit_edge5
  %tmp_16 = sext i32 %index5 to i64
  %hist_addr_6 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_16
  store float %hist1_1, float* %hist_addr_6, align 4
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %4, %._crit_edge5
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
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"hist", metadata !"weight", metadata !"index"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"hist", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 1023, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"weight", metadata !11, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"index", metadata !11, metadata !"int", i32 0, i32 31}
