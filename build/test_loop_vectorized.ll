; ModuleID = 'test_loop_canonical.ll'
source_filename = "test_loop.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress noinline norecurse ssp uwtable(sync)
define noundef i32 @main() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  br label %loop_header

loop_header:                                      ; preds = %for.body
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %i.01)
  br label %for.inc

for.inc:                                          ; preds = %loop_header
  %inc = add nsw i32 %i.01, 1
  %cmp = icmp slt i32 %inc, 10
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !6

for.end:                                          ; preds = %for.inc
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { mustprogress noinline norecurse ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 21.1.4"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.vectorize.enable", i1 true}
