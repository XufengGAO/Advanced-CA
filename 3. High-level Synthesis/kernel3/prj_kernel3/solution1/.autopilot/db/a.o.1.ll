; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel3.str = internal unnamed_addr constant [8 x i8] c"kernel3\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @kernel3(float* %hist, float* %weight, i32* %index) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel3.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %hist}, i64 0, metadata !22), !dbg !23 ; [debug line = 3:21] [debug variable = hist]
  call void @llvm.dbg.value(metadata !{float* %weight}, i64 0, metadata !24), !dbg !25 ; [debug line = 3:39] [debug variable = weight]
  call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !26), !dbg !27 ; [debug line = 3:57] [debug variable = index]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %hist, i32 1024) nounwind, !dbg !28 ; [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %weight, i32 1024) nounwind, !dbg !30 ; [debug line = 4:36]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %index, i32 1024) nounwind, !dbg !31 ; [debug line = 4:72]
  %index0 = load i32* %index, align 4, !dbg !32   ; [#uses=4 type=i32] [debug line = 10:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %index0) nounwind
  call void @llvm.dbg.value(metadata !{i32 %index0}, i64 0, metadata !33), !dbg !32 ; [debug line = 10:2] [debug variable = index0]
  %index.addr = getelementptr inbounds i32* %index, i64 1, !dbg !34 ; [#uses=1 type=i32*] [debug line = 11:2]
  %index1 = load i32* %index.addr, align 4, !dbg !34 ; [#uses=7 type=i32] [debug line = 11:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %index1) nounwind
  call void @llvm.dbg.value(metadata !{i32 %index1}, i64 0, metadata !35), !dbg !34 ; [debug line = 11:2] [debug variable = index1]
  %index.addr.1 = getelementptr inbounds i32* %index, i64 2, !dbg !36 ; [#uses=1 type=i32*] [debug line = 12:2]
  %index2 = load i32* %index.addr.1, align 4, !dbg !36 ; [#uses=6 type=i32] [debug line = 12:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %index2) nounwind
  call void @llvm.dbg.value(metadata !{i32 %index2}, i64 0, metadata !37), !dbg !36 ; [debug line = 12:2] [debug variable = index2]
  %tmp = sext i32 %index0 to i64, !dbg !38        ; [#uses=1 type=i64] [debug line = 15:2]
  %hist.addr = getelementptr inbounds float* %hist, i64 %tmp, !dbg !38 ; [#uses=1 type=float*] [debug line = 15:2]
  %hist.load = load float* %hist.addr, align 4, !dbg !38 ; [#uses=2 type=float] [debug line = 15:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %hist.load) nounwind
  %weight.load = load float* %weight, align 4, !dbg !38 ; [#uses=2 type=float] [debug line = 15:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight.load) nounwind
  %hist0 = fadd float %hist.load, %weight.load, !dbg !38 ; [#uses=3 type=float] [debug line = 15:2]
  call void @llvm.dbg.value(metadata !{float %hist0}, i64 0, metadata !39), !dbg !38 ; [debug line = 15:2] [debug variable = hist0]
  %tmp.2 = icmp eq i32 %index1, %index0, !dbg !40 ; [#uses=1 type=i1] [debug line = 18:2]
  br i1 %tmp.2, label %1, label %2, !dbg !40      ; [debug line = 18:2]

; <label>:1                                       ; preds = %0
  %weight.addr = getelementptr inbounds float* %weight, i64 1, !dbg !41 ; [#uses=1 type=float*] [debug line = 21:3]
  %weight.load.1 = load float* %weight.addr, align 4, !dbg !41 ; [#uses=2 type=float] [debug line = 21:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight.load.1) nounwind
  %hist1 = fadd float %hist0, %weight.load.1, !dbg !41 ; [#uses=1 type=float] [debug line = 21:3]
  call void @llvm.dbg.value(metadata !{float %hist1}, i64 0, metadata !43), !dbg !41 ; [debug line = 21:3] [debug variable = hist1]
  br label %3, !dbg !44                           ; [debug line = 22:2]

; <label>:2                                       ; preds = %0
  %tmp.4 = sext i32 %index1 to i64, !dbg !45      ; [#uses=1 type=i64] [debug line = 23:3]
  %hist.addr.1 = getelementptr inbounds float* %hist, i64 %tmp.4, !dbg !45 ; [#uses=1 type=float*] [debug line = 23:3]
  %hist.load.1 = load float* %hist.addr.1, align 4, !dbg !45 ; [#uses=2 type=float] [debug line = 23:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %hist.load.1) nounwind
  %weight.addr.1 = getelementptr inbounds float* %weight, i64 1, !dbg !45 ; [#uses=1 type=float*] [debug line = 23:3]
  %weight.load.2 = load float* %weight.addr.1, align 4, !dbg !45 ; [#uses=2 type=float] [debug line = 23:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight.load.2) nounwind
  %hist1.2 = fadd float %hist.load.1, %weight.load.2, !dbg !45 ; [#uses=1 type=float] [debug line = 23:3]
  call void @llvm.dbg.value(metadata !{float %hist1.2}, i64 0, metadata !43), !dbg !45 ; [debug line = 23:3] [debug variable = hist1]
  br label %3

; <label>:3                                       ; preds = %2, %1
  %hist13 = phi float [ %hist1, %1 ], [ %hist1.2, %2 ] ; [#uses=2 type=float]
  %index01 = phi i32 [ -1, %1 ], [ %index0, %2 ]  ; [#uses=3 type=i32]
  %tmp.6 = icmp eq i32 %index2, %index1, !dbg !47 ; [#uses=1 type=i1] [debug line = 26:2]
  br i1 %tmp.6, label %4, label %5, !dbg !47      ; [debug line = 26:2]

; <label>:4                                       ; preds = %3
  %weight.addr.2 = getelementptr inbounds float* %weight, i64 2, !dbg !48 ; [#uses=1 type=float*] [debug line = 28:3]
  %weight.load.3 = load float* %weight.addr.2, align 4, !dbg !48 ; [#uses=2 type=float] [debug line = 28:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight.load.3) nounwind
  %hist2 = fadd float %hist13, %weight.load.3, !dbg !48 ; [#uses=1 type=float] [debug line = 28:3]
  call void @llvm.dbg.value(metadata !{float %hist2}, i64 0, metadata !50), !dbg !48 ; [debug line = 28:3] [debug variable = hist2]
  br label %.preheader.preheader, !dbg !51        ; [debug line = 29:2]

; <label>:5                                       ; preds = %3
  %tmp.8 = icmp eq i32 %index2, %index01, !dbg !52 ; [#uses=1 type=i1] [debug line = 29:8]
  br i1 %tmp.8, label %6, label %7, !dbg !52      ; [debug line = 29:8]

; <label>:6                                       ; preds = %5
  %weight.addr.3 = getelementptr inbounds float* %weight, i64 2, !dbg !53 ; [#uses=1 type=float*] [debug line = 31:3]
  %weight.load.4 = load float* %weight.addr.3, align 4, !dbg !53 ; [#uses=2 type=float] [debug line = 31:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight.load.4) nounwind
  %hist2.1 = fadd float %hist0, %weight.load.4, !dbg !53 ; [#uses=1 type=float] [debug line = 31:3]
  call void @llvm.dbg.value(metadata !{float %hist2.1}, i64 0, metadata !50), !dbg !53 ; [debug line = 31:3] [debug variable = hist2]
  br label %.preheader.preheader, !dbg !55        ; [debug line = 32:2]

; <label>:7                                       ; preds = %5
  %tmp.10 = sext i32 %index2 to i64, !dbg !56     ; [#uses=1 type=i64] [debug line = 33:3]
  %hist.addr.2 = getelementptr inbounds float* %hist, i64 %tmp.10, !dbg !56 ; [#uses=1 type=float*] [debug line = 33:3]
  %hist.load.2 = load float* %hist.addr.2, align 4, !dbg !56 ; [#uses=2 type=float] [debug line = 33:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %hist.load.2) nounwind
  %weight.addr.4 = getelementptr inbounds float* %weight, i64 2, !dbg !56 ; [#uses=1 type=float*] [debug line = 33:3]
  %weight.load.5 = load float* %weight.addr.4, align 4, !dbg !56 ; [#uses=2 type=float] [debug line = 33:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight.load.5) nounwind
  %hist2.3 = fadd float %hist.load.2, %weight.load.5, !dbg !56 ; [#uses=1 type=float] [debug line = 33:3]
  call void @llvm.dbg.value(metadata !{float %hist2.3}, i64 0, metadata !50), !dbg !56 ; [debug line = 33:3] [debug variable = hist2]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %7, %6, %4
  %index2.0.ph = phi i32 [ %index1, %4 ], [ %index2, %7 ], [ %index2, %6 ] ; [#uses=1 type=i32]
  %index1.1.ph = phi i32 [ -1, %4 ], [ %index1, %7 ], [ %index1, %6 ] ; [#uses=1 type=i32]
  %index0.3.ph = phi i32 [ %index01, %4 ], [ %index01, %7 ], [ -1, %6 ] ; [#uses=1 type=i32]
  %hist2.2.ph = phi float [ %hist2, %4 ], [ %hist2.3, %7 ], [ %hist2.1, %6 ] ; [#uses=1 type=float]
  br label %.preheader, !dbg !58                  ; [debug line = 36:14]

.preheader:                                       ; preds = %._crit_edge3, %.preheader.preheader
  %hist01 = phi float [ %hist0.2, %._crit_edge3 ], [ %hist0, %.preheader.preheader ] ; [#uses=3 type=float]
  %hist0.2 = phi float [ %hist1.4, %._crit_edge3 ], [ %hist13, %.preheader.preheader ] ; [#uses=3 type=float]
  %index21 = phi i32 [ %index3, %._crit_edge3 ], [ %index2.0.ph, %.preheader.preheader ] ; [#uses=5 type=i32]
  %index1.1 = phi i32 [ %index1.2, %._crit_edge3 ], [ %index1.1.ph, %.preheader.preheader ] ; [#uses=5 type=i32]
  %index0.3 = phi i32 [ %index0.2, %._crit_edge3 ], [ %index0.3.ph, %.preheader.preheader ] ; [#uses=5 type=i32]
  %hist1.4 = phi float [ %hist3, %._crit_edge3 ], [ %hist2.2.ph, %.preheader.preheader ] ; [#uses=3 type=float]
  %i = phi i32 [ %i.1, %._crit_edge3 ], [ 3, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 1024, !dbg !58      ; [#uses=1 type=i1] [debug line = 36:14]
  br i1 %exitcond, label %13, label %8, !dbg !58  ; [debug line = 36:14]

; <label>:8                                       ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 36:30]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !62 ; [debug line = 38:1]
  %tmp.13 = sext i32 %i to i64, !dbg !63          ; [#uses=2 type=i64] [debug line = 39:2]
  %index.addr.2 = getelementptr inbounds i32* %index, i64 %tmp.13, !dbg !63 ; [#uses=1 type=i32*] [debug line = 39:2]
  %index3 = load i32* %index.addr.2, align 4, !dbg !63 ; [#uses=6 type=i32] [debug line = 39:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %index3) nounwind
  call void @llvm.dbg.value(metadata !{i32 %index3}, i64 0, metadata !64), !dbg !63 ; [debug line = 39:2] [debug variable = index3]
  %weight.addr.5 = getelementptr inbounds float* %weight, i64 %tmp.13, !dbg !65 ; [#uses=1 type=float*] [debug line = 40:6]
  %weight3 = load float* %weight.addr.5, align 4, !dbg !65 ; [#uses=2 type=float] [debug line = 40:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight3) nounwind
  call void @llvm.dbg.value(metadata !{float %weight3}, i64 0, metadata !66), !dbg !65 ; [debug line = 40:6] [debug variable = weight3]
  %tmp.14 = icmp eq i32 %index3, %index21, !dbg !67 ; [#uses=1 type=i1] [debug line = 43:6]
  br i1 %tmp.14, label %._crit_edge, label %9, !dbg !67 ; [debug line = 43:6]

; <label>:9                                       ; preds = %8
  %tmp.16 = icmp eq i32 %index3, %index1.1, !dbg !68 ; [#uses=1 type=i1] [debug line = 46:12]
  br i1 %tmp.16, label %._crit_edge, label %10, !dbg !68 ; [debug line = 46:12]

; <label>:10                                      ; preds = %9
  %tmp.18 = icmp eq i32 %index3, %index0.3, !dbg !69 ; [#uses=1 type=i1] [debug line = 49:12]
  br i1 %tmp.18, label %._crit_edge, label %11, !dbg !69 ; [debug line = 49:12]

; <label>:11                                      ; preds = %10
  %tmp.20 = sext i32 %index3 to i64, !dbg !70     ; [#uses=1 type=i64] [debug line = 53:7]
  %hist.addr.5 = getelementptr inbounds float* %hist, i64 %tmp.20, !dbg !70 ; [#uses=1 type=float*] [debug line = 53:7]
  %hist.load.3 = load float* %hist.addr.5, align 4, !dbg !70 ; [#uses=2 type=float] [debug line = 53:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %hist.load.3) nounwind
  br label %._crit_edge

._crit_edge:                                      ; preds = %11, %10, %9, %8
  %index1.2 = phi i32 [ %index21, %11 ], [ -1, %8 ], [ %index21, %9 ], [ %index21, %10 ] ; [#uses=1 type=i32]
  %index0.2 = phi i32 [ %index1.1, %11 ], [ %index1.1, %8 ], [ -1, %9 ], [ %index1.1, %10 ] ; [#uses=1 type=i32]
  %index0.6 = phi i32 [ %index0.3, %11 ], [ %index0.3, %8 ], [ %index0.3, %9 ], [ -1, %10 ] ; [#uses=2 type=i32]
  %hist2.2.pn = phi float [ %hist.load.3, %11 ], [ %hist1.4, %8 ], [ %hist0.2, %9 ], [ %hist01, %10 ] ; [#uses=1 type=float]
  %hist3 = fadd float %hist2.2.pn, %weight3, !dbg !72 ; [#uses=1 type=float] [debug line = 45:7]
  call void @llvm.dbg.value(metadata !{float %hist3}, i64 0, metadata !74), !dbg !72 ; [debug line = 45:7] [debug variable = hist3]
  %tmp.22 = icmp eq i32 %index0.6, -1, !dbg !75   ; [#uses=1 type=i1] [debug line = 57:6]
  br i1 %tmp.22, label %._crit_edge3, label %12, !dbg !75 ; [debug line = 57:6]

; <label>:12                                      ; preds = %._crit_edge
  %tmp.24 = sext i32 %index0.6 to i64, !dbg !76   ; [#uses=1 type=i64] [debug line = 58:7]
  %hist.addr.7 = getelementptr inbounds float* %hist, i64 %tmp.24, !dbg !76 ; [#uses=1 type=float*] [debug line = 58:7]
  store float %hist01, float* %hist.addr.7, align 4, !dbg !76 ; [debug line = 58:7]
  br label %._crit_edge3, !dbg !78                ; [debug line = 59:6]

._crit_edge3:                                     ; preds = %12, %._crit_edge
  call void @llvm.dbg.value(metadata !{i32 %index0.2}, i64 0, metadata !33), !dbg !79 ; [debug line = 62:6] [debug variable = index0]
  call void @llvm.dbg.value(metadata !{i32 %index1.2}, i64 0, metadata !35), !dbg !80 ; [debug line = 63:6] [debug variable = index1]
  call void @llvm.dbg.value(metadata !{i32 %index3}, i64 0, metadata !37), !dbg !81 ; [debug line = 64:6] [debug variable = index2]
  call void @llvm.dbg.value(metadata !{float %hist0.2}, i64 0, metadata !39), !dbg !82 ; [debug line = 66:6] [debug variable = hist0]
  call void @llvm.dbg.value(metadata !{float %hist1.4}, i64 0, metadata !43), !dbg !83 ; [debug line = 67:6] [debug variable = hist1]
  call void @llvm.dbg.value(metadata !{float %hist3}, i64 0, metadata !50), !dbg !84 ; [debug line = 68:6] [debug variable = hist2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !85 ; [#uses=0 type=i32] [debug line = 69:5]
  %i.1 = add nsw i32 %i, 1, !dbg !86              ; [#uses=1 type=i32] [debug line = 36:24]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !87), !dbg !86 ; [debug line = 36:24] [debug variable = i]
  br label %.preheader, !dbg !86                  ; [debug line = 36:24]

; <label>:13                                      ; preds = %.preheader
  %hist2.2.lcssa = phi float [ %hist1.4, %.preheader ] ; [#uses=1 type=float]
  %index0.3.lcssa = phi i32 [ %index0.3, %.preheader ] ; [#uses=2 type=i32]
  %index1.1.lcssa = phi i32 [ %index1.1, %.preheader ] ; [#uses=2 type=i32]
  %index2.0.lcssa = phi i32 [ %index21, %.preheader ] ; [#uses=2 type=i32]
  %hist1.1.lcssa = phi float [ %hist0.2, %.preheader ] ; [#uses=1 type=float]
  %hist0.0.lcssa = phi float [ %hist01, %.preheader ] ; [#uses=1 type=float]
  %tmp.12 = icmp eq i32 %index0.3.lcssa, -1, !dbg !88 ; [#uses=1 type=i1] [debug line = 72:2]
  br i1 %tmp.12, label %._crit_edge4, label %14, !dbg !88 ; [debug line = 72:2]

; <label>:14                                      ; preds = %13
  %tmp.15 = sext i32 %index0.3.lcssa to i64, !dbg !89 ; [#uses=1 type=i64] [debug line = 73:3]
  %hist.addr.3 = getelementptr inbounds float* %hist, i64 %tmp.15, !dbg !89 ; [#uses=1 type=float*] [debug line = 73:3]
  store float %hist0.0.lcssa, float* %hist.addr.3, align 4, !dbg !89 ; [debug line = 73:3]
  br label %._crit_edge4, !dbg !91                ; [debug line = 74:2]

._crit_edge4:                                     ; preds = %14, %13
  %tmp.17 = icmp eq i32 %index1.1.lcssa, -1, !dbg !92 ; [#uses=1 type=i1] [debug line = 75:2]
  br i1 %tmp.17, label %._crit_edge5, label %15, !dbg !92 ; [debug line = 75:2]

; <label>:15                                      ; preds = %._crit_edge4
  %tmp.19 = sext i32 %index1.1.lcssa to i64, !dbg !93 ; [#uses=1 type=i64] [debug line = 76:3]
  %hist.addr.4 = getelementptr inbounds float* %hist, i64 %tmp.19, !dbg !93 ; [#uses=1 type=float*] [debug line = 76:3]
  store float %hist1.1.lcssa, float* %hist.addr.4, align 4, !dbg !93 ; [debug line = 76:3]
  br label %._crit_edge5, !dbg !95                ; [debug line = 77:2]

._crit_edge5:                                     ; preds = %15, %._crit_edge4
  %tmp.21 = icmp eq i32 %index2.0.lcssa, -1, !dbg !96 ; [#uses=1 type=i1] [debug line = 78:2]
  br i1 %tmp.21, label %._crit_edge6, label %16, !dbg !96 ; [debug line = 78:2]

; <label>:16                                      ; preds = %._crit_edge5
  %tmp.23 = sext i32 %index2.0.lcssa to i64, !dbg !97 ; [#uses=1 type=i64] [debug line = 79:3]
  %hist.addr.6 = getelementptr inbounds float* %hist, i64 %tmp.23, !dbg !97 ; [#uses=1 type=float*] [debug line = 79:3]
  store float %hist2.2.lcssa, float* %hist.addr.6, align 4, !dbg !97 ; [debug line = 79:3]
  br label %._crit_edge6, !dbg !99                ; [debug line = 80:2]

._crit_edge6:                                     ; preds = %16, %._crit_edge5
  ret void, !dbg !100                             ; [debug line = 81:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=15]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!15}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/kernel3.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel3", metadata !"kernel3", metadata !"_Z7kernel3PfS_Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, i32*)* @kernel3, null, null, metadata !13, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel3.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel3", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{void (float*, float*, i32*)* @kernel3, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"int*"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"hist", metadata !"weight", metadata !"index"}
!21 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!22 = metadata !{i32 786689, metadata !5, metadata !"hist", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 3, i32 21, metadata !5, null}
!24 = metadata !{i32 786689, metadata !5, metadata !"weight", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 3, i32 39, metadata !5, null}
!26 = metadata !{i32 786689, metadata !5, metadata !"index", metadata !6, i32 50331651, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 3, i32 57, metadata !5, null}
!28 = metadata !{i32 4, i32 2, metadata !29, null}
!29 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 4, i32 36, metadata !29, null}
!31 = metadata !{i32 4, i32 72, metadata !29, null}
!32 = metadata !{i32 10, i32 2, metadata !29, null}
!33 = metadata !{i32 786688, metadata !29, metadata !"index0", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 11, i32 2, metadata !29, null}
!35 = metadata !{i32 786688, metadata !29, metadata !"index1", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 12, i32 2, metadata !29, null}
!37 = metadata !{i32 786688, metadata !29, metadata !"index2", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 15, i32 2, metadata !29, null}
!39 = metadata !{i32 786688, metadata !29, metadata !"hist0", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 18, i32 2, metadata !29, null}
!41 = metadata !{i32 21, i32 3, metadata !42, null}
!42 = metadata !{i32 786443, metadata !29, i32 18, i32 22, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786688, metadata !29, metadata !"hist1", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 22, i32 2, metadata !42, null}
!45 = metadata !{i32 23, i32 3, metadata !46, null}
!46 = metadata !{i32 786443, metadata !29, i32 22, i32 7, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 26, i32 2, metadata !29, null}
!48 = metadata !{i32 28, i32 3, metadata !49, null}
!49 = metadata !{i32 786443, metadata !29, i32 26, i32 22, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786688, metadata !29, metadata !"hist2", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 29, i32 2, metadata !49, null}
!52 = metadata !{i32 29, i32 8, metadata !29, null}
!53 = metadata !{i32 31, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !29, i32 29, i32 28, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 32, i32 2, metadata !54, null}
!56 = metadata !{i32 33, i32 3, metadata !57, null}
!57 = metadata !{i32 786443, metadata !29, i32 32, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 36, i32 14, metadata !59, null}
!59 = metadata !{i32 786443, metadata !29, i32 36, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 36, i32 30, metadata !61, null}
!61 = metadata !{i32 786443, metadata !59, i32 36, i32 29, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 38, i32 1, metadata !61, null}
!63 = metadata !{i32 39, i32 2, metadata !61, null}
!64 = metadata !{i32 786688, metadata !29, metadata !"index3", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 40, i32 6, metadata !61, null}
!66 = metadata !{i32 786688, metadata !29, metadata !"weight3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 43, i32 6, metadata !61, null}
!68 = metadata !{i32 46, i32 12, metadata !61, null}
!69 = metadata !{i32 49, i32 12, metadata !61, null}
!70 = metadata !{i32 53, i32 7, metadata !71, null}
!71 = metadata !{i32 786443, metadata !61, i32 52, i32 11, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 45, i32 7, metadata !73, null}
!73 = metadata !{i32 786443, metadata !61, i32 43, i32 26, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786688, metadata !29, metadata !"hist3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 57, i32 6, metadata !61, null}
!76 = metadata !{i32 58, i32 7, metadata !77, null}
!77 = metadata !{i32 786443, metadata !61, i32 57, i32 22, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 59, i32 6, metadata !77, null}
!79 = metadata !{i32 62, i32 6, metadata !61, null}
!80 = metadata !{i32 63, i32 6, metadata !61, null}
!81 = metadata !{i32 64, i32 6, metadata !61, null}
!82 = metadata !{i32 66, i32 6, metadata !61, null}
!83 = metadata !{i32 67, i32 6, metadata !61, null}
!84 = metadata !{i32 68, i32 6, metadata !61, null}
!85 = metadata !{i32 69, i32 5, metadata !61, null}
!86 = metadata !{i32 36, i32 24, metadata !59, null}
!87 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !6, i32 36, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 72, i32 2, metadata !29, null}
!89 = metadata !{i32 73, i32 3, metadata !90, null}
!90 = metadata !{i32 786443, metadata !29, i32 72, i32 18, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 74, i32 2, metadata !90, null}
!92 = metadata !{i32 75, i32 2, metadata !29, null}
!93 = metadata !{i32 76, i32 3, metadata !94, null}
!94 = metadata !{i32 786443, metadata !29, i32 75, i32 18, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 77, i32 2, metadata !94, null}
!96 = metadata !{i32 78, i32 2, metadata !29, null}
!97 = metadata !{i32 79, i32 3, metadata !98, null}
!98 = metadata !{i32 786443, metadata !29, i32 78, i32 18, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 80, i32 2, metadata !98, null}
!100 = metadata !{i32 81, i32 1, metadata !29, null}
