; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel3_str = internal unnamed_addr constant [8 x i8] c"kernel3\00" ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel3([1024 x float]* %hist, [1024 x float]* %weight, [1024 x i32]* %index) nounwind uwtable {
_ifconv36:
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %hist) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %weight) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %index) nounwind, !map !17
  %index_addr = getelementptr [1024 x i32]* %index, i64 0, i64 0 ; [#uses=1 type=i32*]
  %weight_addr = getelementptr [1024 x float]* %weight, i64 0, i64 0 ; [#uses=1 type=float*]
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel3_str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x float]* %hist}, i64 0, metadata !21), !dbg !35 ; [debug line = 3:21] [debug variable = hist]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %weight}, i64 0, metadata !36), !dbg !37 ; [debug line = 3:39] [debug variable = weight]
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %index}, i64 0, metadata !38), !dbg !40 ; [debug line = 3:57] [debug variable = index]
  %index0 = load i32* %index_addr, align 4, !dbg !41 ; [#uses=3 type=i32] [debug line = 10:2]
  call void @llvm.dbg.value(metadata !{i32 %index0}, i64 0, metadata !43), !dbg !41 ; [debug line = 10:2] [debug variable = index0]
  %index_addr_1 = getelementptr [1024 x i32]* %index, i64 0, i64 1, !dbg !44 ; [#uses=1 type=i32*] [debug line = 11:2]
  %index1 = load i32* %index_addr_1, align 4, !dbg !44 ; [#uses=4 type=i32] [debug line = 11:2]
  call void @llvm.dbg.value(metadata !{i32 %index1}, i64 0, metadata !45), !dbg !44 ; [debug line = 11:2] [debug variable = index1]
  %index_addr_2 = getelementptr [1024 x i32]* %index, i64 0, i64 2, !dbg !46 ; [#uses=1 type=i32*] [debug line = 12:2]
  %index2 = load i32* %index_addr_2, align 4, !dbg !46 ; [#uses=4 type=i32] [debug line = 12:2]
  call void @llvm.dbg.value(metadata !{i32 %index2}, i64 0, metadata !47), !dbg !46 ; [debug line = 12:2] [debug variable = index2]
  %tmp = sext i32 %index0 to i64, !dbg !48        ; [#uses=1 type=i64] [debug line = 15:2]
  %hist_addr = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp, !dbg !48 ; [#uses=1 type=float*] [debug line = 15:2]
  %hist_load = load float* %hist_addr, align 4, !dbg !48 ; [#uses=1 type=float] [debug line = 15:2]
  %weight_load = load float* %weight_addr, align 4, !dbg !48 ; [#uses=1 type=float] [debug line = 15:2]
  %hist0 = fadd float %hist_load, %weight_load, !dbg !48 ; [#uses=3 type=float] [debug line = 15:2]
  call void @llvm.dbg.value(metadata !{float %hist0}, i64 0, metadata !49), !dbg !48 ; [debug line = 15:2] [debug variable = hist0]
  %tmp_2 = icmp eq i32 %index1, %index0, !dbg !50 ; [#uses=2 type=i1] [debug line = 18:2]
  %weight_addr_1 = getelementptr [1024 x float]* %weight, i64 0, i64 1, !dbg !51 ; [#uses=1 type=float*] [debug line = 21:3]
  %weight_load_1 = load float* %weight_addr_1, align 4, !dbg !51 ; [#uses=1 type=float] [debug line = 21:3]
  %tmp_4 = sext i32 %index1 to i64, !dbg !53      ; [#uses=1 type=i64] [debug line = 23:3]
  %hist_addr_1 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_4, !dbg !53 ; [#uses=1 type=float*] [debug line = 23:3]
  %hist_load_1 = load float* %hist_addr_1, align 4, !dbg !53 ; [#uses=1 type=float] [debug line = 23:3]
  %hist4_v = select i1 %tmp_2, float %hist0, float %hist_load_1 ; [#uses=1 type=float]
  %hist1 = fadd float %hist4_v, %weight_load_1    ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %hist1}, i64 0, metadata !55), !dbg !53 ; [debug line = 23:3] [debug variable = hist1]
  %index4 = select i1 %tmp_2, i32 -1, i32 %index0 ; [#uses=3 type=i32]
  %tmp_6 = icmp eq i32 %index2, %index1, !dbg !56 ; [#uses=4 type=i1] [debug line = 26:2]
  %weight_addr_2 = getelementptr [1024 x float]* %weight, i64 0, i64 2, !dbg !57 ; [#uses=1 type=float*] [debug line = 28:3]
  %weight_load_2 = load float* %weight_addr_2, align 4, !dbg !57 ; [#uses=1 type=float] [debug line = 28:3]
  %tmp_8 = icmp eq i32 %index2, %index4, !dbg !59 ; [#uses=1 type=i1] [debug line = 29:8]
  %tmp_s = sext i32 %index2 to i64, !dbg !60      ; [#uses=1 type=i64] [debug line = 33:3]
  %hist_addr_2 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_s, !dbg !60 ; [#uses=1 type=float*] [debug line = 33:3]
  %hist_load_2 = load float* %hist_addr_2, align 4, !dbg !60 ; [#uses=1 type=float] [debug line = 33:3]
  %index1_1_ph = select i1 %tmp_6, i32 -1, i32 %index1 ; [#uses=1 type=i32]
  %sel_tmp = xor i1 %tmp_6, true, !dbg !56        ; [#uses=1 type=i1] [debug line = 26:2]
  %sel_tmp3 = and i1 %tmp_8, %sel_tmp             ; [#uses=2 type=i1]
  %sel_tmp4 = select i1 %sel_tmp3, i32 -1, i32 %index4 ; [#uses=1 type=i32]
  %index0_3_ph = select i1 %tmp_6, i32 %index4, i32 %sel_tmp4 ; [#uses=1 type=i32]
  %sel_tmp53_v = select i1 %sel_tmp3, float %hist0, float %hist_load_2 ; [#uses=1 type=float]
  %hist1_2_ph_v = select i1 %tmp_6, float %hist1, float %sel_tmp53_v ; [#uses=1 type=float]
  %hist2 = fadd float %hist1_2_ph_v, %weight_load_2 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %hist2}, i64 0, metadata !62), !dbg !63 ; [debug line = 31:3] [debug variable = hist2]
  br label %.preheader, !dbg !65                  ; [debug line = 36:14]

.preheader:                                       ; preds = %._crit_edge3, %_ifconv36
  %hist5 = phi float [ %hist0_1, %._crit_edge3 ], [ %hist0, %_ifconv36 ] ; [#uses=3 type=float]
  %hist0_1 = phi float [ %hist1_1, %._crit_edge3 ], [ %hist1, %_ifconv36 ] ; [#uses=3 type=float]
  %index5 = phi i32 [ %index3, %._crit_edge3 ], [ %index2, %_ifconv36 ] ; [#uses=5 type=i32]
  %index1_1 = phi i32 [ %index1_2, %._crit_edge3 ], [ %index1_1_ph, %_ifconv36 ] ; [#uses=5 type=i32]
  %index0_3 = phi i32 [ %index0_1, %._crit_edge3 ], [ %index0_3_ph, %_ifconv36 ] ; [#uses=4 type=i32]
  %hist1_1 = phi float [ %hist3, %._crit_edge3 ], [ %hist2, %_ifconv36 ] ; [#uses=3 type=float]
  %i = phi i11 [ %i_1, %._crit_edge3 ], [ 3, %_ifconv36 ] ; [#uses=3 type=i11]
  %exitcond = icmp eq i11 %i, -1024, !dbg !65     ; [#uses=1 type=i1] [debug line = 36:14]
  br i1 %exitcond, label %1, label %_ifconv, !dbg !65 ; [debug line = 36:14]

_ifconv:                                          ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1021, i64 1021, i64 1021) nounwind ; [#uses=0 type=i32]
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 36:30]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !69 ; [debug line = 38:1]
  %tmp_3 = zext i11 %i to i64, !dbg !70           ; [#uses=2 type=i64] [debug line = 39:2]
  %index_addr_3 = getelementptr [1024 x i32]* %index, i64 0, i64 %tmp_3, !dbg !70 ; [#uses=1 type=i32*] [debug line = 39:2]
  %index3 = load i32* %index_addr_3, align 4, !dbg !70 ; [#uses=5 type=i32] [debug line = 39:2]
  call void @llvm.dbg.value(metadata !{i32 %index3}, i64 0, metadata !71), !dbg !70 ; [debug line = 39:2] [debug variable = index3]
  %weight_addr_3 = getelementptr [1024 x float]* %weight, i64 0, i64 %tmp_3, !dbg !72 ; [#uses=1 type=float*] [debug line = 40:6]
  %weight3 = load float* %weight_addr_3, align 4, !dbg !72 ; [#uses=1 type=float] [debug line = 40:6]
  call void @llvm.dbg.value(metadata !{float %weight3}, i64 0, metadata !73), !dbg !72 ; [debug line = 40:6] [debug variable = weight3]
  %tmp_5 = icmp eq i32 %index3, %index5, !dbg !74 ; [#uses=4 type=i1] [debug line = 43:6]
  %tmp_9 = icmp eq i32 %index3, %index1_1, !dbg !75 ; [#uses=2 type=i1] [debug line = 46:12]
  %tmp_11 = icmp eq i32 %index3, %index0_3, !dbg !76 ; [#uses=1 type=i1] [debug line = 49:12]
  %tmp_13 = sext i32 %index3 to i64, !dbg !77     ; [#uses=1 type=i64] [debug line = 53:7]
  %hist_addr_5 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_13, !dbg !77 ; [#uses=1 type=float*] [debug line = 53:7]
  %hist_load_3 = load float* %hist_addr_5, align 4, !dbg !77 ; [#uses=1 type=float] [debug line = 53:7]
  %sel_tmp1 = xor i1 %tmp_5, true, !dbg !74       ; [#uses=1 type=i1] [debug line = 43:6]
  %sel_tmp2 = and i1 %tmp_9, %sel_tmp1            ; [#uses=3 type=i1]
  %sel_tmp6_demorgan = or i1 %tmp_5, %tmp_9       ; [#uses=1 type=i1]
  %sel_tmp6 = xor i1 %sel_tmp6_demorgan, true     ; [#uses=1 type=i1]
  %sel_tmp7 = and i1 %tmp_11, %sel_tmp6           ; [#uses=4 type=i1]
  %or_cond = or i1 %sel_tmp7, %sel_tmp2, !dbg !79 ; [#uses=1 type=i1] [debug line = 63:6]
  %newSel = select i1 %tmp_5, i32 -1, i32 %index5 ; [#uses=1 type=i32]
  %index1_2 = select i1 %or_cond, i32 %index5, i32 %newSel ; [#uses=1 type=i32]
  %sel_tmp5 = select i1 %sel_tmp2, i32 -1, i32 %index1_1, !dbg !80 ; [#uses=1 type=i32] [debug line = 62:6]
  %index0_1 = select i1 %sel_tmp7, i32 %index1_1, i32 %sel_tmp5, !dbg !80 ; [#uses=1 type=i32] [debug line = 62:6]
  %index0_6 = select i1 %sel_tmp7, i32 -1, i32 %index0_3 ; [#uses=2 type=i32]
  %sel_tmp8 = select i1 %tmp_5, float %hist1_1, float %hist_load_3 ; [#uses=1 type=float]
  %sel_tmp9 = select i1 %sel_tmp2, float %hist0_1, float %sel_tmp8 ; [#uses=1 type=float]
  %hist2_2_pn = select i1 %sel_tmp7, float %hist5, float %sel_tmp9 ; [#uses=1 type=float]
  %hist3 = fadd float %hist2_2_pn, %weight3, !dbg !81 ; [#uses=1 type=float] [debug line = 45:7]
  call void @llvm.dbg.value(metadata !{float %hist3}, i64 0, metadata !83), !dbg !81 ; [debug line = 45:7] [debug variable = hist3]
  %tmp_15 = icmp eq i32 %index0_6, -1, !dbg !84   ; [#uses=1 type=i1] [debug line = 57:6]
  br i1 %tmp_15, label %._crit_edge3, label %0, !dbg !84 ; [debug line = 57:6]

; <label>:0                                       ; preds = %_ifconv
  %tmp_17 = sext i32 %index0_6 to i64, !dbg !85   ; [#uses=1 type=i64] [debug line = 58:7]
  %hist_addr_7 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_17, !dbg !85 ; [#uses=1 type=float*] [debug line = 58:7]
  store float %hist5, float* %hist_addr_7, align 4, !dbg !85 ; [debug line = 58:7]
  br label %._crit_edge3, !dbg !87                ; [debug line = 59:6]

._crit_edge3:                                     ; preds = %0, %_ifconv
  call void @llvm.dbg.value(metadata !{i32 %index0_1}, i64 0, metadata !43), !dbg !80 ; [debug line = 62:6] [debug variable = index0]
  call void @llvm.dbg.value(metadata !{i32 %index1_2}, i64 0, metadata !45), !dbg !79 ; [debug line = 63:6] [debug variable = index1]
  call void @llvm.dbg.value(metadata !{i32 %index3}, i64 0, metadata !47), !dbg !88 ; [debug line = 64:6] [debug variable = index2]
  call void @llvm.dbg.value(metadata !{float %hist0_1}, i64 0, metadata !49), !dbg !89 ; [debug line = 66:6] [debug variable = hist0]
  call void @llvm.dbg.value(metadata !{float %hist1_1}, i64 0, metadata !55), !dbg !90 ; [debug line = 67:6] [debug variable = hist1]
  call void @llvm.dbg.value(metadata !{float %hist3}, i64 0, metadata !62), !dbg !91 ; [debug line = 68:6] [debug variable = hist2]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_18) nounwind, !dbg !92 ; [#uses=0 type=i32] [debug line = 69:5]
  %i_1 = add i11 %i, 1, !dbg !93                  ; [#uses=1 type=i11] [debug line = 36:24]
  call void @llvm.dbg.value(metadata !{i11 %i_1}, i64 0, metadata !94), !dbg !93 ; [debug line = 36:24] [debug variable = i]
  br label %.preheader, !dbg !93                  ; [debug line = 36:24]

; <label>:1                                       ; preds = %.preheader
  %tmp_1 = icmp eq i32 %index0_3, -1, !dbg !95    ; [#uses=1 type=i1] [debug line = 72:2]
  br i1 %tmp_1, label %._crit_edge4, label %2, !dbg !95 ; [debug line = 72:2]

; <label>:2                                       ; preds = %1
  %tmp_7 = sext i32 %index0_3 to i64, !dbg !96    ; [#uses=1 type=i64] [debug line = 73:3]
  %hist_addr_3 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_7, !dbg !96 ; [#uses=1 type=float*] [debug line = 73:3]
  store float %hist5, float* %hist_addr_3, align 4, !dbg !96 ; [debug line = 73:3]
  br label %._crit_edge4, !dbg !98                ; [debug line = 74:2]

._crit_edge4:                                     ; preds = %2, %1
  %tmp_10 = icmp eq i32 %index1_1, -1, !dbg !99   ; [#uses=1 type=i1] [debug line = 75:2]
  br i1 %tmp_10, label %._crit_edge5, label %3, !dbg !99 ; [debug line = 75:2]

; <label>:3                                       ; preds = %._crit_edge4
  %tmp_12 = sext i32 %index1_1 to i64, !dbg !100  ; [#uses=1 type=i64] [debug line = 76:3]
  %hist_addr_4 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_12, !dbg !100 ; [#uses=1 type=float*] [debug line = 76:3]
  store float %hist0_1, float* %hist_addr_4, align 4, !dbg !100 ; [debug line = 76:3]
  br label %._crit_edge5, !dbg !102               ; [debug line = 77:2]

._crit_edge5:                                     ; preds = %3, %._crit_edge4
  %tmp_14 = icmp eq i32 %index5, -1, !dbg !103    ; [#uses=1 type=i1] [debug line = 78:2]
  br i1 %tmp_14, label %._crit_edge6, label %4, !dbg !103 ; [debug line = 78:2]

; <label>:4                                       ; preds = %._crit_edge5
  %tmp_16 = sext i32 %index5 to i64, !dbg !104    ; [#uses=1 type=i64] [debug line = 79:3]
  %hist_addr_6 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp_16, !dbg !104 ; [#uses=1 type=float*] [debug line = 79:3]
  store float %hist1_1, float* %hist_addr_6, align 4, !dbg !104 ; [debug line = 79:3]
  br label %._crit_edge6, !dbg !106               ; [debug line = 80:2]

._crit_edge6:                                     ; preds = %4, %._crit_edge5
  ret void, !dbg !107                             ; [debug line = 81:1]
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

; [#uses=3]
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
!21 = metadata !{i32 786689, metadata !22, metadata !"hist", null, i32 3, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"kernel3", metadata !"kernel3", metadata !"_Z7kernel3PfS_Pi", metadata !23, i32 3, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 4} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"kernel3.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel3", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !26, metadata !28}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !27, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!35 = metadata !{i32 3, i32 21, metadata !22, null}
!36 = metadata !{i32 786689, metadata !22, metadata !"weight", null, i32 3, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 3, i32 39, metadata !22, null}
!38 = metadata !{i32 786689, metadata !22, metadata !"index", null, i32 3, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !29, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{i32 3, i32 57, metadata !22, null}
!41 = metadata !{i32 10, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !22, i32 4, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786688, metadata !42, metadata !"index0", metadata !23, i32 6, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 11, i32 2, metadata !42, null}
!45 = metadata !{i32 786688, metadata !42, metadata !"index1", metadata !23, i32 6, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 12, i32 2, metadata !42, null}
!47 = metadata !{i32 786688, metadata !42, metadata !"index2", metadata !23, i32 6, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 15, i32 2, metadata !42, null}
!49 = metadata !{i32 786688, metadata !42, metadata !"hist0", metadata !23, i32 7, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 18, i32 2, metadata !42, null}
!51 = metadata !{i32 21, i32 3, metadata !52, null}
!52 = metadata !{i32 786443, metadata !42, i32 18, i32 22, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 23, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !42, i32 22, i32 7, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786688, metadata !42, metadata !"hist1", metadata !23, i32 7, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 26, i32 2, metadata !42, null}
!57 = metadata !{i32 28, i32 3, metadata !58, null}
!58 = metadata !{i32 786443, metadata !42, i32 26, i32 22, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 29, i32 8, metadata !42, null}
!60 = metadata !{i32 33, i32 3, metadata !61, null}
!61 = metadata !{i32 786443, metadata !42, i32 32, i32 7, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786688, metadata !42, metadata !"hist2", metadata !23, i32 7, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 31, i32 3, metadata !64, null}
!64 = metadata !{i32 786443, metadata !42, i32 29, i32 28, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 36, i32 14, metadata !66, null}
!66 = metadata !{i32 786443, metadata !42, i32 36, i32 2, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 36, i32 30, metadata !68, null}
!68 = metadata !{i32 786443, metadata !66, i32 36, i32 29, metadata !23, i32 7} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 38, i32 1, metadata !68, null}
!70 = metadata !{i32 39, i32 2, metadata !68, null}
!71 = metadata !{i32 786688, metadata !42, metadata !"index3", metadata !23, i32 6, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 40, i32 6, metadata !68, null}
!73 = metadata !{i32 786688, metadata !42, metadata !"weight3", metadata !23, i32 7, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 43, i32 6, metadata !68, null}
!75 = metadata !{i32 46, i32 12, metadata !68, null}
!76 = metadata !{i32 49, i32 12, metadata !68, null}
!77 = metadata !{i32 53, i32 7, metadata !78, null}
!78 = metadata !{i32 786443, metadata !68, i32 52, i32 11, metadata !23, i32 11} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 63, i32 6, metadata !68, null}
!80 = metadata !{i32 62, i32 6, metadata !68, null}
!81 = metadata !{i32 45, i32 7, metadata !82, null}
!82 = metadata !{i32 786443, metadata !68, i32 43, i32 26, metadata !23, i32 8} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786688, metadata !42, metadata !"hist3", metadata !23, i32 7, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 57, i32 6, metadata !68, null}
!85 = metadata !{i32 58, i32 7, metadata !86, null}
!86 = metadata !{i32 786443, metadata !68, i32 57, i32 22, metadata !23, i32 12} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 59, i32 6, metadata !86, null}
!88 = metadata !{i32 64, i32 6, metadata !68, null}
!89 = metadata !{i32 66, i32 6, metadata !68, null}
!90 = metadata !{i32 67, i32 6, metadata !68, null}
!91 = metadata !{i32 68, i32 6, metadata !68, null}
!92 = metadata !{i32 69, i32 5, metadata !68, null}
!93 = metadata !{i32 36, i32 24, metadata !66, null}
!94 = metadata !{i32 786688, metadata !66, metadata !"i", metadata !23, i32 36, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 72, i32 2, metadata !42, null}
!96 = metadata !{i32 73, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !42, i32 72, i32 18, metadata !23, i32 13} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 74, i32 2, metadata !97, null}
!99 = metadata !{i32 75, i32 2, metadata !42, null}
!100 = metadata !{i32 76, i32 3, metadata !101, null}
!101 = metadata !{i32 786443, metadata !42, i32 75, i32 18, metadata !23, i32 14} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 77, i32 2, metadata !101, null}
!103 = metadata !{i32 78, i32 2, metadata !42, null}
!104 = metadata !{i32 79, i32 3, metadata !105, null}
!105 = metadata !{i32 786443, metadata !42, i32 78, i32 18, metadata !23, i32 15} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 80, i32 2, metadata !105, null}
!107 = metadata !{i32 81, i32 1, metadata !42, null}
