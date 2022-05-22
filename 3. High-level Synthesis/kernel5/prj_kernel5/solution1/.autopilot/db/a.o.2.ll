; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel5.str = internal unnamed_addr constant [8 x i8] c"kernel5\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define float @kernel5(float %bound, [1024 x float]* %a, [1024 x float]* %b) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap(float %bound) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %a) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %b) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @kernel5.str) nounwind
  call void @llvm.dbg.value(metadata !{float %bound}, i64 0, metadata !42), !dbg !43 ; [debug line = 3:21] [debug variable = bound]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %a}, i64 0, metadata !44), !dbg !48 ; [debug line = 3:34] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %b}, i64 0, metadata !49), !dbg !50 ; [debug line = 3:49] [debug variable = b]
  br label %1, !dbg !51                           ; [debug line = 7:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %sum. = phi float [ undef, %0 ], [ %sum, %2 ]   ; [#uses=3 type=float]
  %sum._to_int = bitcast float %sum. to i32       ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum._to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.5 = trunc i32 %sum._to_int to i23          ; [#uses=1 type=i23]
  %bound_to_int = bitcast float %bound to i32     ; [#uses=2 type=i32]
  %tmp.6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bound_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.7 = trunc i32 %bound_to_int to i23         ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.5, 0                 ; [#uses=1 type=i1]
  %tmp.8 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp.6, -1                ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp.7, 0                ; [#uses=1 type=i1]
  %tmp.9 = or i1 %notrhs2, %notlhs1               ; [#uses=1 type=i1]
  %tmp.10 = and i1 %tmp.8, %tmp.9                 ; [#uses=1 type=i1]
  %tmp.11 = fcmp olt float %sum., %bound, !dbg !51 ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp.12 = and i1 %tmp.10, %tmp.11, !dbg !51     ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp.1 = icmp slt i32 %i, 1024, !dbg !51        ; [#uses=1 type=i1] [debug line = 7:5]
  %tmp.2 = and i1 %tmp.12, %tmp.1, !dbg !51       ; [#uses=1 type=i1] [debug line = 7:5]
  br i1 %tmp.2, label %2, label %4

; <label>:2                                       ; preds = %1
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str) nounwind, !dbg !53 ; [#uses=1 type=i32] [debug line = 8:6]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !55 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !56 ; [debug line = 10:1]
  %tmp.3 = sext i32 %i to i64, !dbg !57           ; [#uses=2 type=i64] [debug line = 11:2]
  %a.addr = getelementptr [1024 x float]* %a, i64 0, i64 %tmp.3, !dbg !57 ; [#uses=1 type=float*] [debug line = 11:2]
  %a.load = load float* %a.addr, align 4, !dbg !57 ; [#uses=1 type=float] [debug line = 11:2]
  %b.addr = getelementptr [1024 x float]* %b, i64 0, i64 %tmp.3, !dbg !57 ; [#uses=1 type=float*] [debug line = 11:2]
  %b.load = load float* %b.addr, align 4, !dbg !57 ; [#uses=1 type=float] [debug line = 11:2]
  %sum = fadd float %a.load, %b.load, !dbg !57    ; [#uses=1 type=float] [debug line = 11:2]
  call void @llvm.dbg.value(metadata !{float %sum}, i64 0, metadata !58), !dbg !57 ; [debug line = 11:2] [debug variable = sum]
  %i.1 = add nsw i32 %i, 1, !dbg !59              ; [#uses=1 type=i32] [debug line = 12:9]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !60), !dbg !59 ; [debug line = 12:9] [debug variable = i]
  %3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str, i32 %tmp.4) nounwind, !dbg !62 ; [#uses=0 type=i32] [debug line = 13:5]
  br label %1, !dbg !62                           ; [debug line = 13:5]

; <label>:4                                       ; preds = %1
  %sum..lcssa = phi float [ %sum., %1 ]           ; [#uses=1 type=float]
  ret float %sum..lcssa, !dbg !63                 ; [debug line = 14:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/kernel5.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel5", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel5", metadata !"kernel5", metadata !"_Z7kernel5fPfS_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel5.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel5", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"bound", metadata !"a", metadata !"b"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"bound", metadata !24, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 0}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"a", metadata !30, metadata !"float", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 1023, i32 1}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"b", metadata !30, metadata !"float", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"return", metadata !40, metadata !"float", i32 0, i32 31}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 1, i32 0}
!42 = metadata !{i32 786689, metadata !5, metadata !"bound", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 3, i32 21, metadata !5, null}
!44 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 3, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !9, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 3, i32 34, metadata !5, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 3, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 3, i32 49, metadata !5, null}
!51 = metadata !{i32 7, i32 5, metadata !52, null}
!52 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 8, i32 6, metadata !54, null}
!54 = metadata !{i32 786443, metadata !52, i32 8, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 9, i32 1, metadata !54, null}
!56 = metadata !{i32 10, i32 1, metadata !54, null}
!57 = metadata !{i32 11, i32 2, metadata !54, null}
!58 = metadata !{i32 786688, metadata !52, metadata !"sum", metadata !6, i32 6, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 12, i32 9, metadata !54, null}
!60 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !6, i32 5, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 13, i32 5, metadata !54, null}
!63 = metadata !{i32 14, i32 5, metadata !52, null}
