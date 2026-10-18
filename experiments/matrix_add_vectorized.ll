; ModuleID = 'matrix_add_canonical.ll'
source_filename = "matrix_add.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

@__const.main.A = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00], align 4
@__const.main.B = private unnamed_addr constant [4 x float] [float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00], align 4

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define void @_Z10matrix_addPfS_S_i(ptr noundef %A, ptr noundef %B, ptr noundef %C, i32 noundef %n) #0 {
entry:
  %B3 = ptrtoint ptr %B to i64
  %A2 = ptrtoint ptr %A to i64
  %C1 = ptrtoint ptr %C to i64
  %cmp1 = icmp slt i32 0, %n
  br i1 %cmp1, label %iter.check, label %for.end

iter.check:                                       ; preds = %entry
  %min.iters.check = icmp ult i32 %n, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %0 = sub i64 %C1, %A2
  %diff.check = icmp ult i64 %0, 64
  %1 = sub i64 %C1, %B3
  %diff.check4 = icmp ult i64 %1, 64
  %conflict.rdx = or i1 %diff.check, %diff.check4
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i32 %n, 16
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = urem i32 %n, 16
  %n.vec = sub i32 %n, %n.mod.vf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = sext i32 %index to i64
  %3 = getelementptr inbounds float, ptr %A, i64 %2
  %4 = getelementptr inbounds float, ptr %3, i32 0
  %5 = getelementptr inbounds float, ptr %3, i32 4
  %6 = getelementptr inbounds float, ptr %3, i32 8
  %7 = getelementptr inbounds float, ptr %3, i32 12
  %wide.load = load <4 x float>, ptr %4, align 4
  %wide.load6 = load <4 x float>, ptr %5, align 4
  %wide.load7 = load <4 x float>, ptr %6, align 4
  %wide.load8 = load <4 x float>, ptr %7, align 4
  %8 = sext i32 %index to i64
  %9 = getelementptr inbounds float, ptr %B, i64 %8
  %10 = getelementptr inbounds float, ptr %9, i32 0
  %11 = getelementptr inbounds float, ptr %9, i32 4
  %12 = getelementptr inbounds float, ptr %9, i32 8
  %13 = getelementptr inbounds float, ptr %9, i32 12
  %wide.load9 = load <4 x float>, ptr %10, align 4
  %wide.load10 = load <4 x float>, ptr %11, align 4
  %wide.load11 = load <4 x float>, ptr %12, align 4
  %wide.load12 = load <4 x float>, ptr %13, align 4
  %14 = fadd <4 x float> %wide.load, %wide.load9
  %15 = fadd <4 x float> %wide.load6, %wide.load10
  %16 = fadd <4 x float> %wide.load7, %wide.load11
  %17 = fadd <4 x float> %wide.load8, %wide.load12
  %18 = sext i32 %index to i64
  %19 = getelementptr inbounds float, ptr %C, i64 %18
  %20 = getelementptr inbounds float, ptr %19, i32 0
  %21 = getelementptr inbounds float, ptr %19, i32 4
  %22 = getelementptr inbounds float, ptr %19, i32 8
  %23 = getelementptr inbounds float, ptr %19, i32 12
  store <4 x float> %14, ptr %20, align 4
  store <4 x float> %15, ptr %21, align 4
  store <4 x float> %16, ptr %22, align 4
  store <4 x float> %17, ptr %23, align 4
  %index.next = add nuw i32 %index, 16
  %24 = icmp eq i32 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n, %n.vec
  br i1 %cmp.n, label %for.cond.for.end_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = sub i32 %n, %n.vec
  %min.epilog.iters.check = icmp ult i32 %n.vec.remaining, 4
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf13 = urem i32 %n, 4
  %n.vec14 = sub i32 %n, %n.mod.vf13
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ]
  %25 = sext i32 %index15 to i64
  %26 = getelementptr inbounds float, ptr %A, i64 %25
  %27 = getelementptr inbounds float, ptr %26, i32 0
  %wide.load16 = load <4 x float>, ptr %27, align 4
  %28 = sext i32 %index15 to i64
  %29 = getelementptr inbounds float, ptr %B, i64 %28
  %30 = getelementptr inbounds float, ptr %29, i32 0
  %wide.load17 = load <4 x float>, ptr %30, align 4
  %31 = fadd <4 x float> %wide.load16, %wide.load17
  %32 = sext i32 %index15 to i64
  %33 = getelementptr inbounds float, ptr %C, i64 %32
  %34 = getelementptr inbounds float, ptr %33, i32 0
  store <4 x float> %31, ptr %34, align 4
  %index.next18 = add nuw i32 %index15, 4
  %35 = icmp eq i32 %index.next18, %n.vec14
  br i1 %35, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i32 %n, %n.vec14
  br i1 %cmp.n19, label %for.cond.for.end_crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block, %vector.memcheck, %iter.check
  %bc.resume.val = phi i32 [ %n.vec14, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ], [ 0, %iter.check ]
  br label %for.body

for.body:                                         ; preds = %vec.epilog.scalar.ph, %for.inc
  %i.02 = phi i32 [ %bc.resume.val, %vec.epilog.scalar.ph ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.02 to i64
  %arrayidx = getelementptr inbounds float, ptr %A, i64 %idxprom
  %36 = load float, ptr %arrayidx, align 4
  %idxprom1 = sext i32 %i.02 to i64
  %arrayidx2 = getelementptr inbounds float, ptr %B, i64 %idxprom1
  %37 = load float, ptr %arrayidx2, align 4
  %add = fadd float %36, %37
  %idxprom3 = sext i32 %i.02 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %C, i64 %idxprom3
  store float %add, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.02, 1
  %cmp = icmp slt i32 %inc, %n
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !llvm.loop !11

for.cond.for.end_crit_edge:                       ; preds = %vec.epilog.middle.block, %middle.block, %for.inc
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  ret void
}

; Function Attrs: mustprogress noinline norecurse nounwind ssp uwtable(sync)
define noundef i32 @main() #1 {
entry:
  %A = alloca [4 x float], align 4
  %B = alloca [4 x float], align 4
  %C = alloca [4 x float], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 4 @__const.main.A, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 4 @__const.main.B, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [4 x float], ptr %A, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x float], ptr %B, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x float], ptr %C, i64 0, i64 0
  call void @_Z10matrix_addPfS_S_i(ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, i32 noundef 4)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress noinline nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #1 = { mustprogress noinline norecurse nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 21.1.4"}
!6 = distinct !{!6, !7, !8, !9}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !7, !8, !9}
!11 = distinct !{!11, !7, !8}
