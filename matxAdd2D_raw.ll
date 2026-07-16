; ModuleID = 'matxAdd2D.cpp'
source_filename = "matxAdd2D.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%"class.std::__1::basic_ostream" = type { ptr, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, %"struct.std::__1::_SentinelValueFill" }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"struct.std::__1::_SentinelValueFill" = type { i32 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::chrono::time_point" = type { %"class.std::__1::chrono::duration" }
%"class.std::__1::chrono::duration" = type { i64 }
%"class.std::__1::chrono::duration.0" = type { i64 }
%"struct.std::__1::chrono::__duration_cast" = type { i8 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.std::__1::ostreambuf_iterator" = type { ptr }
%"class.std::__1::basic_string" = type { %struct.anon }
%struct.anon = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", ptr, %"struct.std::__1::_SentinelValueFill", [4 x i8] }>
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], i8 }
%"class.std::__1::locale" = type { ptr }

@_ZZ4mainE1A = internal global [1000 x [1000 x float]] zeroinitializer, align 4
@_ZZ4mainE1B = internal global [1000 x [1000 x float]] zeroinitializer, align 4
@_ZZ4mainE1C = internal global [1000 x [1000 x float]] zeroinitializer, align 4
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [5 x i8] c" ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define void @_Z10matrix_addPA1000_fS0_S0_(ptr noundef %A, ptr noundef %B, ptr noundef %C) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %A.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1000 x float], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1000 x float], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load float, ptr %arrayidx5, align 4
  %6 = load ptr, ptr %B.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [1000 x float], ptr %6, i64 %idxprom6
  %8 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [1000 x float], ptr %arrayidx7, i64 0, i64 %idxprom8
  %9 = load float, ptr %arrayidx9, align 4
  %add = fadd float %5, %9
  %10 = load ptr, ptr %C.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [1000 x float], ptr %10, i64 %idxprom10
  %12 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [1000 x float], ptr %arrayidx11, i64 0, i64 %idxprom12
  store float %add, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end16:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress noinline norecurse ssp uwtable(sync)
define noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %start = alloca %"class.std::__1::chrono::time_point", align 8
  %t = alloca i32, align 4
  %end = alloca %"class.std::__1::chrono::time_point", align 8
  %ref.tmp = alloca %"class.std::__1::chrono::duration.0", align 8
  %ref.tmp24 = alloca %"class.std::__1::chrono::duration", align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %j, align 4
  %add = add nsw i32 %2, %3
  %conv = sitofp i32 %add to float
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x float]], ptr @_ZZ4mainE1A, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x float], ptr %arrayidx, i64 0, i64 %idxprom4
  store float %conv, ptr %arrayidx5, align 4
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %6, %7
  %conv6 = sitofp i32 %mul to float
  %8 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1000 x [1000 x float]], ptr @_ZZ4mainE1B, i64 0, i64 %idxprom7
  %9 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [1000 x float], ptr %arrayidx8, i64 0, i64 %idxprom9
  store float %conv6, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %11 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end13:                                        ; preds = %for.cond
  %call = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #7
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::chrono::time_point", ptr %start, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %coerce.dive, i32 0, i32 0
  store i64 %call, ptr %coerce.dive14, align 8
  store i32 0, ptr %t, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc18, %for.end13
  %12 = load i32, ptr %t, align 4
  %cmp16 = icmp slt i32 %12, 1000
  br i1 %cmp16, label %for.body17, label %for.end20

for.body17:                                       ; preds = %for.cond15
  call void @_Z10matrix_addPA1000_fS0_S0_(ptr noundef @_ZZ4mainE1A, ptr noundef @_ZZ4mainE1B, ptr noundef @_ZZ4mainE1C)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body17
  %13 = load i32, ptr %t, align 4
  %inc19 = add nsw i32 %13, 1
  store i32 %inc19, ptr %t, align 4
  br label %for.cond15, !llvm.loop !11

for.end20:                                        ; preds = %for.cond15
  %call21 = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #7
  %coerce.dive22 = getelementptr inbounds nuw %"class.std::__1::chrono::time_point", ptr %end, i32 0, i32 0
  %coerce.dive23 = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %coerce.dive22, i32 0, i32 0
  store i64 %call21, ptr %coerce.dive23, align 8
  %call25 = call i64 @_ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %end, ptr noundef nonnull align 8 dereferenceable(8) %start)
  %coerce.dive26 = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %ref.tmp24, i32 0, i32 0
  store i64 %call25, ptr %coerce.dive26, align 8
  %call27 = call i64 @_ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp24)
  %coerce.dive28 = getelementptr inbounds nuw %"class.std::__1::chrono::duration.0", ptr %ref.tmp, i32 0, i32 0
  store i64 %call27, ptr %coerce.dive28, align 8
  %call29 = call noundef i64 @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i64 noundef %call29)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef @.str)
  %14 = load float, ptr getelementptr inbounds ([1000 x float], ptr getelementptr inbounds ([1000 x [1000 x float]], ptr @_ZZ4mainE1C, i64 0, i64 500), i64 0, i64 500), align 4
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, float noundef %14)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call32, ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @_ZNSt3__16chrono12steady_clock3nowEv() #2

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  %0 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %1 = load ptr, ptr %__str.addr, align 8
  %2 = load ptr, ptr %__str.addr, align 8
  %call = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc(ptr noundef %2) #7
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %call)
  ret ptr %call1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #4

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %__fd) #3 {
entry:
  %retval = alloca %"class.std::__1::chrono::duration.0", align 8
  %__fd.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::chrono::__duration_cast", align 1
  store ptr %__fd, ptr %__fd.addr, align 8
  %0 = load ptr, ptr %__fd.addr, align 8, !nonnull !12, !align !13
  %call = call i64 @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::chrono::duration.0", ptr %retval, i32 0, i32 0
  store i64 %call, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::chrono::duration.0", ptr %retval, i32 0, i32 0
  %1 = load i64, ptr %coerce.dive1, align 8
  ret i64 %1
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #3 {
entry:
  %retval = alloca %"class.std::__1::chrono::duration", align 8
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::chrono::duration", align 8
  %ref.tmp1 = alloca %"class.std::__1::chrono::duration", align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8, !nonnull !12, !align !13
  %call = call i64 @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %ref.tmp, i32 0, i32 0
  store i64 %call, ptr %coerce.dive, align 8
  %1 = load ptr, ptr %__rhs.addr, align 8, !nonnull !12, !align !13
  %call2 = call i64 @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %coerce.dive3 = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %ref.tmp1, i32 0, i32 0
  store i64 %call2, ptr %coerce.dive3, align 8
  %call4 = call i64 @_ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %retval, i32 0, i32 0
  store i64 %call4, ptr %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %retval, i32 0, i32 0
  %2 = load i64, ptr %coerce.dive6, align 8
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__rep_ = getelementptr inbounds nuw %"class.std::__1::chrono::duration.0", ptr %this1, i32 0, i32 0
  %0 = load i64, ptr %__rep_, align 8
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf(ptr noundef nonnull align 8 dereferenceable(8), float noundef) #4

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__fd) #3 {
entry:
  %retval = alloca %"class.std::__1::chrono::duration.0", align 8
  %this.addr = alloca ptr, align 8
  %__fd.addr = alloca ptr, align 8
  %ref.tmp = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__fd, ptr %__fd.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__fd.addr, align 8, !nonnull !12, !align !13
  %call = call noundef i64 @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %div = sdiv i64 %call, 1000000
  store i64 %div, ptr %ref.tmp, align 8
  %call2 = call noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::chrono::duration.0", ptr %retval, i32 0, i32 0
  %1 = load i64, ptr %coerce.dive, align 8
  ret i64 %1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__rep_ = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %this1, i32 0, i32 0
  %0 = load i64, ptr %__rep_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__r) unnamed_addr #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  %call = call noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__r) unnamed_addr #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__rep_ = getelementptr inbounds nuw %"class.std::__1::chrono::duration.0", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__r.addr, align 8, !nonnull !12, !align !13
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %__rep_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #3 {
entry:
  %retval = alloca %"class.std::__1::chrono::duration", align 8
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp1 = alloca %"class.std::__1::chrono::duration", align 8
  %ref.tmp2 = alloca %"class.std::__1::chrono::duration", align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8, !nonnull !12, !align !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ref.tmp1, ptr align 8 %0, i64 8, i1 false)
  %call = call noundef i64 @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %__rhs.addr, align 8, !nonnull !12, !align !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ref.tmp2, ptr align 8 %1, i64 8, i1 false)
  %call3 = call noundef i64 @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2)
  %sub = sub nsw i64 %call, %call3
  store i64 %sub, ptr %ref.tmp, align 8
  %call4 = call noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %retval, i32 0, i32 0
  %2 = load i64, ptr %coerce.dive, align 8
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #0 {
entry:
  %retval = alloca %"class.std::__1::chrono::duration", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__d_ = getelementptr inbounds nuw %"class.std::__1::chrono::time_point", ptr %this1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__d_, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %retval, i32 0, i32 0
  %0 = load i64, ptr %coerce.dive, align 8
  ret i64 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__r) unnamed_addr #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  %call = call noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__r) unnamed_addr #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__rep_ = getelementptr inbounds nuw %"class.std::__1::chrono::duration", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__r.addr, align 8, !nonnull !12, !align !13
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %__rep_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str, i64 noundef %__len) #3 personality ptr @__gxx_personality_v0 {
entry:
  %__os.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store ptr %__os, ptr %__os.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  store i64 %__len, ptr %__len.addr, align 8
  %0 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %call = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %__s, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = invoke noundef zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call3, label %if.then, label %if.end29

if.then:                                          ; preds = %invoke.cont2
  %1 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %call4 = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %2 = load ptr, ptr %__str.addr, align 8
  %3 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %vtable = load ptr, ptr %3, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %vbase.offset
  %call6 = invoke noundef i32 @_ZNKSt3__18ios_base5flagsB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %if.then
  %and = and i32 %call6, 176
  %cmp = icmp eq i32 %and, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont5
  %4 = load ptr, ptr %__str.addr, align 8
  %5 = load i64, ptr %__len.addr, align 8
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont5
  %6 = load ptr, ptr %__str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr7, %cond.true ], [ %6, %cond.false ]
  %7 = load ptr, ptr %__str.addr, align 8
  %8 = load i64, ptr %__len.addr, align 8
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %7, i64 %8
  %9 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %vtable9 = load ptr, ptr %9, align 8
  %vbase.offset.ptr10 = getelementptr i8, ptr %vtable9, i64 -24
  %vbase.offset11 = load i64, ptr %vbase.offset.ptr10, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %9, i64 %vbase.offset11
  %10 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %vtable13 = load ptr, ptr %10, align 8
  %vbase.offset.ptr14 = getelementptr i8, ptr %vtable13, i64 -24
  %vbase.offset15 = load i64, ptr %vbase.offset.ptr14, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %10, i64 %vbase.offset15
  %call18 = invoke noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr16)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %cond.end
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %agg.tmp, i32 0, i32 0
  %11 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %11 to i64
  %call20 = invoke i64 @_ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %coerce.val.pi, ptr noundef %2, ptr noundef %cond, ptr noundef %add.ptr8, ptr noundef nonnull align 8 dereferenceable(136) %add.ptr12, i8 noundef signext %call18)
          to label %invoke.cont19 unwind label %lpad1

invoke.cont19:                                    ; preds = %invoke.cont17
  %coerce.dive21 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %ref.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call20 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive21, align 8
  %call22 = call noundef zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #7
  br i1 %call22, label %if.then23, label %if.end

if.then23:                                        ; preds = %invoke.cont19
  %12 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %vtable24 = load ptr, ptr %12, align 8
  %vbase.offset.ptr25 = getelementptr i8, ptr %vtable24, i64 -24
  %vbase.offset26 = load i64, ptr %vbase.offset.ptr25, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %12, i64 %vbase.offset26
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr27, i32 noundef 5)
          to label %invoke.cont28 unwind label %lpad1

invoke.cont28:                                    ; preds = %if.then23
  br label %if.end

lpad:                                             ; preds = %entry
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %exn.slot, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %ehselector.slot, align 4
  br label %catch

lpad1:                                            ; preds = %if.then23, %invoke.cont17, %cond.end, %if.then, %invoke.cont
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  store ptr %17, ptr %exn.slot, align 8
  %18 = extractvalue { ptr, i32 } %16, 1
  store i32 %18, ptr %ehselector.slot, align 4
  %call31 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #7
  br label %catch

catch:                                            ; preds = %lpad1, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %19 = call ptr @__cxa_begin_catch(ptr %exn) #7
  %20 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  %vtable32 = load ptr, ptr %20, align 8
  %vbase.offset.ptr33 = getelementptr i8, ptr %vtable32, i64 -24
  %vbase.offset34 = load i64, ptr %vbase.offset.ptr33, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %20, i64 %vbase.offset34
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr35)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont37, %if.end29
  %21 = load ptr, ptr %__os.addr, align 8, !nonnull !12, !align !13
  ret ptr %21

if.end:                                           ; preds = %invoke.cont28, %invoke.cont19
  br label %if.end29

if.end29:                                         ; preds = %if.end, %invoke.cont2
  %call30 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #7
  br label %try.cont

lpad36:                                           ; preds = %catch
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont38 unwind label %terminate.lpad

invoke.cont38:                                    ; preds = %lpad36
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont38
  %exn39 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn39, 0
  %lpad.val40 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val40

terminate.lpad:                                   ; preds = %lpad36
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc(ptr noundef %__s) #0 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef i64 @_ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_(ptr noundef %0) #7
  ret i64 %call
}

declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ok_ = getelementptr inbounds nuw %"class.std::__1::basic_ostream<char>::sentry", ptr %this1, i32 0, i32 0
  %0 = load i8, ptr %__ok_, align 8
  %loadedv = trunc i8 %0 to i1
  ret i1 %loadedv
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, ptr noundef %__ob, ptr noundef %__op, ptr noundef %__oe, ptr noundef nonnull align 8 dereferenceable(136) %__iob, i8 noundef signext %__fl) #3 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr = alloca ptr, align 8
  %__op.addr = alloca ptr, align 8
  %__oe.addr = alloca ptr, align 8
  %__iob.addr = alloca ptr, align 8
  %__fl.addr = alloca i8, align 1
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__s.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %__ob, ptr %__ob.addr, align 8
  store ptr %__op, ptr %__op.addr, align 8
  store ptr %__oe, ptr %__oe.addr, align 8
  store ptr %__iob, ptr %__iob.addr, align 8
  store i8 %__fl, ptr %__fl.addr, align 1
  %__sbuf_ = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  %0 = load ptr, ptr %__sbuf_, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__s, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__oe.addr, align 8
  %2 = load ptr, ptr %__ob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %__sz, align 8
  %3 = load ptr, ptr %__iob.addr, align 8, !nonnull !12, !align !13
  %call = call noundef i64 @_ZNKSt3__18ios_base5widthB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(136) %3)
  store i64 %call, ptr %__ns, align 8
  %4 = load i64, ptr %__ns, align 8
  %5 = load i64, ptr %__sz, align 8
  %cmp1 = icmp sgt i64 %4, %5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load i64, ptr %__sz, align 8
  %7 = load i64, ptr %__ns, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %__ns, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i64 0, ptr %__ns, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %__op.addr, align 8
  %9 = load ptr, ptr %__ob.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast5 = ptrtoint ptr %9 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, ptr %__np, align 8
  %10 = load i64, ptr %__np, align 8
  %cmp7 = icmp sgt i64 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  %11 = load ptr, ptr %__sbuf_9, align 8
  %12 = load ptr, ptr %__ob.addr, align 8
  %13 = load i64, ptr %__np, align 8
  %call10 = call noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef %12, i64 noundef %13)
  %14 = load i64, ptr %__np, align 8
  %cmp11 = icmp ne i64 %call10, %14
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  store ptr null, ptr %__sbuf_13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__s, i64 8, i1 false)
  br label %return

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %15 = load i64, ptr %__ns, align 8
  %cmp16 = icmp sgt i64 %15, 0
  br i1 %cmp16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end15
  %16 = load i64, ptr %__ns, align 8
  %17 = load i8, ptr %__fl.addr, align 1
  %call18 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc(ptr noundef nonnull align 8 dereferenceable(24) %__sp, i64 noundef %16, i8 noundef signext %17)
  %__sbuf_19 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  %18 = load ptr, ptr %__sbuf_19, align 8
  %call20 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #7
  %19 = load i64, ptr %__ns, align 8
  %call21 = invoke noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef %call20, i64 noundef %19)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %20 = load i64, ptr %__ns, align 8
  %cmp22 = icmp ne i64 %call21, %20
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %invoke.cont
  %__sbuf_24 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  store ptr null, ptr %__sbuf_24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__s, i64 8, i1 false)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.then17
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  store ptr %22, ptr %exn.slot, align 8
  %23 = extractvalue { ptr, i32 } %21, 1
  store i32 %23, ptr %ehselector.slot, align 4
  %call27 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #7
  br label %eh.resume

if.end25:                                         ; preds = %invoke.cont
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23
  %call26 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28

if.end28:                                         ; preds = %cleanup.cont, %if.end15
  %24 = load ptr, ptr %__oe.addr, align 8
  %25 = load ptr, ptr %__op.addr, align 8
  %sub.ptr.lhs.cast29 = ptrtoint ptr %24 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %25 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  store i64 %sub.ptr.sub31, ptr %__np, align 8
  %26 = load i64, ptr %__np, align 8
  %cmp32 = icmp sgt i64 %26, 0
  br i1 %cmp32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end28
  %__sbuf_34 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  %27 = load ptr, ptr %__sbuf_34, align 8
  %28 = load ptr, ptr %__op.addr, align 8
  %29 = load i64, ptr %__np, align 8
  %call35 = call noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef %28, i64 noundef %29)
  %30 = load i64, ptr %__np, align 8
  %cmp36 = icmp ne i64 %call35, %30
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then33
  %__sbuf_38 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %__s, i32 0, i32 0
  store ptr null, ptr %__sbuf_38, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__s, i64 8, i1 false)
  br label %return

if.end39:                                         ; preds = %if.then33
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end28
  %31 = load ptr, ptr %__iob.addr, align 8, !nonnull !12, !align !13
  %call41 = call noundef i64 @_ZNSt3__18ios_base5widthB8ne210104El(ptr noundef nonnull align 8 dereferenceable(136) %31, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__s, i64 8, i1 false)
  br label %return

return:                                           ; preds = %if.end40, %if.then37, %cleanup, %if.then12, %if.then
  %coerce.dive42 = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %retval, i32 0, i32 0
  %32 = load ptr, ptr %coerce.dive42, align 8
  %coerce.val.pi = ptrtoint ptr %32 to i64
  ret i64 %coerce.val.pi

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val43 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val43

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i32 @_ZNKSt3__18ios_base5flagsB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__fmtflags_ = getelementptr inbounds nuw %"class.std::__1::ios_base", ptr %this1, i32 0, i32 1
  %0 = load i32, ptr %__fmtflags_, align 8
  ret i32 %0
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #3 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__fill_ = getelementptr inbounds nuw %"class.std::__1::basic_ios", ptr %this1, i32 0, i32 2
  %call = call noundef zeroext i1 @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev(ptr noundef nonnull align 1 dereferenceable(4) %__fill_)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec(ptr noundef nonnull align 8 dereferenceable(148) %this1, i8 noundef signext 32)
  %conv = sext i8 %call2 to i32
  %__fill_3 = getelementptr inbounds nuw %"class.std::__1::basic_ios", ptr %this1, i32 0, i32 2
  %call4 = call noundef nonnull align 1 dereferenceable(4) ptr @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei(ptr noundef nonnull align 1 dereferenceable(4) %__fill_3, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__fill_5 = getelementptr inbounds nuw %"class.std::__1::basic_ios", ptr %this1, i32 0, i32 2
  %call6 = call noundef i32 @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev(ptr noundef nonnull align 1 dereferenceable(4) %__fill_5)
  %conv7 = trunc i32 %call6 to i8
  ret i8 %conv7
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__sbuf_ = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__sbuf_, align 8
  %cmp = icmp eq ptr %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__state, ptr %__state.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__state.addr, align 4
  call void @_ZNSt3__18ios_base8setstateB8ne210104Ej(ptr noundef nonnull align 8 dereferenceable(136) %this1, i32 noundef %0)
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #2

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) #4

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind ssp uwtable(sync)
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #6 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #7
  call void @_ZSt9terminatev() #8
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__18ios_base5widthB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__width_ = getelementptr inbounds nuw %"class.std::__1::ios_base", ptr %this1, i32 0, i32 3
  %0 = load i64, ptr %__width_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n) #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 12
  %2 = load ptr, ptr %vfn, align 8
  %call = call noundef i64 %2(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %0, i64 noundef %1)
  ret i64 %call
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i8 %__c, ptr %__c.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %1 = load i8, ptr %__c.addr, align 1
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0, i8 noundef signext %1)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #7
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB8ne210104IcEEPT_S2_(ptr noundef %call) #7
  ret ptr %call2
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__18ios_base5widthB8ne210104El(ptr noundef nonnull align 8 dereferenceable(136) %this, i64 noundef %__wide) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__wide.addr = alloca i64, align 8
  %__r = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__wide, ptr %__wide.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__width_ = getelementptr inbounds nuw %"class.std::__1::ios_base", ptr %this1, i32 0, i32 3
  %0 = load i64, ptr %__width_, align 8
  store i64 %0, ptr %__r, align 8
  %1 = load i64, ptr %__wide.addr, align 8
  %__width_2 = getelementptr inbounds nuw %"class.std::__1::ios_base", ptr %this1, i32 0, i32 3
  store i64 %1, ptr %__width_2, align 8
  %2 = load i64, ptr %__r, align 8
  ret i64 %2
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i8 %__c, ptr %__c.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %__rep_ = getelementptr inbounds nuw %struct.anon, ptr %0, i32 0, i32 0
  %1 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %2 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__19allocatorIcEC1B8ne210104Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  %3 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %4 = load i64, ptr %__n.addr, align 8
  %5 = load i8, ptr %__c.addr, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %4, i8 noundef signext %5)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcEC1B8ne210104Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIcEC2B8ne210104Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #7
  ret ptr %this1
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i8 noundef signext) #4

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcEC2B8ne210104Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #7
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB8ne210104IcEEPT_S2_(ptr noundef %__p) #0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #7
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %__rep_ = getelementptr inbounds nuw %struct.anon, ptr %0, i32 0, i32 0
  %__is_long_ = getelementptr inbounds nuw %"struct.std::__1::basic_string<char>::__short", ptr %__rep_, i32 0, i32 1
  %bf.load = load i8, ptr %__is_long_, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %tobool = icmp ne i8 %bf.lshr, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %__rep_ = getelementptr inbounds nuw %struct.anon, ptr %0, i32 0, i32 0
  %__data_ = getelementptr inbounds nuw %"struct.std::__1::basic_string<char>::__long", ptr %__rep_, i32 0, i32 0
  %1 = load ptr, ptr %__data_, align 8
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %__rep_ = getelementptr inbounds nuw %struct.anon, ptr %0, i32 0, i32 0
  %__data_ = getelementptr inbounds nuw %"struct.std::__1::basic_string<char>::__short", ptr %__rep_, i32 0, i32 0
  %arrayidx = getelementptr inbounds [23 x i8], ptr %__data_, i64 0, i64 0
  %call = call noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc(ptr noundef nonnull align 1 dereferenceable(1) %arrayidx) #7
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc(ptr noundef nonnull align 1 dereferenceable(1) %__r) #0 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8, !nonnull !12
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__sbuf_ = getelementptr inbounds nuw %"class.std::__1::ostreambuf_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__s.addr, align 8, !nonnull !12, !align !13
  %vtable = load ptr, ptr %0, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = invoke noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store ptr %call, ptr %__sbuf_, align 8
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #8
  unreachable
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #3 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__18ios_base5rdbufB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(136) %this1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__18ios_base5rdbufB8ne210104Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__rdbuf_ = getelementptr inbounds nuw %"class.std::__1::ios_base", ptr %this1, i32 0, i32 6
  %0 = load ptr, ptr %__rdbuf_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev(ptr noundef nonnull align 1 dereferenceable(4) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__fill_val_ = getelementptr inbounds nuw %"struct.std::__1::_SentinelValueFill", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %__fill_val_, align 1
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofB8ne210104Ev() #7
  %cmp = icmp ne i32 %0, %call
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec(ptr noundef nonnull align 8 dereferenceable(148) %this, i8 noundef signext %__c) #3 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i8 %__c, ptr %__c.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8 %ref.tmp, ptr noundef nonnull align 8 dereferenceable(136) %this1)
  %call = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i8, ptr %__c.addr, align 1
  %call3 = invoke noundef signext i8 @_ZNKSt3__15ctypeIcE5widenB8ne210104Ec(ptr noundef nonnull align 8 dereferenceable(25) %call, i8 noundef signext %0)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #7
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call5 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val6 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val6
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(4) ptr @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei(ptr noundef nonnull align 1 dereferenceable(4) %this, i32 noundef %__x) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__x, ptr %__x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__x.addr, align 4
  %__fill_val_ = getelementptr inbounds nuw %"struct.std::__1::_SentinelValueFill", ptr %this1, i32 0, i32 0
  store i32 %0, ptr %__fill_val_, align 1
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i32 @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev(ptr noundef nonnull align 1 dereferenceable(4) %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__fill_val_ = getelementptr inbounds nuw %"struct.std::__1::_SentinelValueFill", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %__fill_val_, align 1
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i32 @_ZNSt3__111char_traitsIcE3eofB8ne210104Ev() #0 {
entry:
  ret i32 -1
}

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %__l) #3 {
entry:
  %__l.addr = alloca ptr, align 8
  store ptr %__l, ptr %__l.addr, align 8
  %0 = load ptr, ptr %__l.addr, align 8, !nonnull !12, !align !13
  %call = call noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  ret ptr %call
}

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) #4

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__15ctypeIcE5widenB8ne210104Ec(ptr noundef nonnull align 8 dereferenceable(25) %this, i8 noundef signext %__c) #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %__c, ptr %__c.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %__c.addr, align 1
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 7
  %1 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %1(ptr noundef nonnull align 8 dereferenceable(25) %this1, i8 noundef signext %0)
  ret i8 %call
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #2

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) #4

; Function Attrs: mustprogress noinline ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB8ne210104Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state) #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__state, ptr %__state.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__rdstate_ = getelementptr inbounds nuw %"class.std::__1::ios_base", ptr %this1, i32 0, i32 4
  %0 = load i32, ptr %__rdstate_, align 8
  %1 = load i32, ptr %__state.addr, align 4
  %or = or i32 %0, %1
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %this1, i32 noundef %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) #4

; Function Attrs: mustprogress noinline nounwind ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_(ptr noundef %__str) #0 {
entry:
  %__str.addr = alloca ptr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  %0 = load ptr, ptr %__str.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #7
  ret i64 %call
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

attributes #0 = { mustprogress noinline nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #1 = { mustprogress noinline norecurse ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #3 = { mustprogress noinline ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 21.1.4"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = !{}
!13 = !{i64 8}
