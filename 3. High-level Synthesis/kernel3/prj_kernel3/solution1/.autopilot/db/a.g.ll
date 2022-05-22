; ModuleID = '/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @_Z7kernel3PfS_Pi(float* %hist, float* %weight, i32* %index) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=10 type=float**]
  %2 = alloca float*, align 8                     ; [#uses=9 type=float**]
  %3 = alloca i32*, align 8                       ; [#uses=6 type=i32**]
  %index0 = alloca i32, align 4                   ; [#uses=13 type=i32*]
  %index1 = alloca i32, align 4                   ; [#uses=11 type=i32*]
  %index2 = alloca i32, align 4                   ; [#uses=10 type=i32*]
  %index3 = alloca i32, align 4                   ; [#uses=6 type=i32*]
  %hist0 = alloca float, align 4                  ; [#uses=7 type=float*]
  %hist1 = alloca float, align 4                  ; [#uses=7 type=float*]
  %hist2 = alloca float, align 4                  ; [#uses=7 type=float*]
  %hist3 = alloca float, align 4                  ; [#uses=5 type=float*]
  %weight3 = alloca float, align 4                ; [#uses=5 type=float*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store float* %hist, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !22), !dbg !23 ; [debug line = 3:21] [debug variable = hist]
  store float* %weight, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !24), !dbg !25 ; [debug line = 3:39] [debug variable = weight]
  store i32* %index, i32** %3, align 8
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !26), !dbg !27 ; [debug line = 3:57] [debug variable = index]
  %4 = load float** %1, align 8, !dbg !28         ; [#uses=1 type=float*] [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %4, i32 1024) nounwind, !dbg !28 ; [debug line = 4:2]
  %5 = load float** %2, align 8, !dbg !30         ; [#uses=1 type=float*] [debug line = 4:36]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %5, i32 1024) nounwind, !dbg !30 ; [debug line = 4:36]
  %6 = load i32** %3, align 8, !dbg !31           ; [#uses=1 type=i32*] [debug line = 4:72]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %6, i32 1024) nounwind, !dbg !31 ; [debug line = 4:72]
  call void @llvm.dbg.declare(metadata !{i32* %index0}, metadata !32), !dbg !33 ; [debug line = 6:6] [debug variable = index0]
  call void @llvm.dbg.declare(metadata !{i32* %index1}, metadata !34), !dbg !35 ; [debug line = 6:14] [debug variable = index1]
  call void @llvm.dbg.declare(metadata !{i32* %index2}, metadata !36), !dbg !37 ; [debug line = 6:22] [debug variable = index2]
  call void @llvm.dbg.declare(metadata !{i32* %index3}, metadata !38), !dbg !39 ; [debug line = 6:30] [debug variable = index3]
  call void @llvm.dbg.declare(metadata !{float* %hist0}, metadata !40), !dbg !41 ; [debug line = 7:8] [debug variable = hist0]
  call void @llvm.dbg.declare(metadata !{float* %hist1}, metadata !42), !dbg !43 ; [debug line = 7:15] [debug variable = hist1]
  call void @llvm.dbg.declare(metadata !{float* %hist2}, metadata !44), !dbg !45 ; [debug line = 7:22] [debug variable = hist2]
  call void @llvm.dbg.declare(metadata !{float* %hist3}, metadata !46), !dbg !47 ; [debug line = 7:29] [debug variable = hist3]
  call void @llvm.dbg.declare(metadata !{float* %weight3}, metadata !48), !dbg !49 ; [debug line = 7:36] [debug variable = weight3]
  %7 = load i32** %3, align 8, !dbg !50           ; [#uses=1 type=i32*] [debug line = 10:2]
  %8 = getelementptr inbounds i32* %7, i64 0, !dbg !50 ; [#uses=1 type=i32*] [debug line = 10:2]
  %9 = load i32* %8, align 4, !dbg !50            ; [#uses=1 type=i32] [debug line = 10:2]
  store i32 %9, i32* %index0, align 4, !dbg !50   ; [debug line = 10:2]
  %10 = load i32** %3, align 8, !dbg !51          ; [#uses=1 type=i32*] [debug line = 11:2]
  %11 = getelementptr inbounds i32* %10, i64 1, !dbg !51 ; [#uses=1 type=i32*] [debug line = 11:2]
  %12 = load i32* %11, align 4, !dbg !51          ; [#uses=1 type=i32] [debug line = 11:2]
  store i32 %12, i32* %index1, align 4, !dbg !51  ; [debug line = 11:2]
  %13 = load i32** %3, align 8, !dbg !52          ; [#uses=1 type=i32*] [debug line = 12:2]
  %14 = getelementptr inbounds i32* %13, i64 2, !dbg !52 ; [#uses=1 type=i32*] [debug line = 12:2]
  %15 = load i32* %14, align 4, !dbg !52          ; [#uses=1 type=i32] [debug line = 12:2]
  store i32 %15, i32* %index2, align 4, !dbg !52  ; [debug line = 12:2]
  %16 = load i32* %index0, align 4, !dbg !53      ; [#uses=1 type=i32] [debug line = 15:2]
  %17 = sext i32 %16 to i64, !dbg !53             ; [#uses=1 type=i64] [debug line = 15:2]
  %18 = load float** %1, align 8, !dbg !53        ; [#uses=1 type=float*] [debug line = 15:2]
  %19 = getelementptr inbounds float* %18, i64 %17, !dbg !53 ; [#uses=1 type=float*] [debug line = 15:2]
  %20 = load float* %19, align 4, !dbg !53        ; [#uses=1 type=float] [debug line = 15:2]
  %21 = load float** %2, align 8, !dbg !53        ; [#uses=1 type=float*] [debug line = 15:2]
  %22 = getelementptr inbounds float* %21, i64 0, !dbg !53 ; [#uses=1 type=float*] [debug line = 15:2]
  %23 = load float* %22, align 4, !dbg !53        ; [#uses=1 type=float] [debug line = 15:2]
  %24 = fadd float %20, %23, !dbg !53             ; [#uses=1 type=float] [debug line = 15:2]
  store float %24, float* %hist0, align 4, !dbg !53 ; [debug line = 15:2]
  %25 = load i32* %index1, align 4, !dbg !54      ; [#uses=1 type=i32] [debug line = 18:2]
  %26 = load i32* %index0, align 4, !dbg !54      ; [#uses=1 type=i32] [debug line = 18:2]
  %27 = icmp eq i32 %25, %26, !dbg !54            ; [#uses=1 type=i1] [debug line = 18:2]
  br i1 %27, label %28, label %34, !dbg !54       ; [debug line = 18:2]

; <label>:28                                      ; preds = %0
  store i32 -1, i32* %index0, align 4, !dbg !55   ; [debug line = 20:3]
  %29 = load float* %hist0, align 4, !dbg !57     ; [#uses=1 type=float] [debug line = 21:3]
  %30 = load float** %2, align 8, !dbg !57        ; [#uses=1 type=float*] [debug line = 21:3]
  %31 = getelementptr inbounds float* %30, i64 1, !dbg !57 ; [#uses=1 type=float*] [debug line = 21:3]
  %32 = load float* %31, align 4, !dbg !57        ; [#uses=1 type=float] [debug line = 21:3]
  %33 = fadd float %29, %32, !dbg !57             ; [#uses=1 type=float] [debug line = 21:3]
  store float %33, float* %hist1, align 4, !dbg !57 ; [debug line = 21:3]
  br label %44, !dbg !58                          ; [debug line = 22:2]

; <label>:34                                      ; preds = %0
  %35 = load i32* %index1, align 4, !dbg !59      ; [#uses=1 type=i32] [debug line = 23:3]
  %36 = sext i32 %35 to i64, !dbg !59             ; [#uses=1 type=i64] [debug line = 23:3]
  %37 = load float** %1, align 8, !dbg !59        ; [#uses=1 type=float*] [debug line = 23:3]
  %38 = getelementptr inbounds float* %37, i64 %36, !dbg !59 ; [#uses=1 type=float*] [debug line = 23:3]
  %39 = load float* %38, align 4, !dbg !59        ; [#uses=1 type=float] [debug line = 23:3]
  %40 = load float** %2, align 8, !dbg !59        ; [#uses=1 type=float*] [debug line = 23:3]
  %41 = getelementptr inbounds float* %40, i64 1, !dbg !59 ; [#uses=1 type=float*] [debug line = 23:3]
  %42 = load float* %41, align 4, !dbg !59        ; [#uses=1 type=float] [debug line = 23:3]
  %43 = fadd float %39, %42, !dbg !59             ; [#uses=1 type=float] [debug line = 23:3]
  store float %43, float* %hist1, align 4, !dbg !59 ; [debug line = 23:3]
  br label %44

; <label>:44                                      ; preds = %34, %28
  %45 = load i32* %index2, align 4, !dbg !61      ; [#uses=1 type=i32] [debug line = 26:2]
  %46 = load i32* %index1, align 4, !dbg !61      ; [#uses=1 type=i32] [debug line = 26:2]
  %47 = icmp eq i32 %45, %46, !dbg !61            ; [#uses=1 type=i1] [debug line = 26:2]
  br i1 %47, label %48, label %54, !dbg !61       ; [debug line = 26:2]

; <label>:48                                      ; preds = %44
  store i32 -1, i32* %index1, align 4, !dbg !62   ; [debug line = 27:3]
  %49 = load float* %hist1, align 4, !dbg !64     ; [#uses=1 type=float] [debug line = 28:3]
  %50 = load float** %2, align 8, !dbg !64        ; [#uses=1 type=float*] [debug line = 28:3]
  %51 = getelementptr inbounds float* %50, i64 2, !dbg !64 ; [#uses=1 type=float*] [debug line = 28:3]
  %52 = load float* %51, align 4, !dbg !64        ; [#uses=1 type=float] [debug line = 28:3]
  %53 = fadd float %49, %52, !dbg !64             ; [#uses=1 type=float] [debug line = 28:3]
  store float %53, float* %hist2, align 4, !dbg !64 ; [debug line = 28:3]
  br label %75, !dbg !65                          ; [debug line = 29:2]

; <label>:54                                      ; preds = %44
  %55 = load i32* %index2, align 4, !dbg !66      ; [#uses=1 type=i32] [debug line = 29:8]
  %56 = load i32* %index0, align 4, !dbg !66      ; [#uses=1 type=i32] [debug line = 29:8]
  %57 = icmp eq i32 %55, %56, !dbg !66            ; [#uses=1 type=i1] [debug line = 29:8]
  br i1 %57, label %58, label %64, !dbg !66       ; [debug line = 29:8]

; <label>:58                                      ; preds = %54
  store i32 -1, i32* %index0, align 4, !dbg !67   ; [debug line = 30:3]
  %59 = load float* %hist0, align 4, !dbg !69     ; [#uses=1 type=float] [debug line = 31:3]
  %60 = load float** %2, align 8, !dbg !69        ; [#uses=1 type=float*] [debug line = 31:3]
  %61 = getelementptr inbounds float* %60, i64 2, !dbg !69 ; [#uses=1 type=float*] [debug line = 31:3]
  %62 = load float* %61, align 4, !dbg !69        ; [#uses=1 type=float] [debug line = 31:3]
  %63 = fadd float %59, %62, !dbg !69             ; [#uses=1 type=float] [debug line = 31:3]
  store float %63, float* %hist2, align 4, !dbg !69 ; [debug line = 31:3]
  br label %74, !dbg !70                          ; [debug line = 32:2]

; <label>:64                                      ; preds = %54
  %65 = load i32* %index2, align 4, !dbg !71      ; [#uses=1 type=i32] [debug line = 33:3]
  %66 = sext i32 %65 to i64, !dbg !71             ; [#uses=1 type=i64] [debug line = 33:3]
  %67 = load float** %1, align 8, !dbg !71        ; [#uses=1 type=float*] [debug line = 33:3]
  %68 = getelementptr inbounds float* %67, i64 %66, !dbg !71 ; [#uses=1 type=float*] [debug line = 33:3]
  %69 = load float* %68, align 4, !dbg !71        ; [#uses=1 type=float] [debug line = 33:3]
  %70 = load float** %2, align 8, !dbg !71        ; [#uses=1 type=float*] [debug line = 33:3]
  %71 = getelementptr inbounds float* %70, i64 2, !dbg !71 ; [#uses=1 type=float*] [debug line = 33:3]
  %72 = load float* %71, align 4, !dbg !71        ; [#uses=1 type=float] [debug line = 33:3]
  %73 = fadd float %69, %72, !dbg !71             ; [#uses=1 type=float] [debug line = 33:3]
  store float %73, float* %hist2, align 4, !dbg !71 ; [debug line = 33:3]
  br label %74

; <label>:74                                      ; preds = %64, %58
  br label %75

; <label>:75                                      ; preds = %74, %48
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !73), !dbg !75 ; [debug line = 36:11] [debug variable = i]
  store i32 3, i32* %i, align 4, !dbg !76         ; [debug line = 36:14]
  br label %76, !dbg !76                          ; [debug line = 36:14]

; <label>:76                                      ; preds = %139, %75
  %77 = load i32* %i, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 36:14]
  %78 = icmp slt i32 %77, 1024, !dbg !76          ; [#uses=1 type=i1] [debug line = 36:14]
  br i1 %78, label %79, label %142, !dbg !76      ; [debug line = 36:14]

; <label>:79                                      ; preds = %76
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !77 ; [debug line = 36:30]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !79 ; [debug line = 38:1]
  %80 = load i32* %i, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 39:2]
  %81 = sext i32 %80 to i64, !dbg !80             ; [#uses=1 type=i64] [debug line = 39:2]
  %82 = load i32** %3, align 8, !dbg !80          ; [#uses=1 type=i32*] [debug line = 39:2]
  %83 = getelementptr inbounds i32* %82, i64 %81, !dbg !80 ; [#uses=1 type=i32*] [debug line = 39:2]
  %84 = load i32* %83, align 4, !dbg !80          ; [#uses=1 type=i32] [debug line = 39:2]
  store i32 %84, i32* %index3, align 4, !dbg !80  ; [debug line = 39:2]
  %85 = load i32* %i, align 4, !dbg !81           ; [#uses=1 type=i32] [debug line = 40:6]
  %86 = sext i32 %85 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 40:6]
  %87 = load float** %2, align 8, !dbg !81        ; [#uses=1 type=float*] [debug line = 40:6]
  %88 = getelementptr inbounds float* %87, i64 %86, !dbg !81 ; [#uses=1 type=float*] [debug line = 40:6]
  %89 = load float* %88, align 4, !dbg !81        ; [#uses=1 type=float] [debug line = 40:6]
  store float %89, float* %weight3, align 4, !dbg !81 ; [debug line = 40:6]
  %90 = load i32* %index3, align 4, !dbg !82      ; [#uses=1 type=i32] [debug line = 43:6]
  %91 = load i32* %index2, align 4, !dbg !82      ; [#uses=1 type=i32] [debug line = 43:6]
  %92 = icmp eq i32 %90, %91, !dbg !82            ; [#uses=1 type=i1] [debug line = 43:6]
  br i1 %92, label %93, label %97, !dbg !82       ; [debug line = 43:6]

; <label>:93                                      ; preds = %79
  store i32 -1, i32* %index2, align 4, !dbg !83   ; [debug line = 44:7]
  %94 = load float* %hist2, align 4, !dbg !85     ; [#uses=1 type=float] [debug line = 45:7]
  %95 = load float* %weight3, align 4, !dbg !85   ; [#uses=1 type=float] [debug line = 45:7]
  %96 = fadd float %94, %95, !dbg !85             ; [#uses=1 type=float] [debug line = 45:7]
  store float %96, float* %hist3, align 4, !dbg !85 ; [debug line = 45:7]
  br label %123, !dbg !86                         ; [debug line = 46:6]

; <label>:97                                      ; preds = %79
  %98 = load i32* %index3, align 4, !dbg !87      ; [#uses=1 type=i32] [debug line = 46:12]
  %99 = load i32* %index1, align 4, !dbg !87      ; [#uses=1 type=i32] [debug line = 46:12]
  %100 = icmp eq i32 %98, %99, !dbg !87           ; [#uses=1 type=i1] [debug line = 46:12]
  br i1 %100, label %101, label %105, !dbg !87    ; [debug line = 46:12]

; <label>:101                                     ; preds = %97
  store i32 -1, i32* %index1, align 4, !dbg !88   ; [debug line = 47:7]
  %102 = load float* %hist1, align 4, !dbg !90    ; [#uses=1 type=float] [debug line = 48:7]
  %103 = load float* %weight3, align 4, !dbg !90  ; [#uses=1 type=float] [debug line = 48:7]
  %104 = fadd float %102, %103, !dbg !90          ; [#uses=1 type=float] [debug line = 48:7]
  store float %104, float* %hist3, align 4, !dbg !90 ; [debug line = 48:7]
  br label %122, !dbg !91                         ; [debug line = 49:6]

; <label>:105                                     ; preds = %97
  %106 = load i32* %index3, align 4, !dbg !92     ; [#uses=1 type=i32] [debug line = 49:12]
  %107 = load i32* %index0, align 4, !dbg !92     ; [#uses=1 type=i32] [debug line = 49:12]
  %108 = icmp eq i32 %106, %107, !dbg !92         ; [#uses=1 type=i1] [debug line = 49:12]
  br i1 %108, label %109, label %113, !dbg !92    ; [debug line = 49:12]

; <label>:109                                     ; preds = %105
  store i32 -1, i32* %index0, align 4, !dbg !93   ; [debug line = 50:7]
  %110 = load float* %hist0, align 4, !dbg !95    ; [#uses=1 type=float] [debug line = 51:7]
  %111 = load float* %weight3, align 4, !dbg !95  ; [#uses=1 type=float] [debug line = 51:7]
  %112 = fadd float %110, %111, !dbg !95          ; [#uses=1 type=float] [debug line = 51:7]
  store float %112, float* %hist3, align 4, !dbg !95 ; [debug line = 51:7]
  br label %121, !dbg !96                         ; [debug line = 52:6]

; <label>:113                                     ; preds = %105
  %114 = load i32* %index3, align 4, !dbg !97     ; [#uses=1 type=i32] [debug line = 53:7]
  %115 = sext i32 %114 to i64, !dbg !97           ; [#uses=1 type=i64] [debug line = 53:7]
  %116 = load float** %1, align 8, !dbg !97       ; [#uses=1 type=float*] [debug line = 53:7]
  %117 = getelementptr inbounds float* %116, i64 %115, !dbg !97 ; [#uses=1 type=float*] [debug line = 53:7]
  %118 = load float* %117, align 4, !dbg !97      ; [#uses=1 type=float] [debug line = 53:7]
  %119 = load float* %weight3, align 4, !dbg !97  ; [#uses=1 type=float] [debug line = 53:7]
  %120 = fadd float %118, %119, !dbg !97          ; [#uses=1 type=float] [debug line = 53:7]
  store float %120, float* %hist3, align 4, !dbg !97 ; [debug line = 53:7]
  br label %121

; <label>:121                                     ; preds = %113, %109
  br label %122

; <label>:122                                     ; preds = %121, %101
  br label %123

; <label>:123                                     ; preds = %122, %93
  %124 = load i32* %index0, align 4, !dbg !99     ; [#uses=1 type=i32] [debug line = 57:6]
  %125 = icmp ne i32 %124, -1, !dbg !99           ; [#uses=1 type=i1] [debug line = 57:6]
  br i1 %125, label %126, label %132, !dbg !99    ; [debug line = 57:6]

; <label>:126                                     ; preds = %123
  %127 = load float* %hist0, align 4, !dbg !100   ; [#uses=1 type=float] [debug line = 58:7]
  %128 = load i32* %index0, align 4, !dbg !100    ; [#uses=1 type=i32] [debug line = 58:7]
  %129 = sext i32 %128 to i64, !dbg !100          ; [#uses=1 type=i64] [debug line = 58:7]
  %130 = load float** %1, align 8, !dbg !100      ; [#uses=1 type=float*] [debug line = 58:7]
  %131 = getelementptr inbounds float* %130, i64 %129, !dbg !100 ; [#uses=1 type=float*] [debug line = 58:7]
  store float %127, float* %131, align 4, !dbg !100 ; [debug line = 58:7]
  br label %132, !dbg !102                        ; [debug line = 59:6]

; <label>:132                                     ; preds = %126, %123
  %133 = load i32* %index1, align 4, !dbg !103    ; [#uses=1 type=i32] [debug line = 62:6]
  store i32 %133, i32* %index0, align 4, !dbg !103 ; [debug line = 62:6]
  %134 = load i32* %index2, align 4, !dbg !104    ; [#uses=1 type=i32] [debug line = 63:6]
  store i32 %134, i32* %index1, align 4, !dbg !104 ; [debug line = 63:6]
  %135 = load i32* %index3, align 4, !dbg !105    ; [#uses=1 type=i32] [debug line = 64:6]
  store i32 %135, i32* %index2, align 4, !dbg !105 ; [debug line = 64:6]
  %136 = load float* %hist1, align 4, !dbg !106   ; [#uses=1 type=float] [debug line = 66:6]
  store float %136, float* %hist0, align 4, !dbg !106 ; [debug line = 66:6]
  %137 = load float* %hist2, align 4, !dbg !107   ; [#uses=1 type=float] [debug line = 67:6]
  store float %137, float* %hist1, align 4, !dbg !107 ; [debug line = 67:6]
  %138 = load float* %hist3, align 4, !dbg !108   ; [#uses=1 type=float] [debug line = 68:6]
  store float %138, float* %hist2, align 4, !dbg !108 ; [debug line = 68:6]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !109 ; [debug line = 69:5]
  br label %139, !dbg !109                        ; [debug line = 69:5]

; <label>:139                                     ; preds = %132
  %140 = load i32* %i, align 4, !dbg !110         ; [#uses=1 type=i32] [debug line = 36:24]
  %141 = add nsw i32 %140, 1, !dbg !110           ; [#uses=1 type=i32] [debug line = 36:24]
  store i32 %141, i32* %i, align 4, !dbg !110     ; [debug line = 36:24]
  br label %76, !dbg !110                         ; [debug line = 36:24]

; <label>:142                                     ; preds = %76
  %143 = load i32* %index0, align 4, !dbg !111    ; [#uses=1 type=i32] [debug line = 72:2]
  %144 = icmp ne i32 %143, -1, !dbg !111          ; [#uses=1 type=i1] [debug line = 72:2]
  br i1 %144, label %145, label %151, !dbg !111   ; [debug line = 72:2]

; <label>:145                                     ; preds = %142
  %146 = load float* %hist0, align 4, !dbg !112   ; [#uses=1 type=float] [debug line = 73:3]
  %147 = load i32* %index0, align 4, !dbg !112    ; [#uses=1 type=i32] [debug line = 73:3]
  %148 = sext i32 %147 to i64, !dbg !112          ; [#uses=1 type=i64] [debug line = 73:3]
  %149 = load float** %1, align 8, !dbg !112      ; [#uses=1 type=float*] [debug line = 73:3]
  %150 = getelementptr inbounds float* %149, i64 %148, !dbg !112 ; [#uses=1 type=float*] [debug line = 73:3]
  store float %146, float* %150, align 4, !dbg !112 ; [debug line = 73:3]
  br label %151, !dbg !114                        ; [debug line = 74:2]

; <label>:151                                     ; preds = %145, %142
  %152 = load i32* %index1, align 4, !dbg !115    ; [#uses=1 type=i32] [debug line = 75:2]
  %153 = icmp ne i32 %152, -1, !dbg !115          ; [#uses=1 type=i1] [debug line = 75:2]
  br i1 %153, label %154, label %160, !dbg !115   ; [debug line = 75:2]

; <label>:154                                     ; preds = %151
  %155 = load float* %hist1, align 4, !dbg !116   ; [#uses=1 type=float] [debug line = 76:3]
  %156 = load i32* %index1, align 4, !dbg !116    ; [#uses=1 type=i32] [debug line = 76:3]
  %157 = sext i32 %156 to i64, !dbg !116          ; [#uses=1 type=i64] [debug line = 76:3]
  %158 = load float** %1, align 8, !dbg !116      ; [#uses=1 type=float*] [debug line = 76:3]
  %159 = getelementptr inbounds float* %158, i64 %157, !dbg !116 ; [#uses=1 type=float*] [debug line = 76:3]
  store float %155, float* %159, align 4, !dbg !116 ; [debug line = 76:3]
  br label %160, !dbg !118                        ; [debug line = 77:2]

; <label>:160                                     ; preds = %154, %151
  %161 = load i32* %index2, align 4, !dbg !119    ; [#uses=1 type=i32] [debug line = 78:2]
  %162 = icmp ne i32 %161, -1, !dbg !119          ; [#uses=1 type=i1] [debug line = 78:2]
  br i1 %162, label %163, label %169, !dbg !119   ; [debug line = 78:2]

; <label>:163                                     ; preds = %160
  %164 = load float* %hist2, align 4, !dbg !120   ; [#uses=1 type=float] [debug line = 79:3]
  %165 = load i32* %index2, align 4, !dbg !120    ; [#uses=1 type=i32] [debug line = 79:3]
  %166 = sext i32 %165 to i64, !dbg !120          ; [#uses=1 type=i64] [debug line = 79:3]
  %167 = load float** %1, align 8, !dbg !120      ; [#uses=1 type=float*] [debug line = 79:3]
  %168 = getelementptr inbounds float* %167, i64 %166, !dbg !120 ; [#uses=1 type=float*] [debug line = 79:3]
  store float %164, float* %168, align 4, !dbg !120 ; [debug line = 79:3]
  br label %169, !dbg !122                        ; [debug line = 80:2]

; <label>:169                                     ; preds = %163, %160
  ret void, !dbg !123                             ; [debug line = 81:1]
}

; [#uses=13]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!15}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/cs470/Downloads/hw3-kernels/kernel3/prj_kernel3/solution1/.autopilot/db/kernel3.pragma.2.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kernel3", metadata !"kernel3", metadata !"_Z7kernel3PfS_Pi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, i32*)* @_Z7kernel3PfS_Pi, null, null, metadata !13, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kernel3.cpp", metadata !"/home/cs470/Downloads/hw3-kernels/kernel3", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{void (float*, float*, i32*)* @_Z7kernel3PfS_Pi, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
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
!32 = metadata !{i32 786688, metadata !29, metadata !"index0", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 6, i32 6, metadata !29, null}
!34 = metadata !{i32 786688, metadata !29, metadata !"index1", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 6, i32 14, metadata !29, null}
!36 = metadata !{i32 786688, metadata !29, metadata !"index2", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!37 = metadata !{i32 6, i32 22, metadata !29, null}
!38 = metadata !{i32 786688, metadata !29, metadata !"index3", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 6, i32 30, metadata !29, null}
!40 = metadata !{i32 786688, metadata !29, metadata !"hist0", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 7, i32 8, metadata !29, null}
!42 = metadata !{i32 786688, metadata !29, metadata !"hist1", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 7, i32 15, metadata !29, null}
!44 = metadata !{i32 786688, metadata !29, metadata !"hist2", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 7, i32 22, metadata !29, null}
!46 = metadata !{i32 786688, metadata !29, metadata !"hist3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 7, i32 29, metadata !29, null}
!48 = metadata !{i32 786688, metadata !29, metadata !"weight3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 7, i32 36, metadata !29, null}
!50 = metadata !{i32 10, i32 2, metadata !29, null}
!51 = metadata !{i32 11, i32 2, metadata !29, null}
!52 = metadata !{i32 12, i32 2, metadata !29, null}
!53 = metadata !{i32 15, i32 2, metadata !29, null}
!54 = metadata !{i32 18, i32 2, metadata !29, null}
!55 = metadata !{i32 20, i32 3, metadata !56, null}
!56 = metadata !{i32 786443, metadata !29, i32 18, i32 22, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 21, i32 3, metadata !56, null}
!58 = metadata !{i32 22, i32 2, metadata !56, null}
!59 = metadata !{i32 23, i32 3, metadata !60, null}
!60 = metadata !{i32 786443, metadata !29, i32 22, i32 7, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 26, i32 2, metadata !29, null}
!62 = metadata !{i32 27, i32 3, metadata !63, null}
!63 = metadata !{i32 786443, metadata !29, i32 26, i32 22, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 28, i32 3, metadata !63, null}
!65 = metadata !{i32 29, i32 2, metadata !63, null}
!66 = metadata !{i32 29, i32 8, metadata !29, null}
!67 = metadata !{i32 30, i32 3, metadata !68, null}
!68 = metadata !{i32 786443, metadata !29, i32 29, i32 28, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 31, i32 3, metadata !68, null}
!70 = metadata !{i32 32, i32 2, metadata !68, null}
!71 = metadata !{i32 33, i32 3, metadata !72, null}
!72 = metadata !{i32 786443, metadata !29, i32 32, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !6, i32 36, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786443, metadata !29, i32 36, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 36, i32 11, metadata !74, null}
!76 = metadata !{i32 36, i32 14, metadata !74, null}
!77 = metadata !{i32 36, i32 30, metadata !78, null}
!78 = metadata !{i32 786443, metadata !74, i32 36, i32 29, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 38, i32 1, metadata !78, null}
!80 = metadata !{i32 39, i32 2, metadata !78, null}
!81 = metadata !{i32 40, i32 6, metadata !78, null}
!82 = metadata !{i32 43, i32 6, metadata !78, null}
!83 = metadata !{i32 44, i32 7, metadata !84, null}
!84 = metadata !{i32 786443, metadata !78, i32 43, i32 26, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 45, i32 7, metadata !84, null}
!86 = metadata !{i32 46, i32 6, metadata !84, null}
!87 = metadata !{i32 46, i32 12, metadata !78, null}
!88 = metadata !{i32 47, i32 7, metadata !89, null}
!89 = metadata !{i32 786443, metadata !78, i32 46, i32 32, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 48, i32 7, metadata !89, null}
!91 = metadata !{i32 49, i32 6, metadata !89, null}
!92 = metadata !{i32 49, i32 12, metadata !78, null}
!93 = metadata !{i32 50, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !78, i32 49, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 51, i32 7, metadata !94, null}
!96 = metadata !{i32 52, i32 6, metadata !94, null}
!97 = metadata !{i32 53, i32 7, metadata !98, null}
!98 = metadata !{i32 786443, metadata !78, i32 52, i32 11, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 57, i32 6, metadata !78, null}
!100 = metadata !{i32 58, i32 7, metadata !101, null}
!101 = metadata !{i32 786443, metadata !78, i32 57, i32 22, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 59, i32 6, metadata !101, null}
!103 = metadata !{i32 62, i32 6, metadata !78, null}
!104 = metadata !{i32 63, i32 6, metadata !78, null}
!105 = metadata !{i32 64, i32 6, metadata !78, null}
!106 = metadata !{i32 66, i32 6, metadata !78, null}
!107 = metadata !{i32 67, i32 6, metadata !78, null}
!108 = metadata !{i32 68, i32 6, metadata !78, null}
!109 = metadata !{i32 69, i32 5, metadata !78, null}
!110 = metadata !{i32 36, i32 24, metadata !74, null}
!111 = metadata !{i32 72, i32 2, metadata !29, null}
!112 = metadata !{i32 73, i32 3, metadata !113, null}
!113 = metadata !{i32 786443, metadata !29, i32 72, i32 18, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 74, i32 2, metadata !113, null}
!115 = metadata !{i32 75, i32 2, metadata !29, null}
!116 = metadata !{i32 76, i32 3, metadata !117, null}
!117 = metadata !{i32 786443, metadata !29, i32 75, i32 18, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 77, i32 2, metadata !117, null}
!119 = metadata !{i32 78, i32 2, metadata !29, null}
!120 = metadata !{i32 79, i32 3, metadata !121, null}
!121 = metadata !{i32 786443, metadata !29, i32 78, i32 18, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 80, i32 2, metadata !121, null}
!123 = metadata !{i32 81, i32 1, metadata !29, null}
