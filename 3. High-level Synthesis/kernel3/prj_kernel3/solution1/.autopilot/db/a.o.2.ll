; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel3.str = internal unnamed_addr constant [8 x i8] c"kernel3\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel3([1024 x float]* %hist, [1024 x float]* %weight, [1024 x i32]* %index) nounwind uwtable {
_ifconv36:
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %hist) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %weight) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %index) nounwind, !map !32
  %index.addr = getelementptr [1024 x i32]* %index, i64 0, i64 0 ; [#uses=1 type=i32*]
  %weight.addr = getelementptr [1024 x float]* %weight, i64 0, i64 0 ; [#uses=1 type=float*]
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel3.str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x float]* %hist}, i64 0, metadata !36), !dbg !40 ; [debug line = 3:21] [debug variable = hist]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %weight}, i64 0, metadata !41), !dbg !42 ; [debug line = 3:39] [debug variable = weight]
  call void @llvm.dbg.value(metadata !{[1024 x i32]* %index}, i64 0, metadata !43), !dbg !45 ; [debug line = 3:57] [debug variable = index]
  %index0 = load i32* %index.addr, align 4, !dbg !46 ; [#uses=3 type=i32] [debug line = 10:2]
  call void @llvm.dbg.value(metadata !{i32 %index0}, i64 0, metadata !48), !dbg !46 ; [debug line = 10:2] [debug variable = index0]
  %index.addr.1 = getelementptr [1024 x i32]* %index, i64 0, i64 1, !dbg !49 ; [#uses=1 type=i32*] [debug line = 11:2]
  %index1 = load i32* %index.addr.1, align 4, !dbg !49 ; [#uses=4 type=i32] [debug line = 11:2]
  call void @llvm.dbg.value(metadata !{i32 %index1}, i64 0, metadata !50), !dbg !49 ; [debug line = 11:2] [debug variable = index1]
  %index.addr.2 = getelementptr [1024 x i32]* %index, i64 0, i64 2, !dbg !51 ; [#uses=1 type=i32*] [debug line = 12:2]
  %index2 = load i32* %index.addr.2, align 4, !dbg !51 ; [#uses=4 type=i32] [debug line = 12:2]
  call void @llvm.dbg.value(metadata !{i32 %index2}, i64 0, metadata !52), !dbg !51 ; [debug line = 12:2] [debug variable = index2]
  %tmp = sext i32 %index0 to i64, !dbg !53        ; [#uses=1 type=i64] [debug line = 15:2]
  %hist.addr = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp, !dbg !53 ; [#uses=1 type=float*] [debug line = 15:2]
  %hist.load = load float* %hist.addr, align 4, !dbg !53 ; [#uses=1 type=float] [debug line = 15:2]
  %weight.load = load float* %weight.addr, align 4, !dbg !53 ; [#uses=1 type=float] [debug line = 15:2]
  %hist0 = fadd float %hist.load, %weight.load, !dbg !53 ; [#uses=3 type=float] [debug line = 15:2]
  call void @llvm.dbg.value(metadata !{float %hist0}, i64 0, metadata !54), !dbg !53 ; [debug line = 15:2] [debug variable = hist0]
  %tmp.2 = icmp eq i32 %index1, %index0, !dbg !55 ; [#uses=2 type=i1] [debug line = 18:2]
  %weight.addr.1 = getelementptr [1024 x float]* %weight, i64 0, i64 1, !dbg !56 ; [#uses=1 type=float*] [debug line = 21:3]
  %weight.load.1 = load float* %weight.addr.1, align 4, !dbg !56 ; [#uses=1 type=float] [debug line = 21:3]
  %tmp.4 = sext i32 %index1 to i64, !dbg !58      ; [#uses=1 type=i64] [debug line = 23:3]
  %hist.addr.1 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp.4, !dbg !58 ; [#uses=1 type=float*] [debug line = 23:3]
  %hist.load.1 = load float* %hist.addr.1, align 4, !dbg !58 ; [#uses=1 type=float] [debug line = 23:3]
  %hist4.v = select i1 %tmp.2, float %hist0, float %hist.load.1 ; [#uses=1 type=float]
  %hist1 = fadd float %hist4.v, %weight.load.1    ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %hist1}, i64 0, metadata !60), !dbg !58 ; [debug line = 23:3] [debug variable = hist1]
  %index4 = select i1 %tmp.2, i32 -1, i32 %index0 ; [#uses=3 type=i32]
  %tmp.6 = icmp eq i32 %index2, %index1, !dbg !61 ; [#uses=4 type=i1] [debug line = 26:2]
  %weight.addr.2 = getelementptr [1024 x float]* %weight, i64 0, i64 2, !dbg !62 ; [#uses=1 type=float*] [debug line = 28:3]
  %weight.load.2 = load float* %weight.addr.2, align 4, !dbg !62 ; [#uses=1 type=float] [debug line = 28:3]
  %tmp.8 = icmp eq i32 %index2, %index4, !dbg !64 ; [#uses=1 type=i1] [debug line = 29:8]
  %tmp. = sext i32 %index2 to i64, !dbg !65       ; [#uses=1 type=i64] [debug line = 33:3]
  %hist.addr.2 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp., !dbg !65 ; [#uses=1 type=float*] [debug line = 33:3]
  %hist.load.2 = load float* %hist.addr.2, align 4, !dbg !65 ; [#uses=1 type=float] [debug line = 33:3]
  %index1.1.ph = select i1 %tmp.6, i32 -1, i32 %index1 ; [#uses=1 type=i32]
  %sel_tmp = xor i1 %tmp.6, true, !dbg !61        ; [#uses=1 type=i1] [debug line = 26:2]
  %sel_tmp3 = and i1 %tmp.8, %sel_tmp             ; [#uses=2 type=i1]
  %sel_tmp4 = select i1 %sel_tmp3, i32 -1, i32 %index4 ; [#uses=1 type=i32]
  %index0.3.ph = select i1 %tmp.6, i32 %index4, i32 %sel_tmp4 ; [#uses=1 type=i32]
  %sel_tmp53.v = select i1 %sel_tmp3, float %hist0, float %hist.load.2 ; [#uses=1 type=float]
  %hist1.2.ph.v = select i1 %tmp.6, float %hist1, float %sel_tmp53.v ; [#uses=1 type=float]
  %hist2 = fadd float %hist1.2.ph.v, %weight.load.2 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %hist2}, i64 0, metadata !67), !dbg !68 ; [debug line = 31:3] [debug variable = hist2]
  br label %.preheader, !dbg !70                  ; [debug line = 36:14]

.preheader:                                       ; preds = %._crit_edge3, %_ifconv36
  %hist5 = phi float [ %hist0.1, %._crit_edge3 ], [ %hist0, %_ifconv36 ] ; [#uses=3 type=float]
  %hist0.1 = phi float [ %hist1.1, %._crit_edge3 ], [ %hist1, %_ifconv36 ] ; [#uses=3 type=float]
  %index5 = phi i32 [ %index3, %._crit_edge3 ], [ %index2, %_ifconv36 ] ; [#uses=4 type=i32]
  %index1.1 = phi i32 [ %index1.2, %._crit_edge3 ], [ %index1.1.ph, %_ifconv36 ] ; [#uses=4 type=i32]
  %index0.3 = phi i32 [ %index0.1, %._crit_edge3 ], [ %index0.3.ph, %_ifconv36 ] ; [#uses=3 type=i32]
  %hist1.1 = phi float [ %hist3, %._crit_edge3 ], [ %hist2, %_ifconv36 ] ; [#uses=3 type=float]
  %i = phi i11 [ %i.1, %._crit_edge3 ], [ 3, %_ifconv36 ] ; [#uses=3 type=i11]
  %exitcond = icmp eq i11 %i, -1024, !dbg !70     ; [#uses=1 type=i1] [debug line = 36:14]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1021, i64 1021, i64 1021) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %3, label %_ifconv, !dbg !70 ; [debug line = 36:14]

_ifconv:                                          ; preds = %.preheader
  %tmp.18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 36:30]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !74 ; [debug line = 38:1]
  %tmp.3 = zext i11 %i to i64, !dbg !75           ; [#uses=2 type=i64] [debug line = 39:2]
  %index.addr.3 = getelementptr [1024 x i32]* %index, i64 0, i64 %tmp.3, !dbg !75 ; [#uses=1 type=i32*] [debug line = 39:2]
  %index3 = load i32* %index.addr.3, align 4, !dbg !75 ; [#uses=5 type=i32] [debug line = 39:2]
  call void @llvm.dbg.value(metadata !{i32 %index3}, i64 0, metadata !76), !dbg !75 ; [debug line = 39:2] [debug variable = index3]
  %weight.addr.3 = getelementptr [1024 x float]* %weight, i64 0, i64 %tmp.3, !dbg !77 ; [#uses=1 type=float*] [debug line = 40:6]
  %weight3 = load float* %weight.addr.3, align 4, !dbg !77 ; [#uses=1 type=float] [debug line = 40:6]
  call void @llvm.dbg.value(metadata !{float %weight3}, i64 0, metadata !78), !dbg !77 ; [debug line = 40:6] [debug variable = weight3]
  %tmp.5 = icmp eq i32 %index3, %index5, !dbg !79 ; [#uses=4 type=i1] [debug line = 43:6]
  %tmp.9 = icmp eq i32 %index3, %index1.1, !dbg !80 ; [#uses=2 type=i1] [debug line = 46:12]
  %tmp.11 = icmp eq i32 %index3, %index0.3, !dbg !81 ; [#uses=1 type=i1] [debug line = 49:12]
  %tmp.13 = sext i32 %index3 to i64, !dbg !82     ; [#uses=1 type=i64] [debug line = 53:7]
  %hist.addr.5 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp.13, !dbg !82 ; [#uses=1 type=float*] [debug line = 53:7]
  %hist.load.3 = load float* %hist.addr.5, align 4, !dbg !82 ; [#uses=1 type=float] [debug line = 53:7]
  %sel_tmp1 = xor i1 %tmp.5, true, !dbg !79       ; [#uses=1 type=i1] [debug line = 43:6]
  %sel_tmp2 = and i1 %tmp.9, %sel_tmp1            ; [#uses=3 type=i1]
  %sel_tmp6.demorgan = or i1 %tmp.5, %tmp.9       ; [#uses=1 type=i1]
  %sel_tmp6 = xor i1 %sel_tmp6.demorgan, true     ; [#uses=1 type=i1]
  %sel_tmp7 = and i1 %tmp.11, %sel_tmp6           ; [#uses=4 type=i1]
  %or_cond = or i1 %sel_tmp7, %sel_tmp2, !dbg !84 ; [#uses=1 type=i1] [debug line = 63:6]
  %newSel = select i1 %tmp.5, i32 -1, i32 %index5 ; [#uses=1 type=i32]
  %index1.2 = select i1 %or_cond, i32 %index5, i32 %newSel ; [#uses=1 type=i32]
  %sel_tmp5 = select i1 %sel_tmp2, i32 -1, i32 %index1.1, !dbg !85 ; [#uses=1 type=i32] [debug line = 62:6]
  %index0.1 = select i1 %sel_tmp7, i32 %index1.1, i32 %sel_tmp5, !dbg !85 ; [#uses=1 type=i32] [debug line = 62:6]
  %index0.6 = select i1 %sel_tmp7, i32 -1, i32 %index0.3 ; [#uses=2 type=i32]
  %sel_tmp8 = select i1 %tmp.5, float %hist1.1, float %hist.load.3 ; [#uses=1 type=float]
  %sel_tmp9 = select i1 %sel_tmp2, float %hist0.1, float %sel_tmp8 ; [#uses=1 type=float]
  %hist2.2.pn = select i1 %sel_tmp7, float %hist5, float %sel_tmp9 ; [#uses=1 type=float]
  %hist3 = fadd float %hist2.2.pn, %weight3, !dbg !86 ; [#uses=1 type=float] [debug line = 45:7]
  call void @llvm.dbg.value(metadata !{float %hist3}, i64 0, metadata !88), !dbg !86 ; [debug line = 45:7] [debug variable = hist3]
  %tmp.15 = icmp eq i32 %index0.6, -1, !dbg !89   ; [#uses=1 type=i1] [debug line = 57:6]
  br i1 %tmp.15, label %._crit_edge3, label %1, !dbg !89 ; [debug line = 57:6]

; <label>:1                                       ; preds = %_ifconv
  %tmp.17 = sext i32 %index0.6 to i64, !dbg !90   ; [#uses=1 type=i64] [debug line = 58:7]
  %hist.addr.7 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp.17, !dbg !90 ; [#uses=1 type=float*] [debug line = 58:7]
  store float %hist5, float* %hist.addr.7, align 4, !dbg !90 ; [debug line = 58:7]
  br label %._crit_edge3, !dbg !92                ; [debug line = 59:6]

._crit_edge3:                                     ; preds = %1, %_ifconv
  call void @llvm.dbg.value(metadata !{i32 %index0.1}, i64 0, metadata !48), !dbg !85 ; [debug line = 62:6] [debug variable = index0]
  call void @llvm.dbg.value(metadata !{i32 %index1.2}, i64 0, metadata !50), !dbg !84 ; [debug line = 63:6] [debug variable = index1]
  call void @llvm.dbg.value(metadata !{i32 %index3}, i64 0, metadata !52), !dbg !93 ; [debug line = 64:6] [debug variable = index2]
  call void @llvm.dbg.value(metadata !{float %hist0.1}, i64 0, metadata !54), !dbg !94 ; [debug line = 66:6] [debug variable = hist0]
  call void @llvm.dbg.value(metadata !{float %hist1.1}, i64 0, metadata !60), !dbg !95 ; [debug line = 67:6] [debug variable = hist1]
  call void @llvm.dbg.value(metadata !{float %hist3}, i64 0, metadata !67), !dbg !96 ; [debug line = 68:6] [debug variable = hist2]
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str, i32 %tmp.18) nounwind, !dbg !97 ; [#uses=0 type=i32] [debug line = 69:5]
  %i.1 = add i11 %i, 1, !dbg !98                  ; [#uses=1 type=i11] [debug line = 36:24]
  call void @llvm.dbg.value(metadata !{i11 %i.1}, i64 0, metadata !99), !dbg !98 ; [debug line = 36:24] [debug variable = i]
  br label %.preheader, !dbg !98                  ; [debug line = 36:24]

; <label>:3                                       ; preds = %.preheader
  %hist1.2.lcssa = phi float [ %hist1.1, %.preheader ] ; [#uses=1 type=float]
  %index0.3.lcssa = phi i32 [ %index0.3, %.preheader ] ; [#uses=2 type=i32]
  %index1.1.lcssa = phi i32 [ %index1.1, %.preheader ] ; [#uses=2 type=i32]
  %index5.lcssa = phi i32 [ %index5, %.preheader ] ; [#uses=2 type=i32]
  %hist0.1.lcssa = phi float [ %hist0.1, %.preheader ] ; [#uses=1 type=float]
  %hist5.lcssa = phi float [ %hist5, %.preheader ] ; [#uses=1 type=float]
  %tmp.1 = icmp eq i32 %index0.3.lcssa, -1, !dbg !100 ; [#uses=1 type=i1] [debug line = 72:2]
  br i1 %tmp.1, label %._crit_edge4, label %4, !dbg !100 ; [debug line = 72:2]

; <label>:4                                       ; preds = %3
  %tmp.7 = sext i32 %index0.3.lcssa to i64, !dbg !101 ; [#uses=1 type=i64] [debug line = 73:3]
  %hist.addr.3 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=float*] [debug line = 73:3]
  store float %hist5.lcssa, float* %hist.addr.3, align 4, !dbg !101 ; [debug line = 73:3]
  br label %._crit_edge4, !dbg !103               ; [debug line = 74:2]

._crit_edge4:                                     ; preds = %4, %3
  %tmp.10 = icmp eq i32 %index1.1.lcssa, -1, !dbg !104 ; [#uses=1 type=i1] [debug line = 75:2]
  br i1 %tmp.10, label %._crit_edge5, label %5, !dbg !104 ; [debug line = 75:2]

; <label>:5                                       ; preds = %._crit_edge4
  %tmp.12 = sext i32 %index1.1.lcssa to i64, !dbg !105 ; [#uses=1 type=i64] [debug line = 76:3]
  %hist.addr.4 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp.12, !dbg !105 ; [#uses=1 type=float*] [debug line = 76:3]
  store float %hist0.1.lcssa, float* %hist.addr.4, align 4, !dbg !105 ; [debug line = 76:3]
  br label %._crit_edge5, !dbg !107               ; [debug line = 77:2]

._crit_edge5:                                     ; preds = %5, %._crit_edge4
  %tmp.14 = icmp eq i32 %index5.lcssa, -1, !dbg !108 ; [#uses=1 type=i1] [debug line = 78:2]
  br i1 %tmp.14, label %._crit_edge6, label %6, !dbg !108 ; [debug line = 78:2]

; <label>:6                                       ; preds = %._crit_edge5
  %tmp.16 = sext i32 %index5.lcssa to i64, !dbg !109 ; [#uses=1 type=i64] [debug line = 79:3]
  %hist.addr.6 = getelementptr [1024 x float]* %hist, i64 0, i64 %tmp.16, !dbg !109 ; [#uses=1 type=float*] [debug line = 79:3]
  store float %hist1.2.lcssa, float* %hist.addr.6, align 4, !dbg !109 ; [debug line = 79:3]
  br label %._crit_edge6, !dbg !111               ; [debug line = 80:2]

._crit_edge6:                                     ; preds = %6, %._crit_edge5
  ret void, !dbg !112                             ; [debug line = 81:1]
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

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/kernel3.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel3", metadata !"kernel3", metadata !"_Z7kernel3PfS_Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel3.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel3", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"int*"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"hist", metadata !"weight", metadata !"index"}
!21 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 31, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"hist", metadata !26, metadata !"float", i32 0, i32 31}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 1023, i32 1}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"weight", metadata !26, metadata !"float", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"index", metadata !26, metadata !"int", i32 0, i32 31}
!36 = metadata !{i32 786689, metadata !5, metadata !"hist", null, i32 3, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!40 = metadata !{i32 3, i32 21, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"weight", null, i32 3, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 3, i32 39, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"index", null, i32 3, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !12, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{i32 3, i32 57, metadata !5, null}
!46 = metadata !{i32 10, i32 2, metadata !47, null}
!47 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786688, metadata !47, metadata !"index0", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 11, i32 2, metadata !47, null}
!50 = metadata !{i32 786688, metadata !47, metadata !"index1", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 12, i32 2, metadata !47, null}
!52 = metadata !{i32 786688, metadata !47, metadata !"index2", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 15, i32 2, metadata !47, null}
!54 = metadata !{i32 786688, metadata !47, metadata !"hist0", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 18, i32 2, metadata !47, null}
!56 = metadata !{i32 21, i32 3, metadata !57, null}
!57 = metadata !{i32 786443, metadata !47, i32 18, i32 22, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 23, i32 3, metadata !59, null}
!59 = metadata !{i32 786443, metadata !47, i32 22, i32 7, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786688, metadata !47, metadata !"hist1", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 26, i32 2, metadata !47, null}
!62 = metadata !{i32 28, i32 3, metadata !63, null}
!63 = metadata !{i32 786443, metadata !47, i32 26, i32 22, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 29, i32 8, metadata !47, null}
!65 = metadata !{i32 33, i32 3, metadata !66, null}
!66 = metadata !{i32 786443, metadata !47, i32 32, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786688, metadata !47, metadata !"hist2", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 31, i32 3, metadata !69, null}
!69 = metadata !{i32 786443, metadata !47, i32 29, i32 28, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 36, i32 14, metadata !71, null}
!71 = metadata !{i32 786443, metadata !47, i32 36, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 36, i32 30, metadata !73, null}
!73 = metadata !{i32 786443, metadata !71, i32 36, i32 29, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 38, i32 1, metadata !73, null}
!75 = metadata !{i32 39, i32 2, metadata !73, null}
!76 = metadata !{i32 786688, metadata !47, metadata !"index3", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 40, i32 6, metadata !73, null}
!78 = metadata !{i32 786688, metadata !47, metadata !"weight3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 43, i32 6, metadata !73, null}
!80 = metadata !{i32 46, i32 12, metadata !73, null}
!81 = metadata !{i32 49, i32 12, metadata !73, null}
!82 = metadata !{i32 53, i32 7, metadata !83, null}
!83 = metadata !{i32 786443, metadata !73, i32 52, i32 11, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 63, i32 6, metadata !73, null}
!85 = metadata !{i32 62, i32 6, metadata !73, null}
!86 = metadata !{i32 45, i32 7, metadata !87, null}
!87 = metadata !{i32 786443, metadata !73, i32 43, i32 26, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786688, metadata !47, metadata !"hist3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 57, i32 6, metadata !73, null}
!90 = metadata !{i32 58, i32 7, metadata !91, null}
!91 = metadata !{i32 786443, metadata !73, i32 57, i32 22, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 59, i32 6, metadata !91, null}
!93 = metadata !{i32 64, i32 6, metadata !73, null}
!94 = metadata !{i32 66, i32 6, metadata !73, null}
!95 = metadata !{i32 67, i32 6, metadata !73, null}
!96 = metadata !{i32 68, i32 6, metadata !73, null}
!97 = metadata !{i32 69, i32 5, metadata !73, null}
!98 = metadata !{i32 36, i32 24, metadata !71, null}
!99 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !6, i32 36, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 72, i32 2, metadata !47, null}
!101 = metadata !{i32 73, i32 3, metadata !102, null}
!102 = metadata !{i32 786443, metadata !47, i32 72, i32 18, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 74, i32 2, metadata !102, null}
!104 = metadata !{i32 75, i32 2, metadata !47, null}
!105 = metadata !{i32 76, i32 3, metadata !106, null}
!106 = metadata !{i32 786443, metadata !47, i32 75, i32 18, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 77, i32 2, metadata !106, null}
!108 = metadata !{i32 78, i32 2, metadata !47, null}
!109 = metadata !{i32 79, i32 3, metadata !110, null}
!110 = metadata !{i32 786443, metadata !47, i32 78, i32 18, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 80, i32 2, metadata !110, null}
!112 = metadata !{i32 81, i32 1, metadata !47, null}
