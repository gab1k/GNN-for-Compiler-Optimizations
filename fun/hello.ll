; ModuleID = 'bzlib.c'
source_filename = "bzlib.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.4, 20-Dec-2006\00", align 1
@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@bzerrorstrings = internal global [16 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 8
@BZ2_crc32Table = external global [256 x i32], align 4
@BZ2_rNums = external global [512 x i32], align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @BZ2_bz__AssertH__fail(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load i32, ptr %2, align 4
  %5 = call ptr @BZ2_bzlibVersion()
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, i32 noundef %4, ptr noundef %5) #7
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 1007
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.1) #7
  br label %12

12:                                               ; preds = %9, %1
  call void @exit(i32 noundef 3) #8
  unreachable
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @BZ2_bzlibVersion() #0 {
  ret ptr @.str.5
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzCompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %12 = call i32 @bz_config_ok()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 -9, ptr %5, align 4
  br label %234

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = icmp sgt i32 %22, 9
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %9, align 4
  %29 = icmp sgt i32 %28, 250
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21, %18, %15
  store i32 -2, ptr %5, align 4
  br label %234

31:                                               ; preds = %27
  %32 = load i32, ptr %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 30, ptr %9, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.bz_stream, ptr %36, i32 0, i32 9
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.bz_stream, ptr %41, i32 0, i32 9
  store ptr @default_bzalloc, ptr %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds %struct.bz_stream, ptr %44, i32 0, i32 10
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.bz_stream, ptr %49, i32 0, i32 10
  store ptr @default_bzfree, ptr %50, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.bz_stream, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.bz_stream, ptr %55, i32 0, i32 11
  %57 = load ptr, ptr %56, align 8
  %58 = call ptr %54(ptr noundef %57, i32 noundef 55768, i32 noundef 1)
  store ptr %58, ptr %11, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 -3, ptr %5, align 4
  br label %234

62:                                               ; preds = %51
  %63 = load ptr, ptr %6, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds %struct.EState, ptr %64, i32 0, i32 0
  store ptr %63, ptr %65, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds %struct.EState, ptr %66, i32 0, i32 4
  store ptr null, ptr %67, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds %struct.EState, ptr %68, i32 0, i32 5
  store ptr null, ptr %69, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds %struct.EState, ptr %70, i32 0, i32 6
  store ptr null, ptr %71, align 8
  %72 = load i32, ptr %7, align 4
  %73 = mul nsw i32 100000, %72
  store i32 %73, ptr %10, align 4
  %74 = load ptr, ptr %6, align 8
  %75 = getelementptr inbounds %struct.bz_stream, ptr %74, i32 0, i32 9
  %76 = load ptr, ptr %75, align 8
  %77 = load ptr, ptr %6, align 8
  %78 = getelementptr inbounds %struct.bz_stream, ptr %77, i32 0, i32 11
  %79 = load ptr, ptr %78, align 8
  %80 = load i32, ptr %10, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call ptr %76(ptr noundef %79, i32 noundef %83, i32 noundef 1)
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds %struct.EState, ptr %85, i32 0, i32 4
  store ptr %84, ptr %86, align 8
  %87 = load ptr, ptr %6, align 8
  %88 = getelementptr inbounds %struct.bz_stream, ptr %87, i32 0, i32 9
  %89 = load ptr, ptr %88, align 8
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr inbounds %struct.bz_stream, ptr %90, i32 0, i32 11
  %92 = load ptr, ptr %91, align 8
  %93 = load i32, ptr %10, align 4
  %94 = add nsw i32 %93, 34
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call ptr %89(ptr noundef %92, i32 noundef %97, i32 noundef 1)
  %99 = load ptr, ptr %11, align 8
  %100 = getelementptr inbounds %struct.EState, ptr %99, i32 0, i32 5
  store ptr %98, ptr %100, align 8
  %101 = load ptr, ptr %6, align 8
  %102 = getelementptr inbounds %struct.bz_stream, ptr %101, i32 0, i32 9
  %103 = load ptr, ptr %102, align 8
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr inbounds %struct.bz_stream, ptr %104, i32 0, i32 11
  %106 = load ptr, ptr %105, align 8
  %107 = call ptr %103(ptr noundef %106, i32 noundef 262148, i32 noundef 1)
  %108 = load ptr, ptr %11, align 8
  %109 = getelementptr inbounds %struct.EState, ptr %108, i32 0, i32 6
  store ptr %107, ptr %109, align 8
  %110 = load ptr, ptr %11, align 8
  %111 = getelementptr inbounds %struct.EState, ptr %110, i32 0, i32 4
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %62
  %115 = load ptr, ptr %11, align 8
  %116 = getelementptr inbounds %struct.EState, ptr %115, i32 0, i32 5
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr %11, align 8
  %121 = getelementptr inbounds %struct.EState, ptr %120, i32 0, i32 6
  %122 = load ptr, ptr %121, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %181

124:                                              ; preds = %119, %114, %62
  %125 = load ptr, ptr %11, align 8
  %126 = getelementptr inbounds %struct.EState, ptr %125, i32 0, i32 4
  %127 = load ptr, ptr %126, align 8
  %128 = icmp ne ptr %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load ptr, ptr %6, align 8
  %131 = getelementptr inbounds %struct.bz_stream, ptr %130, i32 0, i32 10
  %132 = load ptr, ptr %131, align 8
  %133 = load ptr, ptr %6, align 8
  %134 = getelementptr inbounds %struct.bz_stream, ptr %133, i32 0, i32 11
  %135 = load ptr, ptr %134, align 8
  %136 = load ptr, ptr %11, align 8
  %137 = getelementptr inbounds %struct.EState, ptr %136, i32 0, i32 4
  %138 = load ptr, ptr %137, align 8
  call void %132(ptr noundef %135, ptr noundef %138)
  br label %139

139:                                              ; preds = %129, %124
  %140 = load ptr, ptr %11, align 8
  %141 = getelementptr inbounds %struct.EState, ptr %140, i32 0, i32 5
  %142 = load ptr, ptr %141, align 8
  %143 = icmp ne ptr %142, null
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load ptr, ptr %6, align 8
  %146 = getelementptr inbounds %struct.bz_stream, ptr %145, i32 0, i32 10
  %147 = load ptr, ptr %146, align 8
  %148 = load ptr, ptr %6, align 8
  %149 = getelementptr inbounds %struct.bz_stream, ptr %148, i32 0, i32 11
  %150 = load ptr, ptr %149, align 8
  %151 = load ptr, ptr %11, align 8
  %152 = getelementptr inbounds %struct.EState, ptr %151, i32 0, i32 5
  %153 = load ptr, ptr %152, align 8
  call void %147(ptr noundef %150, ptr noundef %153)
  br label %154

154:                                              ; preds = %144, %139
  %155 = load ptr, ptr %11, align 8
  %156 = getelementptr inbounds %struct.EState, ptr %155, i32 0, i32 6
  %157 = load ptr, ptr %156, align 8
  %158 = icmp ne ptr %157, null
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load ptr, ptr %6, align 8
  %161 = getelementptr inbounds %struct.bz_stream, ptr %160, i32 0, i32 10
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %6, align 8
  %164 = getelementptr inbounds %struct.bz_stream, ptr %163, i32 0, i32 11
  %165 = load ptr, ptr %164, align 8
  %166 = load ptr, ptr %11, align 8
  %167 = getelementptr inbounds %struct.EState, ptr %166, i32 0, i32 6
  %168 = load ptr, ptr %167, align 8
  call void %162(ptr noundef %165, ptr noundef %168)
  br label %169

169:                                              ; preds = %159, %154
  %170 = load ptr, ptr %11, align 8
  %171 = icmp ne ptr %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load ptr, ptr %6, align 8
  %174 = getelementptr inbounds %struct.bz_stream, ptr %173, i32 0, i32 10
  %175 = load ptr, ptr %174, align 8
  %176 = load ptr, ptr %6, align 8
  %177 = getelementptr inbounds %struct.bz_stream, ptr %176, i32 0, i32 11
  %178 = load ptr, ptr %177, align 8
  %179 = load ptr, ptr %11, align 8
  call void %175(ptr noundef %178, ptr noundef %179)
  br label %180

180:                                              ; preds = %172, %169
  store i32 -3, ptr %5, align 4
  br label %234

181:                                              ; preds = %119
  %182 = load ptr, ptr %11, align 8
  %183 = getelementptr inbounds %struct.EState, ptr %182, i32 0, i32 29
  store i32 0, ptr %183, align 4
  %184 = load ptr, ptr %11, align 8
  %185 = getelementptr inbounds %struct.EState, ptr %184, i32 0, i32 2
  store i32 2, ptr %185, align 4
  %186 = load ptr, ptr %11, align 8
  %187 = getelementptr inbounds %struct.EState, ptr %186, i32 0, i32 1
  store i32 2, ptr %187, align 8
  %188 = load ptr, ptr %11, align 8
  %189 = getelementptr inbounds %struct.EState, ptr %188, i32 0, i32 27
  store i32 0, ptr %189, align 4
  %190 = load i32, ptr %7, align 4
  %191 = load ptr, ptr %11, align 8
  %192 = getelementptr inbounds %struct.EState, ptr %191, i32 0, i32 30
  store i32 %190, ptr %192, align 8
  %193 = load i32, ptr %7, align 4
  %194 = mul nsw i32 100000, %193
  %195 = sub nsw i32 %194, 19
  %196 = load ptr, ptr %11, align 8
  %197 = getelementptr inbounds %struct.EState, ptr %196, i32 0, i32 18
  store i32 %195, ptr %197, align 8
  %198 = load i32, ptr %8, align 4
  %199 = load ptr, ptr %11, align 8
  %200 = getelementptr inbounds %struct.EState, ptr %199, i32 0, i32 28
  store i32 %198, ptr %200, align 8
  %201 = load i32, ptr %9, align 4
  %202 = load ptr, ptr %11, align 8
  %203 = getelementptr inbounds %struct.EState, ptr %202, i32 0, i32 12
  store i32 %201, ptr %203, align 8
  %204 = load ptr, ptr %11, align 8
  %205 = getelementptr inbounds %struct.EState, ptr %204, i32 0, i32 5
  %206 = load ptr, ptr %205, align 8
  %207 = load ptr, ptr %11, align 8
  %208 = getelementptr inbounds %struct.EState, ptr %207, i32 0, i32 9
  store ptr %206, ptr %208, align 8
  %209 = load ptr, ptr %11, align 8
  %210 = getelementptr inbounds %struct.EState, ptr %209, i32 0, i32 4
  %211 = load ptr, ptr %210, align 8
  %212 = load ptr, ptr %11, align 8
  %213 = getelementptr inbounds %struct.EState, ptr %212, i32 0, i32 10
  store ptr %211, ptr %213, align 8
  %214 = load ptr, ptr %11, align 8
  %215 = getelementptr inbounds %struct.EState, ptr %214, i32 0, i32 11
  store ptr null, ptr %215, align 8
  %216 = load ptr, ptr %11, align 8
  %217 = getelementptr inbounds %struct.EState, ptr %216, i32 0, i32 4
  %218 = load ptr, ptr %217, align 8
  %219 = load ptr, ptr %11, align 8
  %220 = getelementptr inbounds %struct.EState, ptr %219, i32 0, i32 8
  store ptr %218, ptr %220, align 8
  %221 = load ptr, ptr %11, align 8
  %222 = load ptr, ptr %6, align 8
  %223 = getelementptr inbounds %struct.bz_stream, ptr %222, i32 0, i32 8
  store ptr %221, ptr %223, align 8
  %224 = load ptr, ptr %6, align 8
  %225 = getelementptr inbounds %struct.bz_stream, ptr %224, i32 0, i32 2
  store i32 0, ptr %225, align 4
  %226 = load ptr, ptr %6, align 8
  %227 = getelementptr inbounds %struct.bz_stream, ptr %226, i32 0, i32 3
  store i32 0, ptr %227, align 8
  %228 = load ptr, ptr %6, align 8
  %229 = getelementptr inbounds %struct.bz_stream, ptr %228, i32 0, i32 6
  store i32 0, ptr %229, align 4
  %230 = load ptr, ptr %6, align 8
  %231 = getelementptr inbounds %struct.bz_stream, ptr %230, i32 0, i32 7
  store i32 0, ptr %231, align 8
  %232 = load ptr, ptr %11, align 8
  call void @init_RL(ptr noundef %232)
  %233 = load ptr, ptr %11, align 8
  call void @prepare_new_block(ptr noundef %233)
  store i32 0, ptr %5, align 4
  br label %234

234:                                              ; preds = %181, %180, %61, %30, %14
  %235 = load i32, ptr %5, align 4
  ret i32 %235
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @bz_config_ok() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @default_bzalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = call ptr @malloc(i64 noundef %11) #9
  store ptr %12, ptr %7, align 8
  %13 = load ptr, ptr %7, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @default_bzfree(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %8)
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @init_RL(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.EState, ptr %3, i32 0, i32 13
  store i32 256, ptr %4, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.EState, ptr %5, i32 0, i32 14
  store i32 0, ptr %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @prepare_new_block(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.EState, ptr %4, i32 0, i32 17
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.EState, ptr %6, i32 0, i32 19
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.EState, ptr %8, i32 0, i32 20
  store i32 0, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.EState, ptr %10, i32 0, i32 26
  store i32 -1, ptr %11, align 8
  store i32 0, ptr %3, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.EState, ptr %16, i32 0, i32 22
  %18 = load i32, ptr %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i8], ptr %17, i64 0, i64 %19
  store i8 0, ptr %20, align 1
  br label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %3, align 4
  br label %12, !llvm.loop !5

24:                                               ; preds = %12
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.EState, ptr %25, i32 0, i32 29
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzCompress(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -2, ptr %3, align 4
  br label %146

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.bz_stream, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %7, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -2, ptr %3, align 4
  br label %146

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr inbounds %struct.EState, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = icmp ne ptr %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -2, ptr %3, align 4
  br label %146

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %56, %45, %25
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %struct.EState, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  switch i32 %29, label %145 [
    i32 1, label %30
    i32 2, label %31
    i32 3, label %65
    i32 4, label %103
  ]

30:                                               ; preds = %26
  store i32 -1, ptr %3, align 4
  br label %146

31:                                               ; preds = %26
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 8
  %36 = call zeroext i8 @handle_compress(ptr noundef %35)
  store i8 %36, ptr %6, align 1
  %37 = load i8, ptr %6, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 -2
  store i32 %41, ptr %3, align 4
  br label %146

42:                                               ; preds = %31
  %43 = load i32, ptr %5, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.bz_stream, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds %struct.EState, ptr %49, i32 0, i32 3
  store i32 %48, ptr %50, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds %struct.EState, ptr %51, i32 0, i32 1
  store i32 3, ptr %52, align 8
  br label %26

53:                                               ; preds = %42
  %54 = load i32, ptr %5, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.bz_stream, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 8
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds %struct.EState, ptr %60, i32 0, i32 3
  store i32 %59, ptr %61, align 8
  %62 = load ptr, ptr %7, align 8
  %63 = getelementptr inbounds %struct.EState, ptr %62, i32 0, i32 1
  store i32 4, ptr %63, align 8
  br label %26

64:                                               ; preds = %53
  store i32 -2, ptr %3, align 4
  br label %146

65:                                               ; preds = %26
  %66 = load i32, ptr %5, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 -1, ptr %3, align 4
  br label %146

69:                                               ; preds = %65
  %70 = load ptr, ptr %7, align 8
  %71 = getelementptr inbounds %struct.EState, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 8
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr inbounds %struct.EState, ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.bz_stream, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 8
  %78 = icmp ne i32 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 -1, ptr %3, align 4
  br label %146

80:                                               ; preds = %69
  %81 = load ptr, ptr %4, align 8
  %82 = call zeroext i8 @handle_compress(ptr noundef %81)
  store i8 %82, ptr %6, align 1
  %83 = load ptr, ptr %7, align 8
  %84 = getelementptr inbounds %struct.EState, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 8
  %86 = icmp ugt i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %7, align 8
  %89 = call zeroext i8 @isempty_RL(ptr noundef %88)
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr inbounds %struct.EState, ptr %92, i32 0, i32 20
  %94 = load i32, ptr %93, align 8
  %95 = load ptr, ptr %7, align 8
  %96 = getelementptr inbounds %struct.EState, ptr %95, i32 0, i32 19
  %97 = load i32, ptr %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %87, %80
  store i32 2, ptr %3, align 4
  br label %146

100:                                              ; preds = %91
  %101 = load ptr, ptr %7, align 8
  %102 = getelementptr inbounds %struct.EState, ptr %101, i32 0, i32 1
  store i32 2, ptr %102, align 8
  store i32 1, ptr %3, align 4
  br label %146

103:                                              ; preds = %26
  %104 = load i32, ptr %5, align 4
  %105 = icmp ne i32 %104, 2
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 -1, ptr %3, align 4
  br label %146

107:                                              ; preds = %103
  %108 = load ptr, ptr %7, align 8
  %109 = getelementptr inbounds %struct.EState, ptr %108, i32 0, i32 3
  %110 = load i32, ptr %109, align 8
  %111 = load ptr, ptr %7, align 8
  %112 = getelementptr inbounds %struct.EState, ptr %111, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.bz_stream, ptr %113, i32 0, i32 1
  %115 = load i32, ptr %114, align 8
  %116 = icmp ne i32 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  store i32 -1, ptr %3, align 4
  br label %146

118:                                              ; preds = %107
  %119 = load ptr, ptr %4, align 8
  %120 = call zeroext i8 @handle_compress(ptr noundef %119)
  store i8 %120, ptr %6, align 1
  %121 = load i8, ptr %6, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  store i32 -1, ptr %3, align 4
  br label %146

124:                                              ; preds = %118
  %125 = load ptr, ptr %7, align 8
  %126 = getelementptr inbounds %struct.EState, ptr %125, i32 0, i32 3
  %127 = load i32, ptr %126, align 8
  %128 = icmp ugt i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr %7, align 8
  %131 = call zeroext i8 @isempty_RL(ptr noundef %130)
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load ptr, ptr %7, align 8
  %135 = getelementptr inbounds %struct.EState, ptr %134, i32 0, i32 20
  %136 = load i32, ptr %135, align 8
  %137 = load ptr, ptr %7, align 8
  %138 = getelementptr inbounds %struct.EState, ptr %137, i32 0, i32 19
  %139 = load i32, ptr %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133, %129, %124
  store i32 3, ptr %3, align 4
  br label %146

142:                                              ; preds = %133
  %143 = load ptr, ptr %7, align 8
  %144 = getelementptr inbounds %struct.EState, ptr %143, i32 0, i32 1
  store i32 1, ptr %144, align 8
  store i32 4, ptr %3, align 4
  br label %146

145:                                              ; preds = %26
  store i32 0, ptr %3, align 4
  br label %146

146:                                              ; preds = %145, %142, %141, %123, %117, %106, %100, %99, %79, %68, %64, %34, %30, %24, %17, %10
  %147 = load i32, ptr %3, align 4
  ret i32 %147
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @handle_compress(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  store i8 0, ptr %4, align 1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.bz_stream, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  br label %9

9:                                                ; preds = %1, %122
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.EState, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %66

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 8
  %16 = call zeroext i8 @copy_output_until_stop(ptr noundef %15)
  %17 = zext i8 %16 to i32
  %18 = load i8, ptr %4, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %4, align 1
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.EState, ptr %22, i32 0, i32 20
  %24 = load i32, ptr %23, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.EState, ptr %25, i32 0, i32 19
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %123

30:                                               ; preds = %14
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.EState, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds %struct.EState, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr %5, align 8
  %42 = call zeroext i8 @isempty_RL(ptr noundef %41)
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %123

46:                                               ; preds = %40, %35, %30
  %47 = load ptr, ptr %5, align 8
  call void @prepare_new_block(ptr noundef %47)
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds %struct.EState, ptr %48, i32 0, i32 2
  store i32 2, ptr %49, align 4
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.EState, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.EState, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 8
  %61 = call zeroext i8 @isempty_RL(ptr noundef %60)
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %123

65:                                               ; preds = %59, %54, %46
  br label %66

66:                                               ; preds = %65, %9
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.EState, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %122

71:                                               ; preds = %66
  %72 = load ptr, ptr %5, align 8
  %73 = call zeroext i8 @copy_input_until_stop(ptr noundef %72)
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %3, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %3, align 1
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.EState, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 8
  %82 = icmp ne i32 %81, 2
  br i1 %82, label %83, label %99

83:                                               ; preds = %71
  %84 = load ptr, ptr %5, align 8
  %85 = getelementptr inbounds %struct.EState, ptr %84, i32 0, i32 3
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load ptr, ptr %5, align 8
  call void @flush_RL(ptr noundef %89)
  %90 = load ptr, ptr %5, align 8
  %91 = load ptr, ptr %5, align 8
  %92 = getelementptr inbounds %struct.EState, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, 4
  %95 = zext i1 %94 to i32
  %96 = trunc i32 %95 to i8
  call void @BZ2_compressBlock(ptr noundef %90, i8 noundef zeroext %96)
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.EState, ptr %97, i32 0, i32 2
  store i32 1, ptr %98, align 4
  br label %121

99:                                               ; preds = %83, %71
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds %struct.EState, ptr %100, i32 0, i32 17
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %5, align 8
  %104 = getelementptr inbounds %struct.EState, ptr %103, i32 0, i32 18
  %105 = load i32, ptr %104, align 8
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load ptr, ptr %5, align 8
  call void @BZ2_compressBlock(ptr noundef %108, i8 noundef zeroext 0)
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds %struct.EState, ptr %109, i32 0, i32 2
  store i32 1, ptr %110, align 4
  br label %120

111:                                              ; preds = %99
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds %struct.EState, ptr %112, i32 0, i32 0
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.bz_stream, ptr %114, i32 0, i32 1
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %123

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %107
  br label %121

121:                                              ; preds = %120, %88
  br label %122

122:                                              ; preds = %121, %66
  br label %9

123:                                              ; preds = %118, %64, %45, %29
  %124 = load i8, ptr %3, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i8, ptr %4, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ true, %123 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = trunc i32 %133 to i8
  ret i8 %134
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @isempty_RL(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.EState, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.EState, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i8 0, ptr %2, align 1
  br label %15

14:                                               ; preds = %8, %1
  store i8 1, ptr %2, align 1
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i8, ptr %2, align 1
  ret i8 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzCompressEnd(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %79

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.bz_stream, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 -2, ptr %2, align 4
  br label %79

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.EState, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = icmp ne ptr %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -2, ptr %2, align 4
  br label %79

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.EState, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.bz_stream, ptr %28, i32 0, i32 10
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.bz_stream, ptr %31, i32 0, i32 11
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.EState, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  call void %30(ptr noundef %33, ptr noundef %36)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.EState, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.bz_stream, ptr %43, i32 0, i32 10
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.bz_stream, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.EState, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  call void %45(ptr noundef %48, ptr noundef %51)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.EState, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.bz_stream, ptr %58, i32 0, i32 10
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct.bz_stream, ptr %61, i32 0, i32 11
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.EState, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8
  call void %60(ptr noundef %63, ptr noundef %66)
  br label %67

67:                                               ; preds = %57, %52
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.bz_stream, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct.bz_stream, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %72, align 8
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.bz_stream, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8
  call void %70(ptr noundef %73, ptr noundef %76)
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds %struct.bz_stream, ptr %77, i32 0, i32 8
  store ptr null, ptr %78, align 8
  store i32 0, ptr %2, align 4
  br label %79

79:                                               ; preds = %67, %21, %14, %7
  %80 = load i32, ptr %2, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzDecompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %9 = call i32 @bz_config_ok()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -9, ptr %4, align 4
  br label %95

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 -2, ptr %4, align 4
  br label %95

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, ptr %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -2, ptr %4, align 4
  br label %95

23:                                               ; preds = %19, %16
  %24 = load i32, ptr %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %6, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i32 -2, ptr %4, align 4
  br label %95

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.bz_stream, ptr %31, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds %struct.bz_stream, ptr %36, i32 0, i32 9
  store ptr @default_bzalloc, ptr %37, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds %struct.bz_stream, ptr %39, i32 0, i32 10
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.bz_stream, ptr %44, i32 0, i32 10
  store ptr @default_bzfree, ptr %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %struct.bz_stream, ptr %47, i32 0, i32 9
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.bz_stream, ptr %50, i32 0, i32 11
  %52 = load ptr, ptr %51, align 8
  %53 = call ptr %49(ptr noundef %52, i32 noundef 64144, i32 noundef 1)
  store ptr %53, ptr %8, align 8
  %54 = load ptr, ptr %8, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 -3, ptr %4, align 4
  br label %95

57:                                               ; preds = %46
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr inbounds %struct.DState, ptr %59, i32 0, i32 0
  store ptr %58, ptr %60, align 8
  %61 = load ptr, ptr %8, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds %struct.bz_stream, ptr %62, i32 0, i32 8
  store ptr %61, ptr %63, align 8
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr inbounds %struct.DState, ptr %64, i32 0, i32 1
  store i32 10, ptr %65, align 8
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr inbounds %struct.DState, ptr %66, i32 0, i32 8
  store i32 0, ptr %67, align 4
  %68 = load ptr, ptr %8, align 8
  %69 = getelementptr inbounds %struct.DState, ptr %68, i32 0, i32 7
  store i32 0, ptr %69, align 8
  %70 = load ptr, ptr %8, align 8
  %71 = getelementptr inbounds %struct.DState, ptr %70, i32 0, i32 26
  store i32 0, ptr %71, align 4
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.bz_stream, ptr %72, i32 0, i32 2
  store i32 0, ptr %73, align 4
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds %struct.bz_stream, ptr %74, i32 0, i32 3
  store i32 0, ptr %75, align 8
  %76 = load ptr, ptr %5, align 8
  %77 = getelementptr inbounds %struct.bz_stream, ptr %76, i32 0, i32 6
  store i32 0, ptr %77, align 4
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.bz_stream, ptr %78, i32 0, i32 7
  store i32 0, ptr %79, align 8
  %80 = load i32, ptr %7, align 4
  %81 = trunc i32 %80 to i8
  %82 = load ptr, ptr %8, align 8
  %83 = getelementptr inbounds %struct.DState, ptr %82, i32 0, i32 10
  store i8 %81, ptr %83, align 4
  %84 = load ptr, ptr %8, align 8
  %85 = getelementptr inbounds %struct.DState, ptr %84, i32 0, i32 22
  store ptr null, ptr %85, align 8
  %86 = load ptr, ptr %8, align 8
  %87 = getelementptr inbounds %struct.DState, ptr %86, i32 0, i32 21
  store ptr null, ptr %87, align 8
  %88 = load ptr, ptr %8, align 8
  %89 = getelementptr inbounds %struct.DState, ptr %88, i32 0, i32 20
  store ptr null, ptr %89, align 8
  %90 = load ptr, ptr %8, align 8
  %91 = getelementptr inbounds %struct.DState, ptr %90, i32 0, i32 11
  store i32 0, ptr %91, align 8
  %92 = load i32, ptr %6, align 4
  %93 = load ptr, ptr %8, align 8
  %94 = getelementptr inbounds %struct.DState, ptr %93, i32 0, i32 12
  store i32 %92, ptr %94, align 4
  store i32 0, ptr %4, align 4
  br label %95

95:                                               ; preds = %57, %56, %29, %22, %15, %11
  %96 = load i32, ptr %4, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_indexIntoF(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  store i32 256, ptr %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %6, align 4
  %11 = add nsw i32 %9, %10
  %12 = ashr i32 %11, 1
  store i32 %12, ptr %7, align 4
  %13 = load i32, ptr %3, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = load i32, ptr %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp sge i32 %13, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = load i32, ptr %7, align 4
  store i32 %21, ptr %5, align 4
  br label %24

22:                                               ; preds = %8
  %23 = load i32, ptr %7, align 4
  store i32 %23, ptr %6, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %5, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %8, label %30, !llvm.loop !7

30:                                               ; preds = %25
  %31 = load i32, ptr %5, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzDecompress(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %169

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.bz_stream, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -2, ptr %2, align 4
  br label %169

17:                                               ; preds = %10
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.DState, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = icmp ne ptr %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -2, ptr %2, align 4
  br label %169

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %168
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.DState, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, ptr %2, align 4
  br label %169

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.DState, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %125

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.DState, ptr %37, i32 0, i32 10
  %39 = load i8, ptr %38, align 4
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load ptr, ptr %5, align 8
  %43 = call zeroext i8 @unRLE_obuf_to_output_SMALL(ptr noundef %42)
  store i8 %43, ptr %4, align 1
  br label %47

44:                                               ; preds = %36
  %45 = load ptr, ptr %5, align 8
  %46 = call zeroext i8 @unRLE_obuf_to_output_FAST(ptr noundef %45)
  store i8 %46, ptr %4, align 1
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i8, ptr %4, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -4, ptr %2, align 4
  br label %169

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.DState, ptr %52, i32 0, i32 17
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.DState, ptr %55, i32 0, i32 51
  %57 = load i32, ptr %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %51
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds %struct.DState, ptr %61, i32 0, i32 3
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %123

65:                                               ; preds = %60
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds %struct.DState, ptr %66, i32 0, i32 25
  %68 = load i32, ptr %67, align 8
  %69 = xor i32 %68, -1
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.DState, ptr %70, i32 0, i32 25
  store i32 %69, ptr %71, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.DState, ptr %72, i32 0, i32 12
  %74 = load i32, ptr %73, align 4
  %75 = icmp sge i32 %74, 3
  br i1 %75, label %76, label %85

76:                                               ; preds = %65
  %77 = load ptr, ptr @__stderrp, align 8
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.DState, ptr %78, i32 0, i32 23
  %80 = load i32, ptr %79, align 8
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr inbounds %struct.DState, ptr %81, i32 0, i32 25
  %83 = load i32, ptr %82, align 8
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.2, i32 noundef %80, i32 noundef %83) #7
  br label %85

85:                                               ; preds = %76, %65
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds %struct.DState, ptr %86, i32 0, i32 12
  %88 = load i32, ptr %87, align 4
  %89 = icmp sge i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load ptr, ptr @__stderrp, align 8
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.3) #7
  br label %93

93:                                               ; preds = %90, %85
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds %struct.DState, ptr %94, i32 0, i32 25
  %96 = load i32, ptr %95, align 8
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.DState, ptr %97, i32 0, i32 23
  %99 = load i32, ptr %98, align 8
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 -4, ptr %2, align 4
  br label %169

102:                                              ; preds = %93
  %103 = load ptr, ptr %5, align 8
  %104 = getelementptr inbounds %struct.DState, ptr %103, i32 0, i32 26
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 1
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr inbounds %struct.DState, ptr %107, i32 0, i32 26
  %109 = load i32, ptr %108, align 4
  %110 = lshr i32 %109, 31
  %111 = or i32 %106, %110
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds %struct.DState, ptr %112, i32 0, i32 26
  store i32 %111, ptr %113, align 4
  %114 = load ptr, ptr %5, align 8
  %115 = getelementptr inbounds %struct.DState, ptr %114, i32 0, i32 25
  %116 = load i32, ptr %115, align 8
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds %struct.DState, ptr %117, i32 0, i32 26
  %119 = load i32, ptr %118, align 4
  %120 = xor i32 %119, %116
  store i32 %120, ptr %118, align 4
  %121 = load ptr, ptr %5, align 8
  %122 = getelementptr inbounds %struct.DState, ptr %121, i32 0, i32 1
  store i32 14, ptr %122, align 8
  br label %124

123:                                              ; preds = %60, %51
  store i32 0, ptr %2, align 4
  br label %169

124:                                              ; preds = %102
  br label %125

125:                                              ; preds = %124, %31
  %126 = load ptr, ptr %5, align 8
  %127 = getelementptr inbounds %struct.DState, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %127, align 8
  %129 = icmp sge i32 %128, 10
  br i1 %129, label %130, label %168

130:                                              ; preds = %125
  %131 = load ptr, ptr %5, align 8
  %132 = call i32 @BZ2_decompress(ptr noundef %131)
  store i32 %132, ptr %6, align 4
  %133 = load i32, ptr %6, align 4
  %134 = icmp eq i32 %133, 4
  br i1 %134, label %135, label %160

135:                                              ; preds = %130
  %136 = load ptr, ptr %5, align 8
  %137 = getelementptr inbounds %struct.DState, ptr %136, i32 0, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = icmp sge i32 %138, 3
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load ptr, ptr @__stderrp, align 8
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr inbounds %struct.DState, ptr %142, i32 0, i32 24
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr inbounds %struct.DState, ptr %145, i32 0, i32 26
  %147 = load i32, ptr %146, align 4
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.4, i32 noundef %144, i32 noundef %147) #7
  br label %149

149:                                              ; preds = %140, %135
  %150 = load ptr, ptr %5, align 8
  %151 = getelementptr inbounds %struct.DState, ptr %150, i32 0, i32 26
  %152 = load i32, ptr %151, align 4
  %153 = load ptr, ptr %5, align 8
  %154 = getelementptr inbounds %struct.DState, ptr %153, i32 0, i32 24
  %155 = load i32, ptr %154, align 4
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  store i32 -4, ptr %2, align 4
  br label %169

158:                                              ; preds = %149
  %159 = load i32, ptr %6, align 4
  store i32 %159, ptr %2, align 4
  br label %169

160:                                              ; preds = %130
  %161 = load ptr, ptr %5, align 8
  %162 = getelementptr inbounds %struct.DState, ptr %161, i32 0, i32 1
  %163 = load i32, ptr %162, align 8
  %164 = icmp ne i32 %163, 2
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, ptr %6, align 4
  store i32 %166, ptr %2, align 4
  br label %169

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %125
  br label %25

169:                                              ; preds = %165, %158, %157, %123, %101, %50, %30, %23, %16, %9
  %170 = load i32, ptr %2, align 4
  ret i32 %170
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.DState, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %614

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %210, %218, %318, %326, %426, %434, %595
  br label %11

11:                                               ; preds = %10, %88
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.DState, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8 0, ptr %2, align 1
  br label %1019

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.DState, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %89

25:                                               ; preds = %19
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.DState, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.DState, ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.bz_stream, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  store i8 %28, ptr %33, align 1
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.DState, ptr %34, i32 0, i32 25
  %36 = load i32, ptr %35, align 8
  %37 = shl i32 %36, 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.DState, ptr %38, i32 0, i32 25
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 24
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.DState, ptr %42, i32 0, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = xor i32 %41, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %37, %49
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.DState, ptr %51, i32 0, i32 25
  store i32 %50, ptr %52, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.DState, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, ptr %54, align 8
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.DState, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.bz_stream, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %62, ptr %60, align 8
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.DState, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.bz_stream, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, -1
  store i32 %68, ptr %66, align 8
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.DState, ptr %69, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.bz_stream, ptr %71, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct.DState, ptr %75, i32 0, i32 0
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.bz_stream, ptr %77, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %25
  %82 = load ptr, ptr %3, align 8
  %83 = getelementptr inbounds %struct.DState, ptr %82, i32 0, i32 0
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.bz_stream, ptr %84, i32 0, i32 7
  %86 = load i32, ptr %85, align 8
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 8
  br label %88

88:                                               ; preds = %81, %25
  br label %11

89:                                               ; preds = %24
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.DState, ptr %90, i32 0, i32 17
  %92 = load i32, ptr %91, align 4
  %93 = load ptr, ptr %3, align 8
  %94 = getelementptr inbounds %struct.DState, ptr %93, i32 0, i32 51
  %95 = load i32, ptr %94, align 8
  %96 = add nsw i32 %95, 1
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i8 0, ptr %2, align 1
  br label %1019

99:                                               ; preds = %89
  %100 = load ptr, ptr %3, align 8
  %101 = getelementptr inbounds %struct.DState, ptr %100, i32 0, i32 17
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %3, align 8
  %104 = getelementptr inbounds %struct.DState, ptr %103, i32 0, i32 51
  %105 = load i32, ptr %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = icmp sgt i32 %102, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store i8 1, ptr %2, align 1
  br label %1019

109:                                              ; preds = %99
  %110 = load ptr, ptr %3, align 8
  %111 = getelementptr inbounds %struct.DState, ptr %110, i32 0, i32 3
  store i32 1, ptr %111, align 8
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct.DState, ptr %112, i32 0, i32 15
  %114 = load i32, ptr %113, align 8
  %115 = trunc i32 %114 to i8
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct.DState, ptr %116, i32 0, i32 2
  store i8 %115, ptr %117, align 4
  %118 = load ptr, ptr %3, align 8
  %119 = getelementptr inbounds %struct.DState, ptr %118, i32 0, i32 14
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %3, align 8
  %122 = getelementptr inbounds %struct.DState, ptr %121, i32 0, i32 18
  %123 = getelementptr inbounds [257 x i32], ptr %122, i64 0, i64 0
  %124 = call i32 @BZ2_indexIntoF(i32 noundef %120, ptr noundef %123)
  %125 = trunc i32 %124 to i8
  store i8 %125, ptr %4, align 1
  %126 = load ptr, ptr %3, align 8
  %127 = getelementptr inbounds %struct.DState, ptr %126, i32 0, i32 21
  %128 = load ptr, ptr %127, align 8
  %129 = load ptr, ptr %3, align 8
  %130 = getelementptr inbounds %struct.DState, ptr %129, i32 0, i32 14
  %131 = load i32, ptr %130, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i16, ptr %128, i64 %132
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = load ptr, ptr %3, align 8
  %137 = getelementptr inbounds %struct.DState, ptr %136, i32 0, i32 22
  %138 = load ptr, ptr %137, align 8
  %139 = load ptr, ptr %3, align 8
  %140 = getelementptr inbounds %struct.DState, ptr %139, i32 0, i32 14
  %141 = load i32, ptr %140, align 4
  %142 = lshr i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %138, i64 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load ptr, ptr %3, align 8
  %148 = getelementptr inbounds %struct.DState, ptr %147, i32 0, i32 14
  %149 = load i32, ptr %148, align 4
  %150 = shl i32 %149, 2
  %151 = and i32 %150, 4
  %152 = lshr i32 %146, %151
  %153 = and i32 %152, 15
  %154 = shl i32 %153, 16
  %155 = or i32 %135, %154
  %156 = load ptr, ptr %3, align 8
  %157 = getelementptr inbounds %struct.DState, ptr %156, i32 0, i32 14
  store i32 %155, ptr %157, align 4
  %158 = load ptr, ptr %3, align 8
  %159 = getelementptr inbounds %struct.DState, ptr %158, i32 0, i32 5
  %160 = load i32, ptr %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %109
  %163 = load ptr, ptr %3, align 8
  %164 = getelementptr inbounds %struct.DState, ptr %163, i32 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4
  %169 = load ptr, ptr %3, align 8
  %170 = getelementptr inbounds %struct.DState, ptr %169, i32 0, i32 5
  store i32 %168, ptr %170, align 8
  %171 = load ptr, ptr %3, align 8
  %172 = getelementptr inbounds %struct.DState, ptr %171, i32 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %172, align 4
  %175 = load ptr, ptr %3, align 8
  %176 = getelementptr inbounds %struct.DState, ptr %175, i32 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 512
  br i1 %178, label %179, label %182

179:                                              ; preds = %162
  %180 = load ptr, ptr %3, align 8
  %181 = getelementptr inbounds %struct.DState, ptr %180, i32 0, i32 6
  store i32 0, ptr %181, align 4
  br label %182

182:                                              ; preds = %179, %162
  br label %183

183:                                              ; preds = %182, %109
  %184 = load ptr, ptr %3, align 8
  %185 = getelementptr inbounds %struct.DState, ptr %184, i32 0, i32 5
  %186 = load i32, ptr %185, align 8
  %187 = add nsw i32 %186, -1
  store i32 %187, ptr %185, align 8
  %188 = load ptr, ptr %3, align 8
  %189 = getelementptr inbounds %struct.DState, ptr %188, i32 0, i32 5
  %190 = load i32, ptr %189, align 8
  %191 = icmp eq i32 %190, 1
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 1, i32 0
  %194 = load i8, ptr %4, align 1
  %195 = zext i8 %194 to i32
  %196 = xor i32 %195, %193
  %197 = trunc i32 %196 to i8
  store i8 %197, ptr %4, align 1
  %198 = load ptr, ptr %3, align 8
  %199 = getelementptr inbounds %struct.DState, ptr %198, i32 0, i32 17
  %200 = load i32, ptr %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %199, align 4
  %202 = load ptr, ptr %3, align 8
  %203 = getelementptr inbounds %struct.DState, ptr %202, i32 0, i32 17
  %204 = load i32, ptr %203, align 4
  %205 = load ptr, ptr %3, align 8
  %206 = getelementptr inbounds %struct.DState, ptr %205, i32 0, i32 51
  %207 = load i32, ptr %206, align 8
  %208 = add nsw i32 %207, 1
  %209 = icmp eq i32 %204, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %183
  br label %10

211:                                              ; preds = %183
  %212 = load i8, ptr %4, align 1
  %213 = zext i8 %212 to i32
  %214 = load ptr, ptr %3, align 8
  %215 = getelementptr inbounds %struct.DState, ptr %214, i32 0, i32 15
  %216 = load i32, ptr %215, align 8
  %217 = icmp ne i32 %213, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load i8, ptr %4, align 1
  %220 = zext i8 %219 to i32
  %221 = load ptr, ptr %3, align 8
  %222 = getelementptr inbounds %struct.DState, ptr %221, i32 0, i32 15
  store i32 %220, ptr %222, align 8
  br label %10

223:                                              ; preds = %211
  %224 = load ptr, ptr %3, align 8
  %225 = getelementptr inbounds %struct.DState, ptr %224, i32 0, i32 3
  store i32 2, ptr %225, align 8
  %226 = load ptr, ptr %3, align 8
  %227 = getelementptr inbounds %struct.DState, ptr %226, i32 0, i32 14
  %228 = load i32, ptr %227, align 4
  %229 = load ptr, ptr %3, align 8
  %230 = getelementptr inbounds %struct.DState, ptr %229, i32 0, i32 18
  %231 = getelementptr inbounds [257 x i32], ptr %230, i64 0, i64 0
  %232 = call i32 @BZ2_indexIntoF(i32 noundef %228, ptr noundef %231)
  %233 = trunc i32 %232 to i8
  store i8 %233, ptr %4, align 1
  %234 = load ptr, ptr %3, align 8
  %235 = getelementptr inbounds %struct.DState, ptr %234, i32 0, i32 21
  %236 = load ptr, ptr %235, align 8
  %237 = load ptr, ptr %3, align 8
  %238 = getelementptr inbounds %struct.DState, ptr %237, i32 0, i32 14
  %239 = load i32, ptr %238, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i16, ptr %236, i64 %240
  %242 = load i16, ptr %241, align 2
  %243 = zext i16 %242 to i32
  %244 = load ptr, ptr %3, align 8
  %245 = getelementptr inbounds %struct.DState, ptr %244, i32 0, i32 22
  %246 = load ptr, ptr %245, align 8
  %247 = load ptr, ptr %3, align 8
  %248 = getelementptr inbounds %struct.DState, ptr %247, i32 0, i32 14
  %249 = load i32, ptr %248, align 4
  %250 = lshr i32 %249, 1
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %246, i64 %251
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = load ptr, ptr %3, align 8
  %256 = getelementptr inbounds %struct.DState, ptr %255, i32 0, i32 14
  %257 = load i32, ptr %256, align 4
  %258 = shl i32 %257, 2
  %259 = and i32 %258, 4
  %260 = lshr i32 %254, %259
  %261 = and i32 %260, 15
  %262 = shl i32 %261, 16
  %263 = or i32 %243, %262
  %264 = load ptr, ptr %3, align 8
  %265 = getelementptr inbounds %struct.DState, ptr %264, i32 0, i32 14
  store i32 %263, ptr %265, align 4
  %266 = load ptr, ptr %3, align 8
  %267 = getelementptr inbounds %struct.DState, ptr %266, i32 0, i32 5
  %268 = load i32, ptr %267, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %291

270:                                              ; preds = %223
  %271 = load ptr, ptr %3, align 8
  %272 = getelementptr inbounds %struct.DState, ptr %271, i32 0, i32 6
  %273 = load i32, ptr %272, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4
  %277 = load ptr, ptr %3, align 8
  %278 = getelementptr inbounds %struct.DState, ptr %277, i32 0, i32 5
  store i32 %276, ptr %278, align 8
  %279 = load ptr, ptr %3, align 8
  %280 = getelementptr inbounds %struct.DState, ptr %279, i32 0, i32 6
  %281 = load i32, ptr %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %280, align 4
  %283 = load ptr, ptr %3, align 8
  %284 = getelementptr inbounds %struct.DState, ptr %283, i32 0, i32 6
  %285 = load i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 512
  br i1 %286, label %287, label %290

287:                                              ; preds = %270
  %288 = load ptr, ptr %3, align 8
  %289 = getelementptr inbounds %struct.DState, ptr %288, i32 0, i32 6
  store i32 0, ptr %289, align 4
  br label %290

290:                                              ; preds = %287, %270
  br label %291

291:                                              ; preds = %290, %223
  %292 = load ptr, ptr %3, align 8
  %293 = getelementptr inbounds %struct.DState, ptr %292, i32 0, i32 5
  %294 = load i32, ptr %293, align 8
  %295 = add nsw i32 %294, -1
  store i32 %295, ptr %293, align 8
  %296 = load ptr, ptr %3, align 8
  %297 = getelementptr inbounds %struct.DState, ptr %296, i32 0, i32 5
  %298 = load i32, ptr %297, align 8
  %299 = icmp eq i32 %298, 1
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 1, i32 0
  %302 = load i8, ptr %4, align 1
  %303 = zext i8 %302 to i32
  %304 = xor i32 %303, %301
  %305 = trunc i32 %304 to i8
  store i8 %305, ptr %4, align 1
  %306 = load ptr, ptr %3, align 8
  %307 = getelementptr inbounds %struct.DState, ptr %306, i32 0, i32 17
  %308 = load i32, ptr %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, ptr %307, align 4
  %310 = load ptr, ptr %3, align 8
  %311 = getelementptr inbounds %struct.DState, ptr %310, i32 0, i32 17
  %312 = load i32, ptr %311, align 4
  %313 = load ptr, ptr %3, align 8
  %314 = getelementptr inbounds %struct.DState, ptr %313, i32 0, i32 51
  %315 = load i32, ptr %314, align 8
  %316 = add nsw i32 %315, 1
  %317 = icmp eq i32 %312, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %291
  br label %10

319:                                              ; preds = %291
  %320 = load i8, ptr %4, align 1
  %321 = zext i8 %320 to i32
  %322 = load ptr, ptr %3, align 8
  %323 = getelementptr inbounds %struct.DState, ptr %322, i32 0, i32 15
  %324 = load i32, ptr %323, align 8
  %325 = icmp ne i32 %321, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %319
  %327 = load i8, ptr %4, align 1
  %328 = zext i8 %327 to i32
  %329 = load ptr, ptr %3, align 8
  %330 = getelementptr inbounds %struct.DState, ptr %329, i32 0, i32 15
  store i32 %328, ptr %330, align 8
  br label %10

331:                                              ; preds = %319
  %332 = load ptr, ptr %3, align 8
  %333 = getelementptr inbounds %struct.DState, ptr %332, i32 0, i32 3
  store i32 3, ptr %333, align 8
  %334 = load ptr, ptr %3, align 8
  %335 = getelementptr inbounds %struct.DState, ptr %334, i32 0, i32 14
  %336 = load i32, ptr %335, align 4
  %337 = load ptr, ptr %3, align 8
  %338 = getelementptr inbounds %struct.DState, ptr %337, i32 0, i32 18
  %339 = getelementptr inbounds [257 x i32], ptr %338, i64 0, i64 0
  %340 = call i32 @BZ2_indexIntoF(i32 noundef %336, ptr noundef %339)
  %341 = trunc i32 %340 to i8
  store i8 %341, ptr %4, align 1
  %342 = load ptr, ptr %3, align 8
  %343 = getelementptr inbounds %struct.DState, ptr %342, i32 0, i32 21
  %344 = load ptr, ptr %343, align 8
  %345 = load ptr, ptr %3, align 8
  %346 = getelementptr inbounds %struct.DState, ptr %345, i32 0, i32 14
  %347 = load i32, ptr %346, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i16, ptr %344, i64 %348
  %350 = load i16, ptr %349, align 2
  %351 = zext i16 %350 to i32
  %352 = load ptr, ptr %3, align 8
  %353 = getelementptr inbounds %struct.DState, ptr %352, i32 0, i32 22
  %354 = load ptr, ptr %353, align 8
  %355 = load ptr, ptr %3, align 8
  %356 = getelementptr inbounds %struct.DState, ptr %355, i32 0, i32 14
  %357 = load i32, ptr %356, align 4
  %358 = lshr i32 %357, 1
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i8, ptr %354, i64 %359
  %361 = load i8, ptr %360, align 1
  %362 = zext i8 %361 to i32
  %363 = load ptr, ptr %3, align 8
  %364 = getelementptr inbounds %struct.DState, ptr %363, i32 0, i32 14
  %365 = load i32, ptr %364, align 4
  %366 = shl i32 %365, 2
  %367 = and i32 %366, 4
  %368 = lshr i32 %362, %367
  %369 = and i32 %368, 15
  %370 = shl i32 %369, 16
  %371 = or i32 %351, %370
  %372 = load ptr, ptr %3, align 8
  %373 = getelementptr inbounds %struct.DState, ptr %372, i32 0, i32 14
  store i32 %371, ptr %373, align 4
  %374 = load ptr, ptr %3, align 8
  %375 = getelementptr inbounds %struct.DState, ptr %374, i32 0, i32 5
  %376 = load i32, ptr %375, align 8
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %399

378:                                              ; preds = %331
  %379 = load ptr, ptr %3, align 8
  %380 = getelementptr inbounds %struct.DState, ptr %379, i32 0, i32 6
  %381 = load i32, ptr %380, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %382
  %384 = load i32, ptr %383, align 4
  %385 = load ptr, ptr %3, align 8
  %386 = getelementptr inbounds %struct.DState, ptr %385, i32 0, i32 5
  store i32 %384, ptr %386, align 8
  %387 = load ptr, ptr %3, align 8
  %388 = getelementptr inbounds %struct.DState, ptr %387, i32 0, i32 6
  %389 = load i32, ptr %388, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, ptr %388, align 4
  %391 = load ptr, ptr %3, align 8
  %392 = getelementptr inbounds %struct.DState, ptr %391, i32 0, i32 6
  %393 = load i32, ptr %392, align 4
  %394 = icmp eq i32 %393, 512
  br i1 %394, label %395, label %398

395:                                              ; preds = %378
  %396 = load ptr, ptr %3, align 8
  %397 = getelementptr inbounds %struct.DState, ptr %396, i32 0, i32 6
  store i32 0, ptr %397, align 4
  br label %398

398:                                              ; preds = %395, %378
  br label %399

399:                                              ; preds = %398, %331
  %400 = load ptr, ptr %3, align 8
  %401 = getelementptr inbounds %struct.DState, ptr %400, i32 0, i32 5
  %402 = load i32, ptr %401, align 8
  %403 = add nsw i32 %402, -1
  store i32 %403, ptr %401, align 8
  %404 = load ptr, ptr %3, align 8
  %405 = getelementptr inbounds %struct.DState, ptr %404, i32 0, i32 5
  %406 = load i32, ptr %405, align 8
  %407 = icmp eq i32 %406, 1
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i32 1, i32 0
  %410 = load i8, ptr %4, align 1
  %411 = zext i8 %410 to i32
  %412 = xor i32 %411, %409
  %413 = trunc i32 %412 to i8
  store i8 %413, ptr %4, align 1
  %414 = load ptr, ptr %3, align 8
  %415 = getelementptr inbounds %struct.DState, ptr %414, i32 0, i32 17
  %416 = load i32, ptr %415, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, ptr %415, align 4
  %418 = load ptr, ptr %3, align 8
  %419 = getelementptr inbounds %struct.DState, ptr %418, i32 0, i32 17
  %420 = load i32, ptr %419, align 4
  %421 = load ptr, ptr %3, align 8
  %422 = getelementptr inbounds %struct.DState, ptr %421, i32 0, i32 51
  %423 = load i32, ptr %422, align 8
  %424 = add nsw i32 %423, 1
  %425 = icmp eq i32 %420, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %399
  br label %10

427:                                              ; preds = %399
  %428 = load i8, ptr %4, align 1
  %429 = zext i8 %428 to i32
  %430 = load ptr, ptr %3, align 8
  %431 = getelementptr inbounds %struct.DState, ptr %430, i32 0, i32 15
  %432 = load i32, ptr %431, align 8
  %433 = icmp ne i32 %429, %432
  br i1 %433, label %434, label %439

434:                                              ; preds = %427
  %435 = load i8, ptr %4, align 1
  %436 = zext i8 %435 to i32
  %437 = load ptr, ptr %3, align 8
  %438 = getelementptr inbounds %struct.DState, ptr %437, i32 0, i32 15
  store i32 %436, ptr %438, align 8
  br label %10

439:                                              ; preds = %427
  %440 = load ptr, ptr %3, align 8
  %441 = getelementptr inbounds %struct.DState, ptr %440, i32 0, i32 14
  %442 = load i32, ptr %441, align 4
  %443 = load ptr, ptr %3, align 8
  %444 = getelementptr inbounds %struct.DState, ptr %443, i32 0, i32 18
  %445 = getelementptr inbounds [257 x i32], ptr %444, i64 0, i64 0
  %446 = call i32 @BZ2_indexIntoF(i32 noundef %442, ptr noundef %445)
  %447 = trunc i32 %446 to i8
  store i8 %447, ptr %4, align 1
  %448 = load ptr, ptr %3, align 8
  %449 = getelementptr inbounds %struct.DState, ptr %448, i32 0, i32 21
  %450 = load ptr, ptr %449, align 8
  %451 = load ptr, ptr %3, align 8
  %452 = getelementptr inbounds %struct.DState, ptr %451, i32 0, i32 14
  %453 = load i32, ptr %452, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds i16, ptr %450, i64 %454
  %456 = load i16, ptr %455, align 2
  %457 = zext i16 %456 to i32
  %458 = load ptr, ptr %3, align 8
  %459 = getelementptr inbounds %struct.DState, ptr %458, i32 0, i32 22
  %460 = load ptr, ptr %459, align 8
  %461 = load ptr, ptr %3, align 8
  %462 = getelementptr inbounds %struct.DState, ptr %461, i32 0, i32 14
  %463 = load i32, ptr %462, align 4
  %464 = lshr i32 %463, 1
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds i8, ptr %460, i64 %465
  %467 = load i8, ptr %466, align 1
  %468 = zext i8 %467 to i32
  %469 = load ptr, ptr %3, align 8
  %470 = getelementptr inbounds %struct.DState, ptr %469, i32 0, i32 14
  %471 = load i32, ptr %470, align 4
  %472 = shl i32 %471, 2
  %473 = and i32 %472, 4
  %474 = lshr i32 %468, %473
  %475 = and i32 %474, 15
  %476 = shl i32 %475, 16
  %477 = or i32 %457, %476
  %478 = load ptr, ptr %3, align 8
  %479 = getelementptr inbounds %struct.DState, ptr %478, i32 0, i32 14
  store i32 %477, ptr %479, align 4
  %480 = load ptr, ptr %3, align 8
  %481 = getelementptr inbounds %struct.DState, ptr %480, i32 0, i32 5
  %482 = load i32, ptr %481, align 8
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %505

484:                                              ; preds = %439
  %485 = load ptr, ptr %3, align 8
  %486 = getelementptr inbounds %struct.DState, ptr %485, i32 0, i32 6
  %487 = load i32, ptr %486, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %488
  %490 = load i32, ptr %489, align 4
  %491 = load ptr, ptr %3, align 8
  %492 = getelementptr inbounds %struct.DState, ptr %491, i32 0, i32 5
  store i32 %490, ptr %492, align 8
  %493 = load ptr, ptr %3, align 8
  %494 = getelementptr inbounds %struct.DState, ptr %493, i32 0, i32 6
  %495 = load i32, ptr %494, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %494, align 4
  %497 = load ptr, ptr %3, align 8
  %498 = getelementptr inbounds %struct.DState, ptr %497, i32 0, i32 6
  %499 = load i32, ptr %498, align 4
  %500 = icmp eq i32 %499, 512
  br i1 %500, label %501, label %504

501:                                              ; preds = %484
  %502 = load ptr, ptr %3, align 8
  %503 = getelementptr inbounds %struct.DState, ptr %502, i32 0, i32 6
  store i32 0, ptr %503, align 4
  br label %504

504:                                              ; preds = %501, %484
  br label %505

505:                                              ; preds = %504, %439
  %506 = load ptr, ptr %3, align 8
  %507 = getelementptr inbounds %struct.DState, ptr %506, i32 0, i32 5
  %508 = load i32, ptr %507, align 8
  %509 = add nsw i32 %508, -1
  store i32 %509, ptr %507, align 8
  %510 = load ptr, ptr %3, align 8
  %511 = getelementptr inbounds %struct.DState, ptr %510, i32 0, i32 5
  %512 = load i32, ptr %511, align 8
  %513 = icmp eq i32 %512, 1
  %514 = zext i1 %513 to i64
  %515 = select i1 %513, i32 1, i32 0
  %516 = load i8, ptr %4, align 1
  %517 = zext i8 %516 to i32
  %518 = xor i32 %517, %515
  %519 = trunc i32 %518 to i8
  store i8 %519, ptr %4, align 1
  %520 = load ptr, ptr %3, align 8
  %521 = getelementptr inbounds %struct.DState, ptr %520, i32 0, i32 17
  %522 = load i32, ptr %521, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, ptr %521, align 4
  %524 = load i8, ptr %4, align 1
  %525 = zext i8 %524 to i32
  %526 = add nsw i32 %525, 4
  %527 = load ptr, ptr %3, align 8
  %528 = getelementptr inbounds %struct.DState, ptr %527, i32 0, i32 3
  store i32 %526, ptr %528, align 8
  %529 = load ptr, ptr %3, align 8
  %530 = getelementptr inbounds %struct.DState, ptr %529, i32 0, i32 14
  %531 = load i32, ptr %530, align 4
  %532 = load ptr, ptr %3, align 8
  %533 = getelementptr inbounds %struct.DState, ptr %532, i32 0, i32 18
  %534 = getelementptr inbounds [257 x i32], ptr %533, i64 0, i64 0
  %535 = call i32 @BZ2_indexIntoF(i32 noundef %531, ptr noundef %534)
  %536 = load ptr, ptr %3, align 8
  %537 = getelementptr inbounds %struct.DState, ptr %536, i32 0, i32 15
  store i32 %535, ptr %537, align 8
  %538 = load ptr, ptr %3, align 8
  %539 = getelementptr inbounds %struct.DState, ptr %538, i32 0, i32 21
  %540 = load ptr, ptr %539, align 8
  %541 = load ptr, ptr %3, align 8
  %542 = getelementptr inbounds %struct.DState, ptr %541, i32 0, i32 14
  %543 = load i32, ptr %542, align 4
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds i16, ptr %540, i64 %544
  %546 = load i16, ptr %545, align 2
  %547 = zext i16 %546 to i32
  %548 = load ptr, ptr %3, align 8
  %549 = getelementptr inbounds %struct.DState, ptr %548, i32 0, i32 22
  %550 = load ptr, ptr %549, align 8
  %551 = load ptr, ptr %3, align 8
  %552 = getelementptr inbounds %struct.DState, ptr %551, i32 0, i32 14
  %553 = load i32, ptr %552, align 4
  %554 = lshr i32 %553, 1
  %555 = zext i32 %554 to i64
  %556 = getelementptr inbounds i8, ptr %550, i64 %555
  %557 = load i8, ptr %556, align 1
  %558 = zext i8 %557 to i32
  %559 = load ptr, ptr %3, align 8
  %560 = getelementptr inbounds %struct.DState, ptr %559, i32 0, i32 14
  %561 = load i32, ptr %560, align 4
  %562 = shl i32 %561, 2
  %563 = and i32 %562, 4
  %564 = lshr i32 %558, %563
  %565 = and i32 %564, 15
  %566 = shl i32 %565, 16
  %567 = or i32 %547, %566
  %568 = load ptr, ptr %3, align 8
  %569 = getelementptr inbounds %struct.DState, ptr %568, i32 0, i32 14
  store i32 %567, ptr %569, align 4
  %570 = load ptr, ptr %3, align 8
  %571 = getelementptr inbounds %struct.DState, ptr %570, i32 0, i32 5
  %572 = load i32, ptr %571, align 8
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %595

574:                                              ; preds = %505
  %575 = load ptr, ptr %3, align 8
  %576 = getelementptr inbounds %struct.DState, ptr %575, i32 0, i32 6
  %577 = load i32, ptr %576, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %578
  %580 = load i32, ptr %579, align 4
  %581 = load ptr, ptr %3, align 8
  %582 = getelementptr inbounds %struct.DState, ptr %581, i32 0, i32 5
  store i32 %580, ptr %582, align 8
  %583 = load ptr, ptr %3, align 8
  %584 = getelementptr inbounds %struct.DState, ptr %583, i32 0, i32 6
  %585 = load i32, ptr %584, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, ptr %584, align 4
  %587 = load ptr, ptr %3, align 8
  %588 = getelementptr inbounds %struct.DState, ptr %587, i32 0, i32 6
  %589 = load i32, ptr %588, align 4
  %590 = icmp eq i32 %589, 512
  br i1 %590, label %591, label %594

591:                                              ; preds = %574
  %592 = load ptr, ptr %3, align 8
  %593 = getelementptr inbounds %struct.DState, ptr %592, i32 0, i32 6
  store i32 0, ptr %593, align 4
  br label %594

594:                                              ; preds = %591, %574
  br label %595

595:                                              ; preds = %594, %505
  %596 = load ptr, ptr %3, align 8
  %597 = getelementptr inbounds %struct.DState, ptr %596, i32 0, i32 5
  %598 = load i32, ptr %597, align 8
  %599 = add nsw i32 %598, -1
  store i32 %599, ptr %597, align 8
  %600 = load ptr, ptr %3, align 8
  %601 = getelementptr inbounds %struct.DState, ptr %600, i32 0, i32 5
  %602 = load i32, ptr %601, align 8
  %603 = icmp eq i32 %602, 1
  %604 = zext i1 %603 to i64
  %605 = select i1 %603, i32 1, i32 0
  %606 = load ptr, ptr %3, align 8
  %607 = getelementptr inbounds %struct.DState, ptr %606, i32 0, i32 15
  %608 = load i32, ptr %607, align 8
  %609 = xor i32 %608, %605
  store i32 %609, ptr %607, align 8
  %610 = load ptr, ptr %3, align 8
  %611 = getelementptr inbounds %struct.DState, ptr %610, i32 0, i32 17
  %612 = load i32, ptr %611, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, ptr %611, align 4
  br label %10

614:                                              ; preds = %1
  br label %615

615:                                              ; preds = %614, %775, %783, %843, %851, %911, %919, %924
  br label %616

616:                                              ; preds = %615, %693
  %617 = load ptr, ptr %3, align 8
  %618 = getelementptr inbounds %struct.DState, ptr %617, i32 0, i32 0
  %619 = load ptr, ptr %618, align 8
  %620 = getelementptr inbounds %struct.bz_stream, ptr %619, i32 0, i32 5
  %621 = load i32, ptr %620, align 8
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %623, label %624

623:                                              ; preds = %616
  store i8 0, ptr %2, align 1
  br label %1019

624:                                              ; preds = %616
  %625 = load ptr, ptr %3, align 8
  %626 = getelementptr inbounds %struct.DState, ptr %625, i32 0, i32 3
  %627 = load i32, ptr %626, align 8
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %624
  br label %694

630:                                              ; preds = %624
  %631 = load ptr, ptr %3, align 8
  %632 = getelementptr inbounds %struct.DState, ptr %631, i32 0, i32 2
  %633 = load i8, ptr %632, align 4
  %634 = load ptr, ptr %3, align 8
  %635 = getelementptr inbounds %struct.DState, ptr %634, i32 0, i32 0
  %636 = load ptr, ptr %635, align 8
  %637 = getelementptr inbounds %struct.bz_stream, ptr %636, i32 0, i32 4
  %638 = load ptr, ptr %637, align 8
  store i8 %633, ptr %638, align 1
  %639 = load ptr, ptr %3, align 8
  %640 = getelementptr inbounds %struct.DState, ptr %639, i32 0, i32 25
  %641 = load i32, ptr %640, align 8
  %642 = shl i32 %641, 8
  %643 = load ptr, ptr %3, align 8
  %644 = getelementptr inbounds %struct.DState, ptr %643, i32 0, i32 25
  %645 = load i32, ptr %644, align 8
  %646 = lshr i32 %645, 24
  %647 = load ptr, ptr %3, align 8
  %648 = getelementptr inbounds %struct.DState, ptr %647, i32 0, i32 2
  %649 = load i8, ptr %648, align 4
  %650 = zext i8 %649 to i32
  %651 = xor i32 %646, %650
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %652
  %654 = load i32, ptr %653, align 4
  %655 = xor i32 %642, %654
  %656 = load ptr, ptr %3, align 8
  %657 = getelementptr inbounds %struct.DState, ptr %656, i32 0, i32 25
  store i32 %655, ptr %657, align 8
  %658 = load ptr, ptr %3, align 8
  %659 = getelementptr inbounds %struct.DState, ptr %658, i32 0, i32 3
  %660 = load i32, ptr %659, align 8
  %661 = add nsw i32 %660, -1
  store i32 %661, ptr %659, align 8
  %662 = load ptr, ptr %3, align 8
  %663 = getelementptr inbounds %struct.DState, ptr %662, i32 0, i32 0
  %664 = load ptr, ptr %663, align 8
  %665 = getelementptr inbounds %struct.bz_stream, ptr %664, i32 0, i32 4
  %666 = load ptr, ptr %665, align 8
  %667 = getelementptr inbounds i8, ptr %666, i32 1
  store ptr %667, ptr %665, align 8
  %668 = load ptr, ptr %3, align 8
  %669 = getelementptr inbounds %struct.DState, ptr %668, i32 0, i32 0
  %670 = load ptr, ptr %669, align 8
  %671 = getelementptr inbounds %struct.bz_stream, ptr %670, i32 0, i32 5
  %672 = load i32, ptr %671, align 8
  %673 = add i32 %672, -1
  store i32 %673, ptr %671, align 8
  %674 = load ptr, ptr %3, align 8
  %675 = getelementptr inbounds %struct.DState, ptr %674, i32 0, i32 0
  %676 = load ptr, ptr %675, align 8
  %677 = getelementptr inbounds %struct.bz_stream, ptr %676, i32 0, i32 6
  %678 = load i32, ptr %677, align 4
  %679 = add i32 %678, 1
  store i32 %679, ptr %677, align 4
  %680 = load ptr, ptr %3, align 8
  %681 = getelementptr inbounds %struct.DState, ptr %680, i32 0, i32 0
  %682 = load ptr, ptr %681, align 8
  %683 = getelementptr inbounds %struct.bz_stream, ptr %682, i32 0, i32 6
  %684 = load i32, ptr %683, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %693

686:                                              ; preds = %630
  %687 = load ptr, ptr %3, align 8
  %688 = getelementptr inbounds %struct.DState, ptr %687, i32 0, i32 0
  %689 = load ptr, ptr %688, align 8
  %690 = getelementptr inbounds %struct.bz_stream, ptr %689, i32 0, i32 7
  %691 = load i32, ptr %690, align 8
  %692 = add i32 %691, 1
  store i32 %692, ptr %690, align 8
  br label %693

693:                                              ; preds = %686, %630
  br label %616

694:                                              ; preds = %629
  %695 = load ptr, ptr %3, align 8
  %696 = getelementptr inbounds %struct.DState, ptr %695, i32 0, i32 17
  %697 = load i32, ptr %696, align 4
  %698 = load ptr, ptr %3, align 8
  %699 = getelementptr inbounds %struct.DState, ptr %698, i32 0, i32 51
  %700 = load i32, ptr %699, align 8
  %701 = add nsw i32 %700, 1
  %702 = icmp eq i32 %697, %701
  br i1 %702, label %703, label %704

703:                                              ; preds = %694
  store i8 0, ptr %2, align 1
  br label %1019

704:                                              ; preds = %694
  %705 = load ptr, ptr %3, align 8
  %706 = getelementptr inbounds %struct.DState, ptr %705, i32 0, i32 17
  %707 = load i32, ptr %706, align 4
  %708 = load ptr, ptr %3, align 8
  %709 = getelementptr inbounds %struct.DState, ptr %708, i32 0, i32 51
  %710 = load i32, ptr %709, align 8
  %711 = add nsw i32 %710, 1
  %712 = icmp sgt i32 %707, %711
  br i1 %712, label %713, label %714

713:                                              ; preds = %704
  store i8 1, ptr %2, align 1
  br label %1019

714:                                              ; preds = %704
  %715 = load ptr, ptr %3, align 8
  %716 = getelementptr inbounds %struct.DState, ptr %715, i32 0, i32 3
  store i32 1, ptr %716, align 8
  %717 = load ptr, ptr %3, align 8
  %718 = getelementptr inbounds %struct.DState, ptr %717, i32 0, i32 15
  %719 = load i32, ptr %718, align 8
  %720 = trunc i32 %719 to i8
  %721 = load ptr, ptr %3, align 8
  %722 = getelementptr inbounds %struct.DState, ptr %721, i32 0, i32 2
  store i8 %720, ptr %722, align 4
  %723 = load ptr, ptr %3, align 8
  %724 = getelementptr inbounds %struct.DState, ptr %723, i32 0, i32 14
  %725 = load i32, ptr %724, align 4
  %726 = load ptr, ptr %3, align 8
  %727 = getelementptr inbounds %struct.DState, ptr %726, i32 0, i32 18
  %728 = getelementptr inbounds [257 x i32], ptr %727, i64 0, i64 0
  %729 = call i32 @BZ2_indexIntoF(i32 noundef %725, ptr noundef %728)
  %730 = trunc i32 %729 to i8
  store i8 %730, ptr %4, align 1
  %731 = load ptr, ptr %3, align 8
  %732 = getelementptr inbounds %struct.DState, ptr %731, i32 0, i32 21
  %733 = load ptr, ptr %732, align 8
  %734 = load ptr, ptr %3, align 8
  %735 = getelementptr inbounds %struct.DState, ptr %734, i32 0, i32 14
  %736 = load i32, ptr %735, align 4
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds i16, ptr %733, i64 %737
  %739 = load i16, ptr %738, align 2
  %740 = zext i16 %739 to i32
  %741 = load ptr, ptr %3, align 8
  %742 = getelementptr inbounds %struct.DState, ptr %741, i32 0, i32 22
  %743 = load ptr, ptr %742, align 8
  %744 = load ptr, ptr %3, align 8
  %745 = getelementptr inbounds %struct.DState, ptr %744, i32 0, i32 14
  %746 = load i32, ptr %745, align 4
  %747 = lshr i32 %746, 1
  %748 = zext i32 %747 to i64
  %749 = getelementptr inbounds i8, ptr %743, i64 %748
  %750 = load i8, ptr %749, align 1
  %751 = zext i8 %750 to i32
  %752 = load ptr, ptr %3, align 8
  %753 = getelementptr inbounds %struct.DState, ptr %752, i32 0, i32 14
  %754 = load i32, ptr %753, align 4
  %755 = shl i32 %754, 2
  %756 = and i32 %755, 4
  %757 = lshr i32 %751, %756
  %758 = and i32 %757, 15
  %759 = shl i32 %758, 16
  %760 = or i32 %740, %759
  %761 = load ptr, ptr %3, align 8
  %762 = getelementptr inbounds %struct.DState, ptr %761, i32 0, i32 14
  store i32 %760, ptr %762, align 4
  %763 = load ptr, ptr %3, align 8
  %764 = getelementptr inbounds %struct.DState, ptr %763, i32 0, i32 17
  %765 = load i32, ptr %764, align 4
  %766 = add nsw i32 %765, 1
  store i32 %766, ptr %764, align 4
  %767 = load ptr, ptr %3, align 8
  %768 = getelementptr inbounds %struct.DState, ptr %767, i32 0, i32 17
  %769 = load i32, ptr %768, align 4
  %770 = load ptr, ptr %3, align 8
  %771 = getelementptr inbounds %struct.DState, ptr %770, i32 0, i32 51
  %772 = load i32, ptr %771, align 8
  %773 = add nsw i32 %772, 1
  %774 = icmp eq i32 %769, %773
  br i1 %774, label %775, label %776

775:                                              ; preds = %714
  br label %615

776:                                              ; preds = %714
  %777 = load i8, ptr %4, align 1
  %778 = zext i8 %777 to i32
  %779 = load ptr, ptr %3, align 8
  %780 = getelementptr inbounds %struct.DState, ptr %779, i32 0, i32 15
  %781 = load i32, ptr %780, align 8
  %782 = icmp ne i32 %778, %781
  br i1 %782, label %783, label %788

783:                                              ; preds = %776
  %784 = load i8, ptr %4, align 1
  %785 = zext i8 %784 to i32
  %786 = load ptr, ptr %3, align 8
  %787 = getelementptr inbounds %struct.DState, ptr %786, i32 0, i32 15
  store i32 %785, ptr %787, align 8
  br label %615

788:                                              ; preds = %776
  %789 = load ptr, ptr %3, align 8
  %790 = getelementptr inbounds %struct.DState, ptr %789, i32 0, i32 3
  store i32 2, ptr %790, align 8
  %791 = load ptr, ptr %3, align 8
  %792 = getelementptr inbounds %struct.DState, ptr %791, i32 0, i32 14
  %793 = load i32, ptr %792, align 4
  %794 = load ptr, ptr %3, align 8
  %795 = getelementptr inbounds %struct.DState, ptr %794, i32 0, i32 18
  %796 = getelementptr inbounds [257 x i32], ptr %795, i64 0, i64 0
  %797 = call i32 @BZ2_indexIntoF(i32 noundef %793, ptr noundef %796)
  %798 = trunc i32 %797 to i8
  store i8 %798, ptr %4, align 1
  %799 = load ptr, ptr %3, align 8
  %800 = getelementptr inbounds %struct.DState, ptr %799, i32 0, i32 21
  %801 = load ptr, ptr %800, align 8
  %802 = load ptr, ptr %3, align 8
  %803 = getelementptr inbounds %struct.DState, ptr %802, i32 0, i32 14
  %804 = load i32, ptr %803, align 4
  %805 = zext i32 %804 to i64
  %806 = getelementptr inbounds i16, ptr %801, i64 %805
  %807 = load i16, ptr %806, align 2
  %808 = zext i16 %807 to i32
  %809 = load ptr, ptr %3, align 8
  %810 = getelementptr inbounds %struct.DState, ptr %809, i32 0, i32 22
  %811 = load ptr, ptr %810, align 8
  %812 = load ptr, ptr %3, align 8
  %813 = getelementptr inbounds %struct.DState, ptr %812, i32 0, i32 14
  %814 = load i32, ptr %813, align 4
  %815 = lshr i32 %814, 1
  %816 = zext i32 %815 to i64
  %817 = getelementptr inbounds i8, ptr %811, i64 %816
  %818 = load i8, ptr %817, align 1
  %819 = zext i8 %818 to i32
  %820 = load ptr, ptr %3, align 8
  %821 = getelementptr inbounds %struct.DState, ptr %820, i32 0, i32 14
  %822 = load i32, ptr %821, align 4
  %823 = shl i32 %822, 2
  %824 = and i32 %823, 4
  %825 = lshr i32 %819, %824
  %826 = and i32 %825, 15
  %827 = shl i32 %826, 16
  %828 = or i32 %808, %827
  %829 = load ptr, ptr %3, align 8
  %830 = getelementptr inbounds %struct.DState, ptr %829, i32 0, i32 14
  store i32 %828, ptr %830, align 4
  %831 = load ptr, ptr %3, align 8
  %832 = getelementptr inbounds %struct.DState, ptr %831, i32 0, i32 17
  %833 = load i32, ptr %832, align 4
  %834 = add nsw i32 %833, 1
  store i32 %834, ptr %832, align 4
  %835 = load ptr, ptr %3, align 8
  %836 = getelementptr inbounds %struct.DState, ptr %835, i32 0, i32 17
  %837 = load i32, ptr %836, align 4
  %838 = load ptr, ptr %3, align 8
  %839 = getelementptr inbounds %struct.DState, ptr %838, i32 0, i32 51
  %840 = load i32, ptr %839, align 8
  %841 = add nsw i32 %840, 1
  %842 = icmp eq i32 %837, %841
  br i1 %842, label %843, label %844

843:                                              ; preds = %788
  br label %615

844:                                              ; preds = %788
  %845 = load i8, ptr %4, align 1
  %846 = zext i8 %845 to i32
  %847 = load ptr, ptr %3, align 8
  %848 = getelementptr inbounds %struct.DState, ptr %847, i32 0, i32 15
  %849 = load i32, ptr %848, align 8
  %850 = icmp ne i32 %846, %849
  br i1 %850, label %851, label %856

851:                                              ; preds = %844
  %852 = load i8, ptr %4, align 1
  %853 = zext i8 %852 to i32
  %854 = load ptr, ptr %3, align 8
  %855 = getelementptr inbounds %struct.DState, ptr %854, i32 0, i32 15
  store i32 %853, ptr %855, align 8
  br label %615

856:                                              ; preds = %844
  %857 = load ptr, ptr %3, align 8
  %858 = getelementptr inbounds %struct.DState, ptr %857, i32 0, i32 3
  store i32 3, ptr %858, align 8
  %859 = load ptr, ptr %3, align 8
  %860 = getelementptr inbounds %struct.DState, ptr %859, i32 0, i32 14
  %861 = load i32, ptr %860, align 4
  %862 = load ptr, ptr %3, align 8
  %863 = getelementptr inbounds %struct.DState, ptr %862, i32 0, i32 18
  %864 = getelementptr inbounds [257 x i32], ptr %863, i64 0, i64 0
  %865 = call i32 @BZ2_indexIntoF(i32 noundef %861, ptr noundef %864)
  %866 = trunc i32 %865 to i8
  store i8 %866, ptr %4, align 1
  %867 = load ptr, ptr %3, align 8
  %868 = getelementptr inbounds %struct.DState, ptr %867, i32 0, i32 21
  %869 = load ptr, ptr %868, align 8
  %870 = load ptr, ptr %3, align 8
  %871 = getelementptr inbounds %struct.DState, ptr %870, i32 0, i32 14
  %872 = load i32, ptr %871, align 4
  %873 = zext i32 %872 to i64
  %874 = getelementptr inbounds i16, ptr %869, i64 %873
  %875 = load i16, ptr %874, align 2
  %876 = zext i16 %875 to i32
  %877 = load ptr, ptr %3, align 8
  %878 = getelementptr inbounds %struct.DState, ptr %877, i32 0, i32 22
  %879 = load ptr, ptr %878, align 8
  %880 = load ptr, ptr %3, align 8
  %881 = getelementptr inbounds %struct.DState, ptr %880, i32 0, i32 14
  %882 = load i32, ptr %881, align 4
  %883 = lshr i32 %882, 1
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds i8, ptr %879, i64 %884
  %886 = load i8, ptr %885, align 1
  %887 = zext i8 %886 to i32
  %888 = load ptr, ptr %3, align 8
  %889 = getelementptr inbounds %struct.DState, ptr %888, i32 0, i32 14
  %890 = load i32, ptr %889, align 4
  %891 = shl i32 %890, 2
  %892 = and i32 %891, 4
  %893 = lshr i32 %887, %892
  %894 = and i32 %893, 15
  %895 = shl i32 %894, 16
  %896 = or i32 %876, %895
  %897 = load ptr, ptr %3, align 8
  %898 = getelementptr inbounds %struct.DState, ptr %897, i32 0, i32 14
  store i32 %896, ptr %898, align 4
  %899 = load ptr, ptr %3, align 8
  %900 = getelementptr inbounds %struct.DState, ptr %899, i32 0, i32 17
  %901 = load i32, ptr %900, align 4
  %902 = add nsw i32 %901, 1
  store i32 %902, ptr %900, align 4
  %903 = load ptr, ptr %3, align 8
  %904 = getelementptr inbounds %struct.DState, ptr %903, i32 0, i32 17
  %905 = load i32, ptr %904, align 4
  %906 = load ptr, ptr %3, align 8
  %907 = getelementptr inbounds %struct.DState, ptr %906, i32 0, i32 51
  %908 = load i32, ptr %907, align 8
  %909 = add nsw i32 %908, 1
  %910 = icmp eq i32 %905, %909
  br i1 %910, label %911, label %912

911:                                              ; preds = %856
  br label %615

912:                                              ; preds = %856
  %913 = load i8, ptr %4, align 1
  %914 = zext i8 %913 to i32
  %915 = load ptr, ptr %3, align 8
  %916 = getelementptr inbounds %struct.DState, ptr %915, i32 0, i32 15
  %917 = load i32, ptr %916, align 8
  %918 = icmp ne i32 %914, %917
  br i1 %918, label %919, label %924

919:                                              ; preds = %912
  %920 = load i8, ptr %4, align 1
  %921 = zext i8 %920 to i32
  %922 = load ptr, ptr %3, align 8
  %923 = getelementptr inbounds %struct.DState, ptr %922, i32 0, i32 15
  store i32 %921, ptr %923, align 8
  br label %615

924:                                              ; preds = %912
  %925 = load ptr, ptr %3, align 8
  %926 = getelementptr inbounds %struct.DState, ptr %925, i32 0, i32 14
  %927 = load i32, ptr %926, align 4
  %928 = load ptr, ptr %3, align 8
  %929 = getelementptr inbounds %struct.DState, ptr %928, i32 0, i32 18
  %930 = getelementptr inbounds [257 x i32], ptr %929, i64 0, i64 0
  %931 = call i32 @BZ2_indexIntoF(i32 noundef %927, ptr noundef %930)
  %932 = trunc i32 %931 to i8
  store i8 %932, ptr %4, align 1
  %933 = load ptr, ptr %3, align 8
  %934 = getelementptr inbounds %struct.DState, ptr %933, i32 0, i32 21
  %935 = load ptr, ptr %934, align 8
  %936 = load ptr, ptr %3, align 8
  %937 = getelementptr inbounds %struct.DState, ptr %936, i32 0, i32 14
  %938 = load i32, ptr %937, align 4
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds i16, ptr %935, i64 %939
  %941 = load i16, ptr %940, align 2
  %942 = zext i16 %941 to i32
  %943 = load ptr, ptr %3, align 8
  %944 = getelementptr inbounds %struct.DState, ptr %943, i32 0, i32 22
  %945 = load ptr, ptr %944, align 8
  %946 = load ptr, ptr %3, align 8
  %947 = getelementptr inbounds %struct.DState, ptr %946, i32 0, i32 14
  %948 = load i32, ptr %947, align 4
  %949 = lshr i32 %948, 1
  %950 = zext i32 %949 to i64
  %951 = getelementptr inbounds i8, ptr %945, i64 %950
  %952 = load i8, ptr %951, align 1
  %953 = zext i8 %952 to i32
  %954 = load ptr, ptr %3, align 8
  %955 = getelementptr inbounds %struct.DState, ptr %954, i32 0, i32 14
  %956 = load i32, ptr %955, align 4
  %957 = shl i32 %956, 2
  %958 = and i32 %957, 4
  %959 = lshr i32 %953, %958
  %960 = and i32 %959, 15
  %961 = shl i32 %960, 16
  %962 = or i32 %942, %961
  %963 = load ptr, ptr %3, align 8
  %964 = getelementptr inbounds %struct.DState, ptr %963, i32 0, i32 14
  store i32 %962, ptr %964, align 4
  %965 = load ptr, ptr %3, align 8
  %966 = getelementptr inbounds %struct.DState, ptr %965, i32 0, i32 17
  %967 = load i32, ptr %966, align 4
  %968 = add nsw i32 %967, 1
  store i32 %968, ptr %966, align 4
  %969 = load i8, ptr %4, align 1
  %970 = zext i8 %969 to i32
  %971 = add nsw i32 %970, 4
  %972 = load ptr, ptr %3, align 8
  %973 = getelementptr inbounds %struct.DState, ptr %972, i32 0, i32 3
  store i32 %971, ptr %973, align 8
  %974 = load ptr, ptr %3, align 8
  %975 = getelementptr inbounds %struct.DState, ptr %974, i32 0, i32 14
  %976 = load i32, ptr %975, align 4
  %977 = load ptr, ptr %3, align 8
  %978 = getelementptr inbounds %struct.DState, ptr %977, i32 0, i32 18
  %979 = getelementptr inbounds [257 x i32], ptr %978, i64 0, i64 0
  %980 = call i32 @BZ2_indexIntoF(i32 noundef %976, ptr noundef %979)
  %981 = load ptr, ptr %3, align 8
  %982 = getelementptr inbounds %struct.DState, ptr %981, i32 0, i32 15
  store i32 %980, ptr %982, align 8
  %983 = load ptr, ptr %3, align 8
  %984 = getelementptr inbounds %struct.DState, ptr %983, i32 0, i32 21
  %985 = load ptr, ptr %984, align 8
  %986 = load ptr, ptr %3, align 8
  %987 = getelementptr inbounds %struct.DState, ptr %986, i32 0, i32 14
  %988 = load i32, ptr %987, align 4
  %989 = zext i32 %988 to i64
  %990 = getelementptr inbounds i16, ptr %985, i64 %989
  %991 = load i16, ptr %990, align 2
  %992 = zext i16 %991 to i32
  %993 = load ptr, ptr %3, align 8
  %994 = getelementptr inbounds %struct.DState, ptr %993, i32 0, i32 22
  %995 = load ptr, ptr %994, align 8
  %996 = load ptr, ptr %3, align 8
  %997 = getelementptr inbounds %struct.DState, ptr %996, i32 0, i32 14
  %998 = load i32, ptr %997, align 4
  %999 = lshr i32 %998, 1
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds i8, ptr %995, i64 %1000
  %1002 = load i8, ptr %1001, align 1
  %1003 = zext i8 %1002 to i32
  %1004 = load ptr, ptr %3, align 8
  %1005 = getelementptr inbounds %struct.DState, ptr %1004, i32 0, i32 14
  %1006 = load i32, ptr %1005, align 4
  %1007 = shl i32 %1006, 2
  %1008 = and i32 %1007, 4
  %1009 = lshr i32 %1003, %1008
  %1010 = and i32 %1009, 15
  %1011 = shl i32 %1010, 16
  %1012 = or i32 %992, %1011
  %1013 = load ptr, ptr %3, align 8
  %1014 = getelementptr inbounds %struct.DState, ptr %1013, i32 0, i32 14
  store i32 %1012, ptr %1014, align 4
  %1015 = load ptr, ptr %3, align 8
  %1016 = getelementptr inbounds %struct.DState, ptr %1015, i32 0, i32 17
  %1017 = load i32, ptr %1016, align 4
  %1018 = add nsw i32 %1017, 1
  store i32 %1018, ptr %1016, align 4
  br label %615

1019:                                             ; preds = %713, %703, %623, %108, %98, %18
  %1020 = load i8, ptr %2, align 1
  ret i8 %1020
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @unRLE_obuf_to_output_FAST(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.DState, ptr %17, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %528

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %202, %210, %290, %298, %378, %386, %509
  br label %23

23:                                               ; preds = %22, %100
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.DState, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.bz_stream, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i8 0, ptr %2, align 1
  br label %798

31:                                               ; preds = %23
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.DState, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %101

37:                                               ; preds = %31
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.DState, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 4
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.DState, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.bz_stream, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8
  store i8 %40, ptr %45, align 1
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.DState, ptr %46, i32 0, i32 25
  %48 = load i32, ptr %47, align 8
  %49 = shl i32 %48, 8
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds %struct.DState, ptr %50, i32 0, i32 25
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 24
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.DState, ptr %54, i32 0, i32 2
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = xor i32 %53, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = xor i32 %49, %61
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.DState, ptr %63, i32 0, i32 25
  store i32 %62, ptr %64, align 8
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.DState, ptr %65, i32 0, i32 3
  %67 = load i32, ptr %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %66, align 8
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.DState, ptr %69, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.bz_stream, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %74, ptr %72, align 8
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct.DState, ptr %75, i32 0, i32 0
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.bz_stream, ptr %77, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 8
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct.DState, ptr %81, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.bz_stream, ptr %83, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  %87 = load ptr, ptr %3, align 8
  %88 = getelementptr inbounds %struct.DState, ptr %87, i32 0, i32 0
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.bz_stream, ptr %89, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %37
  %94 = load ptr, ptr %3, align 8
  %95 = getelementptr inbounds %struct.DState, ptr %94, i32 0, i32 0
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.bz_stream, ptr %96, i32 0, i32 7
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8
  br label %100

100:                                              ; preds = %93, %37
  br label %23

101:                                              ; preds = %36
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds %struct.DState, ptr %102, i32 0, i32 17
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %3, align 8
  %106 = getelementptr inbounds %struct.DState, ptr %105, i32 0, i32 51
  %107 = load i32, ptr %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i8 0, ptr %2, align 1
  br label %798

111:                                              ; preds = %101
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct.DState, ptr %112, i32 0, i32 17
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %3, align 8
  %116 = getelementptr inbounds %struct.DState, ptr %115, i32 0, i32 51
  %117 = load i32, ptr %116, align 8
  %118 = add nsw i32 %117, 1
  %119 = icmp sgt i32 %114, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i8 1, ptr %2, align 1
  br label %798

121:                                              ; preds = %111
  %122 = load ptr, ptr %3, align 8
  %123 = getelementptr inbounds %struct.DState, ptr %122, i32 0, i32 3
  store i32 1, ptr %123, align 8
  %124 = load ptr, ptr %3, align 8
  %125 = getelementptr inbounds %struct.DState, ptr %124, i32 0, i32 15
  %126 = load i32, ptr %125, align 8
  %127 = trunc i32 %126 to i8
  %128 = load ptr, ptr %3, align 8
  %129 = getelementptr inbounds %struct.DState, ptr %128, i32 0, i32 2
  store i8 %127, ptr %129, align 4
  %130 = load ptr, ptr %3, align 8
  %131 = getelementptr inbounds %struct.DState, ptr %130, i32 0, i32 20
  %132 = load ptr, ptr %131, align 8
  %133 = load ptr, ptr %3, align 8
  %134 = getelementptr inbounds %struct.DState, ptr %133, i32 0, i32 14
  %135 = load i32, ptr %134, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %132, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %3, align 8
  %140 = getelementptr inbounds %struct.DState, ptr %139, i32 0, i32 14
  store i32 %138, ptr %140, align 4
  %141 = load ptr, ptr %3, align 8
  %142 = getelementptr inbounds %struct.DState, ptr %141, i32 0, i32 14
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 255
  %145 = trunc i32 %144 to i8
  store i8 %145, ptr %4, align 1
  %146 = load ptr, ptr %3, align 8
  %147 = getelementptr inbounds %struct.DState, ptr %146, i32 0, i32 14
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %148, 8
  store i32 %149, ptr %147, align 4
  %150 = load ptr, ptr %3, align 8
  %151 = getelementptr inbounds %struct.DState, ptr %150, i32 0, i32 5
  %152 = load i32, ptr %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %121
  %155 = load ptr, ptr %3, align 8
  %156 = getelementptr inbounds %struct.DState, ptr %155, i32 0, i32 6
  %157 = load i32, ptr %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %3, align 8
  %162 = getelementptr inbounds %struct.DState, ptr %161, i32 0, i32 5
  store i32 %160, ptr %162, align 8
  %163 = load ptr, ptr %3, align 8
  %164 = getelementptr inbounds %struct.DState, ptr %163, i32 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %164, align 4
  %167 = load ptr, ptr %3, align 8
  %168 = getelementptr inbounds %struct.DState, ptr %167, i32 0, i32 6
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 512
  br i1 %170, label %171, label %174

171:                                              ; preds = %154
  %172 = load ptr, ptr %3, align 8
  %173 = getelementptr inbounds %struct.DState, ptr %172, i32 0, i32 6
  store i32 0, ptr %173, align 4
  br label %174

174:                                              ; preds = %171, %154
  br label %175

175:                                              ; preds = %174, %121
  %176 = load ptr, ptr %3, align 8
  %177 = getelementptr inbounds %struct.DState, ptr %176, i32 0, i32 5
  %178 = load i32, ptr %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, ptr %177, align 8
  %180 = load ptr, ptr %3, align 8
  %181 = getelementptr inbounds %struct.DState, ptr %180, i32 0, i32 5
  %182 = load i32, ptr %181, align 8
  %183 = icmp eq i32 %182, 1
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 0
  %186 = load i8, ptr %4, align 1
  %187 = zext i8 %186 to i32
  %188 = xor i32 %187, %185
  %189 = trunc i32 %188 to i8
  store i8 %189, ptr %4, align 1
  %190 = load ptr, ptr %3, align 8
  %191 = getelementptr inbounds %struct.DState, ptr %190, i32 0, i32 17
  %192 = load i32, ptr %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %191, align 4
  %194 = load ptr, ptr %3, align 8
  %195 = getelementptr inbounds %struct.DState, ptr %194, i32 0, i32 17
  %196 = load i32, ptr %195, align 4
  %197 = load ptr, ptr %3, align 8
  %198 = getelementptr inbounds %struct.DState, ptr %197, i32 0, i32 51
  %199 = load i32, ptr %198, align 8
  %200 = add nsw i32 %199, 1
  %201 = icmp eq i32 %196, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %175
  br label %22

203:                                              ; preds = %175
  %204 = load i8, ptr %4, align 1
  %205 = zext i8 %204 to i32
  %206 = load ptr, ptr %3, align 8
  %207 = getelementptr inbounds %struct.DState, ptr %206, i32 0, i32 15
  %208 = load i32, ptr %207, align 8
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load i8, ptr %4, align 1
  %212 = zext i8 %211 to i32
  %213 = load ptr, ptr %3, align 8
  %214 = getelementptr inbounds %struct.DState, ptr %213, i32 0, i32 15
  store i32 %212, ptr %214, align 8
  br label %22

215:                                              ; preds = %203
  %216 = load ptr, ptr %3, align 8
  %217 = getelementptr inbounds %struct.DState, ptr %216, i32 0, i32 3
  store i32 2, ptr %217, align 8
  %218 = load ptr, ptr %3, align 8
  %219 = getelementptr inbounds %struct.DState, ptr %218, i32 0, i32 20
  %220 = load ptr, ptr %219, align 8
  %221 = load ptr, ptr %3, align 8
  %222 = getelementptr inbounds %struct.DState, ptr %221, i32 0, i32 14
  %223 = load i32, ptr %222, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, ptr %220, i64 %224
  %226 = load i32, ptr %225, align 4
  %227 = load ptr, ptr %3, align 8
  %228 = getelementptr inbounds %struct.DState, ptr %227, i32 0, i32 14
  store i32 %226, ptr %228, align 4
  %229 = load ptr, ptr %3, align 8
  %230 = getelementptr inbounds %struct.DState, ptr %229, i32 0, i32 14
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, 255
  %233 = trunc i32 %232 to i8
  store i8 %233, ptr %4, align 1
  %234 = load ptr, ptr %3, align 8
  %235 = getelementptr inbounds %struct.DState, ptr %234, i32 0, i32 14
  %236 = load i32, ptr %235, align 4
  %237 = lshr i32 %236, 8
  store i32 %237, ptr %235, align 4
  %238 = load ptr, ptr %3, align 8
  %239 = getelementptr inbounds %struct.DState, ptr %238, i32 0, i32 5
  %240 = load i32, ptr %239, align 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %215
  %243 = load ptr, ptr %3, align 8
  %244 = getelementptr inbounds %struct.DState, ptr %243, i32 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4
  %249 = load ptr, ptr %3, align 8
  %250 = getelementptr inbounds %struct.DState, ptr %249, i32 0, i32 5
  store i32 %248, ptr %250, align 8
  %251 = load ptr, ptr %3, align 8
  %252 = getelementptr inbounds %struct.DState, ptr %251, i32 0, i32 6
  %253 = load i32, ptr %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %252, align 4
  %255 = load ptr, ptr %3, align 8
  %256 = getelementptr inbounds %struct.DState, ptr %255, i32 0, i32 6
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %257, 512
  br i1 %258, label %259, label %262

259:                                              ; preds = %242
  %260 = load ptr, ptr %3, align 8
  %261 = getelementptr inbounds %struct.DState, ptr %260, i32 0, i32 6
  store i32 0, ptr %261, align 4
  br label %262

262:                                              ; preds = %259, %242
  br label %263

263:                                              ; preds = %262, %215
  %264 = load ptr, ptr %3, align 8
  %265 = getelementptr inbounds %struct.DState, ptr %264, i32 0, i32 5
  %266 = load i32, ptr %265, align 8
  %267 = add nsw i32 %266, -1
  store i32 %267, ptr %265, align 8
  %268 = load ptr, ptr %3, align 8
  %269 = getelementptr inbounds %struct.DState, ptr %268, i32 0, i32 5
  %270 = load i32, ptr %269, align 8
  %271 = icmp eq i32 %270, 1
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 1, i32 0
  %274 = load i8, ptr %4, align 1
  %275 = zext i8 %274 to i32
  %276 = xor i32 %275, %273
  %277 = trunc i32 %276 to i8
  store i8 %277, ptr %4, align 1
  %278 = load ptr, ptr %3, align 8
  %279 = getelementptr inbounds %struct.DState, ptr %278, i32 0, i32 17
  %280 = load i32, ptr %279, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %279, align 4
  %282 = load ptr, ptr %3, align 8
  %283 = getelementptr inbounds %struct.DState, ptr %282, i32 0, i32 17
  %284 = load i32, ptr %283, align 4
  %285 = load ptr, ptr %3, align 8
  %286 = getelementptr inbounds %struct.DState, ptr %285, i32 0, i32 51
  %287 = load i32, ptr %286, align 8
  %288 = add nsw i32 %287, 1
  %289 = icmp eq i32 %284, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %263
  br label %22

291:                                              ; preds = %263
  %292 = load i8, ptr %4, align 1
  %293 = zext i8 %292 to i32
  %294 = load ptr, ptr %3, align 8
  %295 = getelementptr inbounds %struct.DState, ptr %294, i32 0, i32 15
  %296 = load i32, ptr %295, align 8
  %297 = icmp ne i32 %293, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %291
  %299 = load i8, ptr %4, align 1
  %300 = zext i8 %299 to i32
  %301 = load ptr, ptr %3, align 8
  %302 = getelementptr inbounds %struct.DState, ptr %301, i32 0, i32 15
  store i32 %300, ptr %302, align 8
  br label %22

303:                                              ; preds = %291
  %304 = load ptr, ptr %3, align 8
  %305 = getelementptr inbounds %struct.DState, ptr %304, i32 0, i32 3
  store i32 3, ptr %305, align 8
  %306 = load ptr, ptr %3, align 8
  %307 = getelementptr inbounds %struct.DState, ptr %306, i32 0, i32 20
  %308 = load ptr, ptr %307, align 8
  %309 = load ptr, ptr %3, align 8
  %310 = getelementptr inbounds %struct.DState, ptr %309, i32 0, i32 14
  %311 = load i32, ptr %310, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i32, ptr %308, i64 %312
  %314 = load i32, ptr %313, align 4
  %315 = load ptr, ptr %3, align 8
  %316 = getelementptr inbounds %struct.DState, ptr %315, i32 0, i32 14
  store i32 %314, ptr %316, align 4
  %317 = load ptr, ptr %3, align 8
  %318 = getelementptr inbounds %struct.DState, ptr %317, i32 0, i32 14
  %319 = load i32, ptr %318, align 4
  %320 = and i32 %319, 255
  %321 = trunc i32 %320 to i8
  store i8 %321, ptr %4, align 1
  %322 = load ptr, ptr %3, align 8
  %323 = getelementptr inbounds %struct.DState, ptr %322, i32 0, i32 14
  %324 = load i32, ptr %323, align 4
  %325 = lshr i32 %324, 8
  store i32 %325, ptr %323, align 4
  %326 = load ptr, ptr %3, align 8
  %327 = getelementptr inbounds %struct.DState, ptr %326, i32 0, i32 5
  %328 = load i32, ptr %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %351

330:                                              ; preds = %303
  %331 = load ptr, ptr %3, align 8
  %332 = getelementptr inbounds %struct.DState, ptr %331, i32 0, i32 6
  %333 = load i32, ptr %332, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4
  %337 = load ptr, ptr %3, align 8
  %338 = getelementptr inbounds %struct.DState, ptr %337, i32 0, i32 5
  store i32 %336, ptr %338, align 8
  %339 = load ptr, ptr %3, align 8
  %340 = getelementptr inbounds %struct.DState, ptr %339, i32 0, i32 6
  %341 = load i32, ptr %340, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, ptr %340, align 4
  %343 = load ptr, ptr %3, align 8
  %344 = getelementptr inbounds %struct.DState, ptr %343, i32 0, i32 6
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, 512
  br i1 %346, label %347, label %350

347:                                              ; preds = %330
  %348 = load ptr, ptr %3, align 8
  %349 = getelementptr inbounds %struct.DState, ptr %348, i32 0, i32 6
  store i32 0, ptr %349, align 4
  br label %350

350:                                              ; preds = %347, %330
  br label %351

351:                                              ; preds = %350, %303
  %352 = load ptr, ptr %3, align 8
  %353 = getelementptr inbounds %struct.DState, ptr %352, i32 0, i32 5
  %354 = load i32, ptr %353, align 8
  %355 = add nsw i32 %354, -1
  store i32 %355, ptr %353, align 8
  %356 = load ptr, ptr %3, align 8
  %357 = getelementptr inbounds %struct.DState, ptr %356, i32 0, i32 5
  %358 = load i32, ptr %357, align 8
  %359 = icmp eq i32 %358, 1
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i32 1, i32 0
  %362 = load i8, ptr %4, align 1
  %363 = zext i8 %362 to i32
  %364 = xor i32 %363, %361
  %365 = trunc i32 %364 to i8
  store i8 %365, ptr %4, align 1
  %366 = load ptr, ptr %3, align 8
  %367 = getelementptr inbounds %struct.DState, ptr %366, i32 0, i32 17
  %368 = load i32, ptr %367, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, ptr %367, align 4
  %370 = load ptr, ptr %3, align 8
  %371 = getelementptr inbounds %struct.DState, ptr %370, i32 0, i32 17
  %372 = load i32, ptr %371, align 4
  %373 = load ptr, ptr %3, align 8
  %374 = getelementptr inbounds %struct.DState, ptr %373, i32 0, i32 51
  %375 = load i32, ptr %374, align 8
  %376 = add nsw i32 %375, 1
  %377 = icmp eq i32 %372, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %351
  br label %22

379:                                              ; preds = %351
  %380 = load i8, ptr %4, align 1
  %381 = zext i8 %380 to i32
  %382 = load ptr, ptr %3, align 8
  %383 = getelementptr inbounds %struct.DState, ptr %382, i32 0, i32 15
  %384 = load i32, ptr %383, align 8
  %385 = icmp ne i32 %381, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %379
  %387 = load i8, ptr %4, align 1
  %388 = zext i8 %387 to i32
  %389 = load ptr, ptr %3, align 8
  %390 = getelementptr inbounds %struct.DState, ptr %389, i32 0, i32 15
  store i32 %388, ptr %390, align 8
  br label %22

391:                                              ; preds = %379
  %392 = load ptr, ptr %3, align 8
  %393 = getelementptr inbounds %struct.DState, ptr %392, i32 0, i32 20
  %394 = load ptr, ptr %393, align 8
  %395 = load ptr, ptr %3, align 8
  %396 = getelementptr inbounds %struct.DState, ptr %395, i32 0, i32 14
  %397 = load i32, ptr %396, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i32, ptr %394, i64 %398
  %400 = load i32, ptr %399, align 4
  %401 = load ptr, ptr %3, align 8
  %402 = getelementptr inbounds %struct.DState, ptr %401, i32 0, i32 14
  store i32 %400, ptr %402, align 4
  %403 = load ptr, ptr %3, align 8
  %404 = getelementptr inbounds %struct.DState, ptr %403, i32 0, i32 14
  %405 = load i32, ptr %404, align 4
  %406 = and i32 %405, 255
  %407 = trunc i32 %406 to i8
  store i8 %407, ptr %4, align 1
  %408 = load ptr, ptr %3, align 8
  %409 = getelementptr inbounds %struct.DState, ptr %408, i32 0, i32 14
  %410 = load i32, ptr %409, align 4
  %411 = lshr i32 %410, 8
  store i32 %411, ptr %409, align 4
  %412 = load ptr, ptr %3, align 8
  %413 = getelementptr inbounds %struct.DState, ptr %412, i32 0, i32 5
  %414 = load i32, ptr %413, align 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %437

416:                                              ; preds = %391
  %417 = load ptr, ptr %3, align 8
  %418 = getelementptr inbounds %struct.DState, ptr %417, i32 0, i32 6
  %419 = load i32, ptr %418, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %420
  %422 = load i32, ptr %421, align 4
  %423 = load ptr, ptr %3, align 8
  %424 = getelementptr inbounds %struct.DState, ptr %423, i32 0, i32 5
  store i32 %422, ptr %424, align 8
  %425 = load ptr, ptr %3, align 8
  %426 = getelementptr inbounds %struct.DState, ptr %425, i32 0, i32 6
  %427 = load i32, ptr %426, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, ptr %426, align 4
  %429 = load ptr, ptr %3, align 8
  %430 = getelementptr inbounds %struct.DState, ptr %429, i32 0, i32 6
  %431 = load i32, ptr %430, align 4
  %432 = icmp eq i32 %431, 512
  br i1 %432, label %433, label %436

433:                                              ; preds = %416
  %434 = load ptr, ptr %3, align 8
  %435 = getelementptr inbounds %struct.DState, ptr %434, i32 0, i32 6
  store i32 0, ptr %435, align 4
  br label %436

436:                                              ; preds = %433, %416
  br label %437

437:                                              ; preds = %436, %391
  %438 = load ptr, ptr %3, align 8
  %439 = getelementptr inbounds %struct.DState, ptr %438, i32 0, i32 5
  %440 = load i32, ptr %439, align 8
  %441 = add nsw i32 %440, -1
  store i32 %441, ptr %439, align 8
  %442 = load ptr, ptr %3, align 8
  %443 = getelementptr inbounds %struct.DState, ptr %442, i32 0, i32 5
  %444 = load i32, ptr %443, align 8
  %445 = icmp eq i32 %444, 1
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i32 1, i32 0
  %448 = load i8, ptr %4, align 1
  %449 = zext i8 %448 to i32
  %450 = xor i32 %449, %447
  %451 = trunc i32 %450 to i8
  store i8 %451, ptr %4, align 1
  %452 = load ptr, ptr %3, align 8
  %453 = getelementptr inbounds %struct.DState, ptr %452, i32 0, i32 17
  %454 = load i32, ptr %453, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, ptr %453, align 4
  %456 = load i8, ptr %4, align 1
  %457 = zext i8 %456 to i32
  %458 = add nsw i32 %457, 4
  %459 = load ptr, ptr %3, align 8
  %460 = getelementptr inbounds %struct.DState, ptr %459, i32 0, i32 3
  store i32 %458, ptr %460, align 8
  %461 = load ptr, ptr %3, align 8
  %462 = getelementptr inbounds %struct.DState, ptr %461, i32 0, i32 20
  %463 = load ptr, ptr %462, align 8
  %464 = load ptr, ptr %3, align 8
  %465 = getelementptr inbounds %struct.DState, ptr %464, i32 0, i32 14
  %466 = load i32, ptr %465, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds i32, ptr %463, i64 %467
  %469 = load i32, ptr %468, align 4
  %470 = load ptr, ptr %3, align 8
  %471 = getelementptr inbounds %struct.DState, ptr %470, i32 0, i32 14
  store i32 %469, ptr %471, align 4
  %472 = load ptr, ptr %3, align 8
  %473 = getelementptr inbounds %struct.DState, ptr %472, i32 0, i32 14
  %474 = load i32, ptr %473, align 4
  %475 = and i32 %474, 255
  %476 = trunc i32 %475 to i8
  %477 = zext i8 %476 to i32
  %478 = load ptr, ptr %3, align 8
  %479 = getelementptr inbounds %struct.DState, ptr %478, i32 0, i32 15
  store i32 %477, ptr %479, align 8
  %480 = load ptr, ptr %3, align 8
  %481 = getelementptr inbounds %struct.DState, ptr %480, i32 0, i32 14
  %482 = load i32, ptr %481, align 4
  %483 = lshr i32 %482, 8
  store i32 %483, ptr %481, align 4
  %484 = load ptr, ptr %3, align 8
  %485 = getelementptr inbounds %struct.DState, ptr %484, i32 0, i32 5
  %486 = load i32, ptr %485, align 8
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %509

488:                                              ; preds = %437
  %489 = load ptr, ptr %3, align 8
  %490 = getelementptr inbounds %struct.DState, ptr %489, i32 0, i32 6
  %491 = load i32, ptr %490, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4
  %495 = load ptr, ptr %3, align 8
  %496 = getelementptr inbounds %struct.DState, ptr %495, i32 0, i32 5
  store i32 %494, ptr %496, align 8
  %497 = load ptr, ptr %3, align 8
  %498 = getelementptr inbounds %struct.DState, ptr %497, i32 0, i32 6
  %499 = load i32, ptr %498, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, ptr %498, align 4
  %501 = load ptr, ptr %3, align 8
  %502 = getelementptr inbounds %struct.DState, ptr %501, i32 0, i32 6
  %503 = load i32, ptr %502, align 4
  %504 = icmp eq i32 %503, 512
  br i1 %504, label %505, label %508

505:                                              ; preds = %488
  %506 = load ptr, ptr %3, align 8
  %507 = getelementptr inbounds %struct.DState, ptr %506, i32 0, i32 6
  store i32 0, ptr %507, align 4
  br label %508

508:                                              ; preds = %505, %488
  br label %509

509:                                              ; preds = %508, %437
  %510 = load ptr, ptr %3, align 8
  %511 = getelementptr inbounds %struct.DState, ptr %510, i32 0, i32 5
  %512 = load i32, ptr %511, align 8
  %513 = add nsw i32 %512, -1
  store i32 %513, ptr %511, align 8
  %514 = load ptr, ptr %3, align 8
  %515 = getelementptr inbounds %struct.DState, ptr %514, i32 0, i32 5
  %516 = load i32, ptr %515, align 8
  %517 = icmp eq i32 %516, 1
  %518 = zext i1 %517 to i64
  %519 = select i1 %517, i32 1, i32 0
  %520 = load ptr, ptr %3, align 8
  %521 = getelementptr inbounds %struct.DState, ptr %520, i32 0, i32 15
  %522 = load i32, ptr %521, align 8
  %523 = xor i32 %522, %519
  store i32 %523, ptr %521, align 8
  %524 = load ptr, ptr %3, align 8
  %525 = getelementptr inbounds %struct.DState, ptr %524, i32 0, i32 17
  %526 = load i32, ptr %525, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, ptr %525, align 4
  br label %22

528:                                              ; preds = %1
  %529 = load ptr, ptr %3, align 8
  %530 = getelementptr inbounds %struct.DState, ptr %529, i32 0, i32 25
  %531 = load i32, ptr %530, align 8
  store i32 %531, ptr %5, align 4
  %532 = load ptr, ptr %3, align 8
  %533 = getelementptr inbounds %struct.DState, ptr %532, i32 0, i32 2
  %534 = load i8, ptr %533, align 4
  store i8 %534, ptr %6, align 1
  %535 = load ptr, ptr %3, align 8
  %536 = getelementptr inbounds %struct.DState, ptr %535, i32 0, i32 3
  %537 = load i32, ptr %536, align 8
  store i32 %537, ptr %7, align 4
  %538 = load ptr, ptr %3, align 8
  %539 = getelementptr inbounds %struct.DState, ptr %538, i32 0, i32 17
  %540 = load i32, ptr %539, align 4
  store i32 %540, ptr %8, align 4
  %541 = load ptr, ptr %3, align 8
  %542 = getelementptr inbounds %struct.DState, ptr %541, i32 0, i32 15
  %543 = load i32, ptr %542, align 8
  store i32 %543, ptr %9, align 4
  %544 = load ptr, ptr %3, align 8
  %545 = getelementptr inbounds %struct.DState, ptr %544, i32 0, i32 20
  %546 = load ptr, ptr %545, align 8
  store ptr %546, ptr %10, align 8
  %547 = load ptr, ptr %3, align 8
  %548 = getelementptr inbounds %struct.DState, ptr %547, i32 0, i32 14
  %549 = load i32, ptr %548, align 4
  store i32 %549, ptr %11, align 4
  %550 = load ptr, ptr %3, align 8
  %551 = getelementptr inbounds %struct.DState, ptr %550, i32 0, i32 0
  %552 = load ptr, ptr %551, align 8
  %553 = getelementptr inbounds %struct.bz_stream, ptr %552, i32 0, i32 4
  %554 = load ptr, ptr %553, align 8
  store ptr %554, ptr %12, align 8
  %555 = load ptr, ptr %3, align 8
  %556 = getelementptr inbounds %struct.DState, ptr %555, i32 0, i32 0
  %557 = load ptr, ptr %556, align 8
  %558 = getelementptr inbounds %struct.bz_stream, ptr %557, i32 0, i32 5
  %559 = load i32, ptr %558, align 8
  store i32 %559, ptr %13, align 4
  %560 = load i32, ptr %13, align 4
  store i32 %560, ptr %14, align 4
  %561 = load ptr, ptr %3, align 8
  %562 = getelementptr inbounds %struct.DState, ptr %561, i32 0, i32 51
  %563 = load i32, ptr %562, align 8
  %564 = add nsw i32 %563, 1
  store i32 %564, ptr %15, align 4
  br label %565

565:                                              ; preds = %528, %673, %679, %698, %704, %707
  %566 = load i32, ptr %7, align 4
  %567 = icmp sgt i32 %566, 0
  br i1 %567, label %568, label %620

568:                                              ; preds = %565
  br label %569

569:                                              ; preds = %568, %577
  %570 = load i32, ptr %13, align 4
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %573

572:                                              ; preds = %569
  br label %736

573:                                              ; preds = %569
  %574 = load i32, ptr %7, align 4
  %575 = icmp eq i32 %574, 1
  br i1 %575, label %576, label %577

576:                                              ; preds = %573
  br label %597

577:                                              ; preds = %573
  %578 = load i8, ptr %6, align 1
  %579 = load ptr, ptr %12, align 8
  store i8 %578, ptr %579, align 1
  %580 = load i32, ptr %5, align 4
  %581 = shl i32 %580, 8
  %582 = load i32, ptr %5, align 4
  %583 = lshr i32 %582, 24
  %584 = load i8, ptr %6, align 1
  %585 = zext i8 %584 to i32
  %586 = xor i32 %583, %585
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %587
  %589 = load i32, ptr %588, align 4
  %590 = xor i32 %581, %589
  store i32 %590, ptr %5, align 4
  %591 = load i32, ptr %7, align 4
  %592 = add nsw i32 %591, -1
  store i32 %592, ptr %7, align 4
  %593 = load ptr, ptr %12, align 8
  %594 = getelementptr inbounds i8, ptr %593, i32 1
  store ptr %594, ptr %12, align 8
  %595 = load i32, ptr %13, align 4
  %596 = add i32 %595, -1
  store i32 %596, ptr %13, align 4
  br label %569

597:                                              ; preds = %576
  br label %598

598:                                              ; preds = %656, %649, %597
  %599 = load i32, ptr %13, align 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %598
  store i32 1, ptr %7, align 4
  br label %736

602:                                              ; preds = %598
  %603 = load i8, ptr %6, align 1
  %604 = load ptr, ptr %12, align 8
  store i8 %603, ptr %604, align 1
  %605 = load i32, ptr %5, align 4
  %606 = shl i32 %605, 8
  %607 = load i32, ptr %5, align 4
  %608 = lshr i32 %607, 24
  %609 = load i8, ptr %6, align 1
  %610 = zext i8 %609 to i32
  %611 = xor i32 %608, %610
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %612
  %614 = load i32, ptr %613, align 4
  %615 = xor i32 %606, %614
  store i32 %615, ptr %5, align 4
  %616 = load ptr, ptr %12, align 8
  %617 = getelementptr inbounds i8, ptr %616, i32 1
  store ptr %617, ptr %12, align 8
  %618 = load i32, ptr %13, align 4
  %619 = add i32 %618, -1
  store i32 %619, ptr %13, align 4
  br label %620

620:                                              ; preds = %602, %565
  %621 = load i32, ptr %8, align 4
  %622 = load i32, ptr %15, align 4
  %623 = icmp sgt i32 %621, %622
  br i1 %623, label %624, label %625

624:                                              ; preds = %620
  store i8 1, ptr %2, align 1
  br label %798

625:                                              ; preds = %620
  %626 = load i32, ptr %8, align 4
  %627 = load i32, ptr %15, align 4
  %628 = icmp eq i32 %626, %627
  br i1 %628, label %629, label %630

629:                                              ; preds = %625
  store i32 0, ptr %7, align 4
  br label %736

630:                                              ; preds = %625
  %631 = load i32, ptr %9, align 4
  %632 = trunc i32 %631 to i8
  store i8 %632, ptr %6, align 1
  %633 = load ptr, ptr %10, align 8
  %634 = load i32, ptr %11, align 4
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds i32, ptr %633, i64 %635
  %637 = load i32, ptr %636, align 4
  store i32 %637, ptr %11, align 4
  %638 = load i32, ptr %11, align 4
  %639 = and i32 %638, 255
  %640 = trunc i32 %639 to i8
  store i8 %640, ptr %4, align 1
  %641 = load i32, ptr %11, align 4
  %642 = lshr i32 %641, 8
  store i32 %642, ptr %11, align 4
  %643 = load i32, ptr %8, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, ptr %8, align 4
  %645 = load i8, ptr %4, align 1
  %646 = zext i8 %645 to i32
  %647 = load i32, ptr %9, align 4
  %648 = icmp ne i32 %646, %647
  br i1 %648, label %649, label %652

649:                                              ; preds = %630
  %650 = load i8, ptr %4, align 1
  %651 = zext i8 %650 to i32
  store i32 %651, ptr %9, align 4
  br label %598

652:                                              ; preds = %630
  %653 = load i32, ptr %8, align 4
  %654 = load i32, ptr %15, align 4
  %655 = icmp eq i32 %653, %654
  br i1 %655, label %656, label %657

656:                                              ; preds = %652
  br label %598

657:                                              ; preds = %652
  store i32 2, ptr %7, align 4
  %658 = load ptr, ptr %10, align 8
  %659 = load i32, ptr %11, align 4
  %660 = zext i32 %659 to i64
  %661 = getelementptr inbounds i32, ptr %658, i64 %660
  %662 = load i32, ptr %661, align 4
  store i32 %662, ptr %11, align 4
  %663 = load i32, ptr %11, align 4
  %664 = and i32 %663, 255
  %665 = trunc i32 %664 to i8
  store i8 %665, ptr %4, align 1
  %666 = load i32, ptr %11, align 4
  %667 = lshr i32 %666, 8
  store i32 %667, ptr %11, align 4
  %668 = load i32, ptr %8, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, ptr %8, align 4
  %670 = load i32, ptr %8, align 4
  %671 = load i32, ptr %15, align 4
  %672 = icmp eq i32 %670, %671
  br i1 %672, label %673, label %674

673:                                              ; preds = %657
  br label %565

674:                                              ; preds = %657
  %675 = load i8, ptr %4, align 1
  %676 = zext i8 %675 to i32
  %677 = load i32, ptr %9, align 4
  %678 = icmp ne i32 %676, %677
  br i1 %678, label %679, label %682

679:                                              ; preds = %674
  %680 = load i8, ptr %4, align 1
  %681 = zext i8 %680 to i32
  store i32 %681, ptr %9, align 4
  br label %565

682:                                              ; preds = %674
  store i32 3, ptr %7, align 4
  %683 = load ptr, ptr %10, align 8
  %684 = load i32, ptr %11, align 4
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds i32, ptr %683, i64 %685
  %687 = load i32, ptr %686, align 4
  store i32 %687, ptr %11, align 4
  %688 = load i32, ptr %11, align 4
  %689 = and i32 %688, 255
  %690 = trunc i32 %689 to i8
  store i8 %690, ptr %4, align 1
  %691 = load i32, ptr %11, align 4
  %692 = lshr i32 %691, 8
  store i32 %692, ptr %11, align 4
  %693 = load i32, ptr %8, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, ptr %8, align 4
  %695 = load i32, ptr %8, align 4
  %696 = load i32, ptr %15, align 4
  %697 = icmp eq i32 %695, %696
  br i1 %697, label %698, label %699

698:                                              ; preds = %682
  br label %565

699:                                              ; preds = %682
  %700 = load i8, ptr %4, align 1
  %701 = zext i8 %700 to i32
  %702 = load i32, ptr %9, align 4
  %703 = icmp ne i32 %701, %702
  br i1 %703, label %704, label %707

704:                                              ; preds = %699
  %705 = load i8, ptr %4, align 1
  %706 = zext i8 %705 to i32
  store i32 %706, ptr %9, align 4
  br label %565

707:                                              ; preds = %699
  %708 = load ptr, ptr %10, align 8
  %709 = load i32, ptr %11, align 4
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds i32, ptr %708, i64 %710
  %712 = load i32, ptr %711, align 4
  store i32 %712, ptr %11, align 4
  %713 = load i32, ptr %11, align 4
  %714 = and i32 %713, 255
  %715 = trunc i32 %714 to i8
  store i8 %715, ptr %4, align 1
  %716 = load i32, ptr %11, align 4
  %717 = lshr i32 %716, 8
  store i32 %717, ptr %11, align 4
  %718 = load i32, ptr %8, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, ptr %8, align 4
  %720 = load i8, ptr %4, align 1
  %721 = zext i8 %720 to i32
  %722 = add nsw i32 %721, 4
  store i32 %722, ptr %7, align 4
  %723 = load ptr, ptr %10, align 8
  %724 = load i32, ptr %11, align 4
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds i32, ptr %723, i64 %725
  %727 = load i32, ptr %726, align 4
  store i32 %727, ptr %11, align 4
  %728 = load i32, ptr %11, align 4
  %729 = and i32 %728, 255
  %730 = trunc i32 %729 to i8
  %731 = zext i8 %730 to i32
  store i32 %731, ptr %9, align 4
  %732 = load i32, ptr %11, align 4
  %733 = lshr i32 %732, 8
  store i32 %733, ptr %11, align 4
  %734 = load i32, ptr %8, align 4
  %735 = add nsw i32 %734, 1
  store i32 %735, ptr %8, align 4
  br label %565

736:                                              ; preds = %629, %601, %572
  %737 = load ptr, ptr %3, align 8
  %738 = getelementptr inbounds %struct.DState, ptr %737, i32 0, i32 0
  %739 = load ptr, ptr %738, align 8
  %740 = getelementptr inbounds %struct.bz_stream, ptr %739, i32 0, i32 6
  %741 = load i32, ptr %740, align 4
  store i32 %741, ptr %16, align 4
  %742 = load i32, ptr %14, align 4
  %743 = load i32, ptr %13, align 4
  %744 = sub i32 %742, %743
  %745 = load ptr, ptr %3, align 8
  %746 = getelementptr inbounds %struct.DState, ptr %745, i32 0, i32 0
  %747 = load ptr, ptr %746, align 8
  %748 = getelementptr inbounds %struct.bz_stream, ptr %747, i32 0, i32 6
  %749 = load i32, ptr %748, align 4
  %750 = add i32 %749, %744
  store i32 %750, ptr %748, align 4
  %751 = load ptr, ptr %3, align 8
  %752 = getelementptr inbounds %struct.DState, ptr %751, i32 0, i32 0
  %753 = load ptr, ptr %752, align 8
  %754 = getelementptr inbounds %struct.bz_stream, ptr %753, i32 0, i32 6
  %755 = load i32, ptr %754, align 4
  %756 = load i32, ptr %16, align 4
  %757 = icmp ult i32 %755, %756
  br i1 %757, label %758, label %765

758:                                              ; preds = %736
  %759 = load ptr, ptr %3, align 8
  %760 = getelementptr inbounds %struct.DState, ptr %759, i32 0, i32 0
  %761 = load ptr, ptr %760, align 8
  %762 = getelementptr inbounds %struct.bz_stream, ptr %761, i32 0, i32 7
  %763 = load i32, ptr %762, align 8
  %764 = add i32 %763, 1
  store i32 %764, ptr %762, align 8
  br label %765

765:                                              ; preds = %758, %736
  %766 = load i32, ptr %5, align 4
  %767 = load ptr, ptr %3, align 8
  %768 = getelementptr inbounds %struct.DState, ptr %767, i32 0, i32 25
  store i32 %766, ptr %768, align 8
  %769 = load i8, ptr %6, align 1
  %770 = load ptr, ptr %3, align 8
  %771 = getelementptr inbounds %struct.DState, ptr %770, i32 0, i32 2
  store i8 %769, ptr %771, align 4
  %772 = load i32, ptr %7, align 4
  %773 = load ptr, ptr %3, align 8
  %774 = getelementptr inbounds %struct.DState, ptr %773, i32 0, i32 3
  store i32 %772, ptr %774, align 8
  %775 = load i32, ptr %8, align 4
  %776 = load ptr, ptr %3, align 8
  %777 = getelementptr inbounds %struct.DState, ptr %776, i32 0, i32 17
  store i32 %775, ptr %777, align 4
  %778 = load i32, ptr %9, align 4
  %779 = load ptr, ptr %3, align 8
  %780 = getelementptr inbounds %struct.DState, ptr %779, i32 0, i32 15
  store i32 %778, ptr %780, align 8
  %781 = load ptr, ptr %10, align 8
  %782 = load ptr, ptr %3, align 8
  %783 = getelementptr inbounds %struct.DState, ptr %782, i32 0, i32 20
  store ptr %781, ptr %783, align 8
  %784 = load i32, ptr %11, align 4
  %785 = load ptr, ptr %3, align 8
  %786 = getelementptr inbounds %struct.DState, ptr %785, i32 0, i32 14
  store i32 %784, ptr %786, align 4
  %787 = load ptr, ptr %12, align 8
  %788 = load ptr, ptr %3, align 8
  %789 = getelementptr inbounds %struct.DState, ptr %788, i32 0, i32 0
  %790 = load ptr, ptr %789, align 8
  %791 = getelementptr inbounds %struct.bz_stream, ptr %790, i32 0, i32 4
  store ptr %787, ptr %791, align 8
  %792 = load i32, ptr %13, align 4
  %793 = load ptr, ptr %3, align 8
  %794 = getelementptr inbounds %struct.DState, ptr %793, i32 0, i32 0
  %795 = load ptr, ptr %794, align 8
  %796 = getelementptr inbounds %struct.bz_stream, ptr %795, i32 0, i32 5
  store i32 %792, ptr %796, align 8
  br label %797

797:                                              ; preds = %765
  store i8 0, ptr %2, align 1
  br label %798

798:                                              ; preds = %797, %624, %120, %110, %30
  %799 = load i8, ptr %2, align 1
  ret i8 %799
}

declare i32 @BZ2_decompress(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzDecompressEnd(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %79

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.bz_stream, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 -2, ptr %2, align 4
  br label %79

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.DState, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = icmp ne ptr %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -2, ptr %2, align 4
  br label %79

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.DState, ptr %23, i32 0, i32 20
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.bz_stream, ptr %28, i32 0, i32 10
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.bz_stream, ptr %31, i32 0, i32 11
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.DState, ptr %34, i32 0, i32 20
  %36 = load ptr, ptr %35, align 8
  call void %30(ptr noundef %33, ptr noundef %36)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.DState, ptr %38, i32 0, i32 21
  %40 = load ptr, ptr %39, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.bz_stream, ptr %43, i32 0, i32 10
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.bz_stream, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.DState, ptr %49, i32 0, i32 21
  %51 = load ptr, ptr %50, align 8
  call void %45(ptr noundef %48, ptr noundef %51)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.DState, ptr %53, i32 0, i32 22
  %55 = load ptr, ptr %54, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.bz_stream, ptr %58, i32 0, i32 10
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct.bz_stream, ptr %61, i32 0, i32 11
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.DState, ptr %64, i32 0, i32 22
  %66 = load ptr, ptr %65, align 8
  call void %60(ptr noundef %63, ptr noundef %66)
  br label %67

67:                                               ; preds = %57, %52
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.bz_stream, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct.bz_stream, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %72, align 8
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.bz_stream, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8
  call void %70(ptr noundef %73, ptr noundef %76)
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds %struct.bz_stream, ptr %77, i32 0, i32 8
  store ptr null, ptr %78, align 8
  store i32 0, ptr %2, align 4
  br label %79

79:                                               ; preds = %67, %21, %14, %7
  %80 = load i32, ptr %2, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @BZ2_bzWriteOpen(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  store ptr null, ptr %13, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = load ptr, ptr %13, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %13, align 8
  %23 = getelementptr inbounds %struct.bzFile, ptr %22, i32 0, i32 5
  store i32 0, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %8, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %9, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %9, align 4
  %32 = icmp sgt i32 %31, 9
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %11, align 4
  %38 = icmp sgt i32 %37, 250
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %10, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %57

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %24
  %46 = load ptr, ptr %7, align 8
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 8
  store i32 -2, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load ptr, ptr %13, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr %13, align 8
  %55 = getelementptr inbounds %struct.bzFile, ptr %54, i32 0, i32 5
  store i32 -2, ptr %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  store ptr null, ptr %6, align 8
  br label %153

57:                                               ; preds = %42
  %58 = load ptr, ptr %8, align 8
  %59 = call i32 @ferror(ptr noundef %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load ptr, ptr %7, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load ptr, ptr %7, align 8
  store i32 -6, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = load ptr, ptr %13, align 8
  %68 = icmp ne ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds %struct.bzFile, ptr %70, i32 0, i32 5
  store i32 -6, ptr %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  store ptr null, ptr %6, align 8
  br label %153

73:                                               ; preds = %57
  %74 = call ptr @malloc(i64 noundef 5104) #9
  store ptr %74, ptr %13, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 8
  %79 = icmp ne ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load ptr, ptr %7, align 8
  store i32 -3, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load ptr, ptr %13, align 8
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds %struct.bzFile, ptr %86, i32 0, i32 5
  store i32 -3, ptr %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  store ptr null, ptr %6, align 8
  br label %153

89:                                               ; preds = %73
  %90 = load ptr, ptr %7, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load ptr, ptr %7, align 8
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load ptr, ptr %13, align 8
  %96 = icmp ne ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds %struct.bzFile, ptr %98, i32 0, i32 5
  store i32 0, ptr %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load ptr, ptr %13, align 8
  %102 = getelementptr inbounds %struct.bzFile, ptr %101, i32 0, i32 6
  store i8 0, ptr %102, align 4
  %103 = load ptr, ptr %13, align 8
  %104 = getelementptr inbounds %struct.bzFile, ptr %103, i32 0, i32 2
  store i32 0, ptr %104, align 8
  %105 = load ptr, ptr %8, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = getelementptr inbounds %struct.bzFile, ptr %106, i32 0, i32 0
  store ptr %105, ptr %107, align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds %struct.bzFile, ptr %108, i32 0, i32 3
  store i8 1, ptr %109, align 4
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds %struct.bzFile, ptr %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.bz_stream, ptr %111, i32 0, i32 9
  store ptr null, ptr %112, align 8
  %113 = load ptr, ptr %13, align 8
  %114 = getelementptr inbounds %struct.bzFile, ptr %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.bz_stream, ptr %114, i32 0, i32 10
  store ptr null, ptr %115, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds %struct.bzFile, ptr %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.bz_stream, ptr %117, i32 0, i32 11
  store ptr null, ptr %118, align 8
  %119 = load i32, ptr %11, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %100
  store i32 30, ptr %11, align 4
  br label %122

122:                                              ; preds = %121, %100
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds %struct.bzFile, ptr %123, i32 0, i32 4
  %125 = load i32, ptr %9, align 4
  %126 = load i32, ptr %10, align 4
  %127 = load i32, ptr %11, align 4
  %128 = call i32 @BZ2_bzCompressInit(ptr noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %127)
  store i32 %128, ptr %12, align 4
  %129 = load i32, ptr %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %122
  %132 = load ptr, ptr %7, align 8
  %133 = icmp ne ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, ptr %12, align 4
  %136 = load ptr, ptr %7, align 8
  store i32 %135, ptr %136, align 4
  br label %137

137:                                              ; preds = %134, %131
  %138 = load ptr, ptr %13, align 8
  %139 = icmp ne ptr %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, ptr %12, align 4
  %142 = load ptr, ptr %13, align 8
  %143 = getelementptr inbounds %struct.bzFile, ptr %142, i32 0, i32 5
  store i32 %141, ptr %143, align 8
  br label %144

144:                                              ; preds = %140, %137
  %145 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %145)
  store ptr null, ptr %6, align 8
  br label %153

146:                                              ; preds = %122
  %147 = load ptr, ptr %13, align 8
  %148 = getelementptr inbounds %struct.bzFile, ptr %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.bz_stream, ptr %148, i32 0, i32 1
  store i32 0, ptr %149, align 8
  %150 = load ptr, ptr %13, align 8
  %151 = getelementptr inbounds %struct.bzFile, ptr %150, i32 0, i32 6
  store i8 1, ptr %151, align 4
  %152 = load ptr, ptr %13, align 8
  store ptr %152, ptr %6, align 8
  br label %153

153:                                              ; preds = %146, %144, %88, %72, %56
  %154 = load ptr, ptr %6, align 8
  ret ptr %154
}

declare i32 @ferror(ptr noundef) #3

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #4

declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @BZ2_bzWrite(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  store ptr %13, ptr %12, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load ptr, ptr %5, align 8
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %4
  %19 = load ptr, ptr %12, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %12, align 8
  %23 = getelementptr inbounds %struct.bzFile, ptr %22, i32 0, i32 5
  store i32 0, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %12, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %27, %24
  %34 = load ptr, ptr %5, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8
  store i32 -2, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load ptr, ptr %12, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr %12, align 8
  %43 = getelementptr inbounds %struct.bzFile, ptr %42, i32 0, i32 5
  store i32 -2, ptr %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %196

45:                                               ; preds = %30
  %46 = load ptr, ptr %12, align 8
  %47 = getelementptr inbounds %struct.bzFile, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 4
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 8
  store i32 -1, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load ptr, ptr %12, align 8
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds %struct.bzFile, ptr %59, i32 0, i32 5
  store i32 -1, ptr %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %196

62:                                               ; preds = %45
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds %struct.bzFile, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 @ferror(ptr noundef %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load ptr, ptr %5, align 8
  %70 = icmp ne ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr %5, align 8
  store i32 -6, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load ptr, ptr %12, align 8
  %75 = icmp ne ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds %struct.bzFile, ptr %77, i32 0, i32 5
  store i32 -6, ptr %78, align 8
  br label %79

79:                                               ; preds = %76, %73
  br label %196

80:                                               ; preds = %62
  %81 = load i32, ptr %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load ptr, ptr %5, align 8
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load ptr, ptr %5, align 8
  store i32 0, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load ptr, ptr %12, align 8
  %90 = icmp ne ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds %struct.bzFile, ptr %92, i32 0, i32 5
  store i32 0, ptr %93, align 8
  br label %94

94:                                               ; preds = %91, %88
  br label %196

95:                                               ; preds = %80
  %96 = load i32, ptr %8, align 4
  %97 = load ptr, ptr %12, align 8
  %98 = getelementptr inbounds %struct.bzFile, ptr %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.bz_stream, ptr %98, i32 0, i32 1
  store i32 %96, ptr %99, align 8
  %100 = load ptr, ptr %7, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = getelementptr inbounds %struct.bzFile, ptr %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.bz_stream, ptr %102, i32 0, i32 0
  store ptr %100, ptr %103, align 8
  br label %104

104:                                              ; preds = %95, %195
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds %struct.bzFile, ptr %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.bz_stream, ptr %106, i32 0, i32 5
  store i32 5000, ptr %107, align 8
  %108 = load ptr, ptr %12, align 8
  %109 = getelementptr inbounds %struct.bzFile, ptr %108, i32 0, i32 1
  %110 = getelementptr inbounds [5000 x i8], ptr %109, i64 0, i64 0
  %111 = load ptr, ptr %12, align 8
  %112 = getelementptr inbounds %struct.bzFile, ptr %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.bz_stream, ptr %112, i32 0, i32 4
  store ptr %110, ptr %113, align 8
  %114 = load ptr, ptr %12, align 8
  %115 = getelementptr inbounds %struct.bzFile, ptr %114, i32 0, i32 4
  %116 = call i32 @BZ2_bzCompress(ptr noundef %115, i32 noundef 0)
  store i32 %116, ptr %11, align 4
  %117 = load i32, ptr %11, align 4
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %133

119:                                              ; preds = %104
  %120 = load ptr, ptr %5, align 8
  %121 = icmp ne ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, ptr %11, align 4
  %124 = load ptr, ptr %5, align 8
  store i32 %123, ptr %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load ptr, ptr %12, align 8
  %127 = icmp ne ptr %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, ptr %11, align 4
  %130 = load ptr, ptr %12, align 8
  %131 = getelementptr inbounds %struct.bzFile, ptr %130, i32 0, i32 5
  store i32 %129, ptr %131, align 8
  br label %132

132:                                              ; preds = %128, %125
  br label %196

133:                                              ; preds = %104
  %134 = load ptr, ptr %12, align 8
  %135 = getelementptr inbounds %struct.bzFile, ptr %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.bz_stream, ptr %135, i32 0, i32 5
  %137 = load i32, ptr %136, align 8
  %138 = icmp ult i32 %137, 5000
  br i1 %138, label %139, label %177

139:                                              ; preds = %133
  %140 = load ptr, ptr %12, align 8
  %141 = getelementptr inbounds %struct.bzFile, ptr %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.bz_stream, ptr %141, i32 0, i32 5
  %143 = load i32, ptr %142, align 8
  %144 = sub i32 5000, %143
  store i32 %144, ptr %9, align 4
  %145 = load ptr, ptr %12, align 8
  %146 = getelementptr inbounds %struct.bzFile, ptr %145, i32 0, i32 1
  %147 = getelementptr inbounds [5000 x i8], ptr %146, i64 0, i64 0
  %148 = load i32, ptr %9, align 4
  %149 = sext i32 %148 to i64
  %150 = load ptr, ptr %12, align 8
  %151 = getelementptr inbounds %struct.bzFile, ptr %150, i32 0, i32 0
  %152 = load ptr, ptr %151, align 8
  %153 = call i64 @"\01_fwrite"(ptr noundef %147, i64 noundef 1, i64 noundef %149, ptr noundef %152)
  %154 = trunc i64 %153 to i32
  store i32 %154, ptr %10, align 4
  %155 = load i32, ptr %9, align 4
  %156 = load i32, ptr %10, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %139
  %159 = load ptr, ptr %12, align 8
  %160 = getelementptr inbounds %struct.bzFile, ptr %159, i32 0, i32 0
  %161 = load ptr, ptr %160, align 8
  %162 = call i32 @ferror(ptr noundef %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %158, %139
  %165 = load ptr, ptr %5, align 8
  %166 = icmp ne ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load ptr, ptr %5, align 8
  store i32 -6, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %164
  %170 = load ptr, ptr %12, align 8
  %171 = icmp ne ptr %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load ptr, ptr %12, align 8
  %174 = getelementptr inbounds %struct.bzFile, ptr %173, i32 0, i32 5
  store i32 -6, ptr %174, align 8
  br label %175

175:                                              ; preds = %172, %169
  br label %196

176:                                              ; preds = %158
  br label %177

177:                                              ; preds = %176, %133
  %178 = load ptr, ptr %12, align 8
  %179 = getelementptr inbounds %struct.bzFile, ptr %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.bz_stream, ptr %179, i32 0, i32 1
  %181 = load i32, ptr %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %177
  %184 = load ptr, ptr %5, align 8
  %185 = icmp ne ptr %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load ptr, ptr %5, align 8
  store i32 0, ptr %187, align 4
  br label %188

188:                                              ; preds = %186, %183
  %189 = load ptr, ptr %12, align 8
  %190 = icmp ne ptr %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load ptr, ptr %12, align 8
  %193 = getelementptr inbounds %struct.bzFile, ptr %192, i32 0, i32 5
  store i32 0, ptr %193, align 8
  br label %194

194:                                              ; preds = %191, %188
  br label %196

195:                                              ; preds = %177
  br label %104

196:                                              ; preds = %194, %175, %132, %94, %79, %61, %44
  ret void
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @BZ2_bzWriteClose(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load i32, ptr %8, align 4
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %10, align 8
  call void @BZ2_bzWriteClose64(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef null, ptr noundef %15, ptr noundef null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @BZ2_bzWriteClose64(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  %19 = load ptr, ptr %9, align 8
  store ptr %19, ptr %18, align 8
  %20 = load ptr, ptr %18, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %7
  %23 = load ptr, ptr %8, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %18, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %18, align 8
  %32 = getelementptr inbounds %struct.bzFile, ptr %31, i32 0, i32 5
  store i32 0, ptr %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  br label %264

34:                                               ; preds = %7
  %35 = load ptr, ptr %18, align 8
  %36 = getelementptr inbounds %struct.bzFile, ptr %35, i32 0, i32 3
  %37 = load i8, ptr %36, align 4
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %8, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8
  store i32 -1, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load ptr, ptr %18, align 8
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load ptr, ptr %18, align 8
  %49 = getelementptr inbounds %struct.bzFile, ptr %48, i32 0, i32 5
  store i32 -1, ptr %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %264

51:                                               ; preds = %34
  %52 = load ptr, ptr %18, align 8
  %53 = getelementptr inbounds %struct.bzFile, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = call i32 @ferror(ptr noundef %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load ptr, ptr %8, align 8
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load ptr, ptr %8, align 8
  store i32 -6, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load ptr, ptr %18, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load ptr, ptr %18, align 8
  %67 = getelementptr inbounds %struct.bzFile, ptr %66, i32 0, i32 5
  store i32 -6, ptr %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %264

69:                                               ; preds = %51
  %70 = load ptr, ptr %11, align 8
  %71 = icmp ne ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load ptr, ptr %11, align 8
  store i32 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load ptr, ptr %12, align 8
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load ptr, ptr %12, align 8
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load ptr, ptr %13, align 8
  %81 = icmp ne ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load ptr, ptr %13, align 8
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = load ptr, ptr %14, align 8
  %86 = icmp ne ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load ptr, ptr %14, align 8
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, ptr %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %180, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %18, align 8
  %94 = getelementptr inbounds %struct.bzFile, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %180

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %178
  %99 = load ptr, ptr %18, align 8
  %100 = getelementptr inbounds %struct.bzFile, ptr %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.bz_stream, ptr %100, i32 0, i32 5
  store i32 5000, ptr %101, align 8
  %102 = load ptr, ptr %18, align 8
  %103 = getelementptr inbounds %struct.bzFile, ptr %102, i32 0, i32 1
  %104 = getelementptr inbounds [5000 x i8], ptr %103, i64 0, i64 0
  %105 = load ptr, ptr %18, align 8
  %106 = getelementptr inbounds %struct.bzFile, ptr %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.bz_stream, ptr %106, i32 0, i32 4
  store ptr %104, ptr %107, align 8
  %108 = load ptr, ptr %18, align 8
  %109 = getelementptr inbounds %struct.bzFile, ptr %108, i32 0, i32 4
  %110 = call i32 @BZ2_bzCompress(ptr noundef %109, i32 noundef 2)
  store i32 %110, ptr %17, align 4
  %111 = load i32, ptr %17, align 4
  %112 = icmp ne i32 %111, 3
  br i1 %112, label %113, label %130

113:                                              ; preds = %98
  %114 = load i32, ptr %17, align 4
  %115 = icmp ne i32 %114, 4
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load ptr, ptr %8, align 8
  %118 = icmp ne ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, ptr %17, align 4
  %121 = load ptr, ptr %8, align 8
  store i32 %120, ptr %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load ptr, ptr %18, align 8
  %124 = icmp ne ptr %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, ptr %17, align 4
  %127 = load ptr, ptr %18, align 8
  %128 = getelementptr inbounds %struct.bzFile, ptr %127, i32 0, i32 5
  store i32 %126, ptr %128, align 8
  br label %129

129:                                              ; preds = %125, %122
  br label %264

130:                                              ; preds = %113, %98
  %131 = load ptr, ptr %18, align 8
  %132 = getelementptr inbounds %struct.bzFile, ptr %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.bz_stream, ptr %132, i32 0, i32 5
  %134 = load i32, ptr %133, align 8
  %135 = icmp ult i32 %134, 5000
  br i1 %135, label %136, label %174

136:                                              ; preds = %130
  %137 = load ptr, ptr %18, align 8
  %138 = getelementptr inbounds %struct.bzFile, ptr %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.bz_stream, ptr %138, i32 0, i32 5
  %140 = load i32, ptr %139, align 8
  %141 = sub i32 5000, %140
  store i32 %141, ptr %15, align 4
  %142 = load ptr, ptr %18, align 8
  %143 = getelementptr inbounds %struct.bzFile, ptr %142, i32 0, i32 1
  %144 = getelementptr inbounds [5000 x i8], ptr %143, i64 0, i64 0
  %145 = load i32, ptr %15, align 4
  %146 = sext i32 %145 to i64
  %147 = load ptr, ptr %18, align 8
  %148 = getelementptr inbounds %struct.bzFile, ptr %147, i32 0, i32 0
  %149 = load ptr, ptr %148, align 8
  %150 = call i64 @"\01_fwrite"(ptr noundef %144, i64 noundef 1, i64 noundef %146, ptr noundef %149)
  %151 = trunc i64 %150 to i32
  store i32 %151, ptr %16, align 4
  %152 = load i32, ptr %15, align 4
  %153 = load i32, ptr %16, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %136
  %156 = load ptr, ptr %18, align 8
  %157 = getelementptr inbounds %struct.bzFile, ptr %156, i32 0, i32 0
  %158 = load ptr, ptr %157, align 8
  %159 = call i32 @ferror(ptr noundef %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %155, %136
  %162 = load ptr, ptr %8, align 8
  %163 = icmp ne ptr %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load ptr, ptr %8, align 8
  store i32 -6, ptr %165, align 4
  br label %166

166:                                              ; preds = %164, %161
  %167 = load ptr, ptr %18, align 8
  %168 = icmp ne ptr %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load ptr, ptr %18, align 8
  %171 = getelementptr inbounds %struct.bzFile, ptr %170, i32 0, i32 5
  store i32 -6, ptr %171, align 8
  br label %172

172:                                              ; preds = %169, %166
  br label %264

173:                                              ; preds = %155
  br label %174

174:                                              ; preds = %173, %130
  %175 = load i32, ptr %17, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %179

178:                                              ; preds = %174
  br label %98

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %92, %89
  %181 = load i32, ptr %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %212, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %18, align 8
  %185 = getelementptr inbounds %struct.bzFile, ptr %184, i32 0, i32 0
  %186 = load ptr, ptr %185, align 8
  %187 = call i32 @ferror(ptr noundef %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %212, label %189

189:                                              ; preds = %183
  %190 = load ptr, ptr %18, align 8
  %191 = getelementptr inbounds %struct.bzFile, ptr %190, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8
  %193 = call i32 @fflush(ptr noundef %192)
  %194 = load ptr, ptr %18, align 8
  %195 = getelementptr inbounds %struct.bzFile, ptr %194, i32 0, i32 0
  %196 = load ptr, ptr %195, align 8
  %197 = call i32 @ferror(ptr noundef %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %189
  %200 = load ptr, ptr %8, align 8
  %201 = icmp ne ptr %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load ptr, ptr %8, align 8
  store i32 -6, ptr %203, align 4
  br label %204

204:                                              ; preds = %202, %199
  %205 = load ptr, ptr %18, align 8
  %206 = icmp ne ptr %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load ptr, ptr %18, align 8
  %209 = getelementptr inbounds %struct.bzFile, ptr %208, i32 0, i32 5
  store i32 -6, ptr %209, align 8
  br label %210

210:                                              ; preds = %207, %204
  br label %264

211:                                              ; preds = %189
  br label %212

212:                                              ; preds = %211, %183, %180
  %213 = load ptr, ptr %11, align 8
  %214 = icmp ne ptr %213, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load ptr, ptr %18, align 8
  %217 = getelementptr inbounds %struct.bzFile, ptr %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.bz_stream, ptr %217, i32 0, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = load ptr, ptr %11, align 8
  store i32 %219, ptr %220, align 4
  br label %221

221:                                              ; preds = %215, %212
  %222 = load ptr, ptr %12, align 8
  %223 = icmp ne ptr %222, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load ptr, ptr %18, align 8
  %226 = getelementptr inbounds %struct.bzFile, ptr %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.bz_stream, ptr %226, i32 0, i32 3
  %228 = load i32, ptr %227, align 8
  %229 = load ptr, ptr %12, align 8
  store i32 %228, ptr %229, align 4
  br label %230

230:                                              ; preds = %224, %221
  %231 = load ptr, ptr %13, align 8
  %232 = icmp ne ptr %231, null
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load ptr, ptr %18, align 8
  %235 = getelementptr inbounds %struct.bzFile, ptr %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.bz_stream, ptr %235, i32 0, i32 6
  %237 = load i32, ptr %236, align 4
  %238 = load ptr, ptr %13, align 8
  store i32 %237, ptr %238, align 4
  br label %239

239:                                              ; preds = %233, %230
  %240 = load ptr, ptr %14, align 8
  %241 = icmp ne ptr %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = load ptr, ptr %18, align 8
  %244 = getelementptr inbounds %struct.bzFile, ptr %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.bz_stream, ptr %244, i32 0, i32 7
  %246 = load i32, ptr %245, align 8
  %247 = load ptr, ptr %14, align 8
  store i32 %246, ptr %247, align 4
  br label %248

248:                                              ; preds = %242, %239
  %249 = load ptr, ptr %8, align 8
  %250 = icmp ne ptr %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load ptr, ptr %8, align 8
  store i32 0, ptr %252, align 4
  br label %253

253:                                              ; preds = %251, %248
  %254 = load ptr, ptr %18, align 8
  %255 = icmp ne ptr %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load ptr, ptr %18, align 8
  %258 = getelementptr inbounds %struct.bzFile, ptr %257, i32 0, i32 5
  store i32 0, ptr %258, align 8
  br label %259

259:                                              ; preds = %256, %253
  %260 = load ptr, ptr %18, align 8
  %261 = getelementptr inbounds %struct.bzFile, ptr %260, i32 0, i32 4
  %262 = call i32 @BZ2_bzCompressEnd(ptr noundef %261)
  %263 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %263)
  br label %264

264:                                              ; preds = %259, %210, %172, %129, %68, %50, %33
  ret void
}

declare i32 @fflush(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @BZ2_bzReadOpen(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i32 %2, ptr %10, align 4
  store i32 %3, ptr %11, align 4
  store ptr %4, ptr %12, align 8
  store i32 %5, ptr %13, align 4
  store ptr null, ptr %14, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load ptr, ptr %8, align 8
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %6
  %21 = load ptr, ptr %14, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr %14, align 8
  %25 = getelementptr inbounds %struct.bzFile, ptr %24, i32 0, i32 5
  store i32 0, ptr %25, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr %9, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, ptr %11, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %56, label %35

35:                                               ; preds = %32, %29
  %36 = load i32, ptr %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %10, align 4
  %40 = icmp sgt i32 %39, 4
  br i1 %40, label %56, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %12, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, ptr %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44, %41
  %48 = load ptr, ptr %12, align 8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i32, ptr %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %13, align 4
  %55 = icmp sgt i32 %54, 5000
  br i1 %55, label %56, label %68

56:                                               ; preds = %53, %50, %44, %38, %35, %32, %26
  %57 = load ptr, ptr %8, align 8
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load ptr, ptr %8, align 8
  store i32 -2, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load ptr, ptr %14, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load ptr, ptr %14, align 8
  %66 = getelementptr inbounds %struct.bzFile, ptr %65, i32 0, i32 5
  store i32 -2, ptr %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  store ptr null, ptr %7, align 8
  br label %190

68:                                               ; preds = %53, %47
  %69 = load ptr, ptr %9, align 8
  %70 = call i32 @ferror(ptr noundef %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load ptr, ptr %8, align 8
  %74 = icmp ne ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load ptr, ptr %8, align 8
  store i32 -6, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load ptr, ptr %14, align 8
  %79 = icmp ne ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds %struct.bzFile, ptr %81, i32 0, i32 5
  store i32 -6, ptr %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  store ptr null, ptr %7, align 8
  br label %190

84:                                               ; preds = %68
  %85 = call ptr @malloc(i64 noundef 5104) #9
  store ptr %85, ptr %14, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load ptr, ptr %8, align 8
  %90 = icmp ne ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load ptr, ptr %8, align 8
  store i32 -3, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = load ptr, ptr %14, align 8
  %95 = icmp ne ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds %struct.bzFile, ptr %97, i32 0, i32 5
  store i32 -3, ptr %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  store ptr null, ptr %7, align 8
  br label %190

100:                                              ; preds = %84
  %101 = load ptr, ptr %8, align 8
  %102 = icmp ne ptr %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load ptr, ptr %8, align 8
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %103, %100
  %106 = load ptr, ptr %14, align 8
  %107 = icmp ne ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds %struct.bzFile, ptr %109, i32 0, i32 5
  store i32 0, ptr %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load ptr, ptr %14, align 8
  %113 = getelementptr inbounds %struct.bzFile, ptr %112, i32 0, i32 6
  store i8 0, ptr %113, align 4
  %114 = load ptr, ptr %9, align 8
  %115 = load ptr, ptr %14, align 8
  %116 = getelementptr inbounds %struct.bzFile, ptr %115, i32 0, i32 0
  store ptr %114, ptr %116, align 8
  %117 = load ptr, ptr %14, align 8
  %118 = getelementptr inbounds %struct.bzFile, ptr %117, i32 0, i32 2
  store i32 0, ptr %118, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds %struct.bzFile, ptr %119, i32 0, i32 3
  store i8 0, ptr %120, align 4
  %121 = load ptr, ptr %14, align 8
  %122 = getelementptr inbounds %struct.bzFile, ptr %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.bz_stream, ptr %122, i32 0, i32 9
  store ptr null, ptr %123, align 8
  %124 = load ptr, ptr %14, align 8
  %125 = getelementptr inbounds %struct.bzFile, ptr %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.bz_stream, ptr %125, i32 0, i32 10
  store ptr null, ptr %126, align 8
  %127 = load ptr, ptr %14, align 8
  %128 = getelementptr inbounds %struct.bzFile, ptr %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.bz_stream, ptr %128, i32 0, i32 11
  store ptr null, ptr %129, align 8
  br label %130

130:                                              ; preds = %133, %111
  %131 = load i32, ptr %13, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load ptr, ptr %12, align 8
  %135 = load i8, ptr %134, align 1
  %136 = load ptr, ptr %14, align 8
  %137 = getelementptr inbounds %struct.bzFile, ptr %136, i32 0, i32 1
  %138 = load ptr, ptr %14, align 8
  %139 = getelementptr inbounds %struct.bzFile, ptr %138, i32 0, i32 2
  %140 = load i32, ptr %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [5000 x i8], ptr %137, i64 0, i64 %141
  store i8 %135, ptr %142, align 1
  %143 = load ptr, ptr %14, align 8
  %144 = getelementptr inbounds %struct.bzFile, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %144, align 8
  %147 = load ptr, ptr %12, align 8
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  store ptr %148, ptr %12, align 8
  %149 = load i32, ptr %13, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, ptr %13, align 4
  br label %130, !llvm.loop !8

151:                                              ; preds = %130
  %152 = load ptr, ptr %14, align 8
  %153 = getelementptr inbounds %struct.bzFile, ptr %152, i32 0, i32 4
  %154 = load i32, ptr %10, align 4
  %155 = load i32, ptr %11, align 4
  %156 = call i32 @BZ2_bzDecompressInit(ptr noundef %153, i32 noundef %154, i32 noundef %155)
  store i32 %156, ptr %15, align 4
  %157 = load i32, ptr %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %151
  %160 = load ptr, ptr %8, align 8
  %161 = icmp ne ptr %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, ptr %15, align 4
  %164 = load ptr, ptr %8, align 8
  store i32 %163, ptr %164, align 4
  br label %165

165:                                              ; preds = %162, %159
  %166 = load ptr, ptr %14, align 8
  %167 = icmp ne ptr %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, ptr %15, align 4
  %170 = load ptr, ptr %14, align 8
  %171 = getelementptr inbounds %struct.bzFile, ptr %170, i32 0, i32 5
  store i32 %169, ptr %171, align 8
  br label %172

172:                                              ; preds = %168, %165
  %173 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %173)
  store ptr null, ptr %7, align 8
  br label %190

174:                                              ; preds = %151
  %175 = load ptr, ptr %14, align 8
  %176 = getelementptr inbounds %struct.bzFile, ptr %175, i32 0, i32 2
  %177 = load i32, ptr %176, align 8
  %178 = load ptr, ptr %14, align 8
  %179 = getelementptr inbounds %struct.bzFile, ptr %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.bz_stream, ptr %179, i32 0, i32 1
  store i32 %177, ptr %180, align 8
  %181 = load ptr, ptr %14, align 8
  %182 = getelementptr inbounds %struct.bzFile, ptr %181, i32 0, i32 1
  %183 = getelementptr inbounds [5000 x i8], ptr %182, i64 0, i64 0
  %184 = load ptr, ptr %14, align 8
  %185 = getelementptr inbounds %struct.bzFile, ptr %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.bz_stream, ptr %185, i32 0, i32 0
  store ptr %183, ptr %186, align 8
  %187 = load ptr, ptr %14, align 8
  %188 = getelementptr inbounds %struct.bzFile, ptr %187, i32 0, i32 6
  store i8 1, ptr %188, align 4
  %189 = load ptr, ptr %14, align 8
  store ptr %189, ptr %7, align 8
  br label %190

190:                                              ; preds = %174, %172, %99, %83, %67
  %191 = load ptr, ptr %7, align 8
  ret ptr %191
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @BZ2_bzReadClose(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  store ptr %6, ptr %5, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load ptr, ptr %5, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.bzFile, ptr %15, i32 0, i32 5
  store i32 0, ptr %16, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load ptr, ptr %5, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr %5, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.bzFile, ptr %29, i32 0, i32 5
  store i32 0, ptr %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %60

32:                                               ; preds = %17
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.bzFile, ptr %33, i32 0, i32 3
  %35 = load i8, ptr %34, align 4
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load ptr, ptr %3, align 8
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load ptr, ptr %3, align 8
  store i32 -1, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load ptr, ptr %5, align 8
  %44 = icmp ne ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.bzFile, ptr %46, i32 0, i32 5
  store i32 -1, ptr %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %60

49:                                               ; preds = %32
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.bzFile, ptr %50, i32 0, i32 6
  %52 = load i8, ptr %51, align 4
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.bzFile, ptr %55, i32 0, i32 4
  %57 = call i32 @BZ2_bzDecompressEnd(ptr noundef %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %59)
  br label %60

60:                                               ; preds = %58, %48, %31
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzRead(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %12, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %4
  %19 = load ptr, ptr %12, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %12, align 8
  %23 = getelementptr inbounds %struct.bzFile, ptr %22, i32 0, i32 5
  store i32 0, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %12, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %27, %24
  %34 = load ptr, ptr %6, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr %6, align 8
  store i32 -2, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load ptr, ptr %12, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr %12, align 8
  %43 = getelementptr inbounds %struct.bzFile, ptr %42, i32 0, i32 5
  store i32 -2, ptr %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, ptr %5, align 4
  br label %256

45:                                               ; preds = %30
  %46 = load ptr, ptr %12, align 8
  %47 = getelementptr inbounds %struct.bzFile, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 4
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load ptr, ptr %6, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load ptr, ptr %6, align 8
  store i32 -1, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load ptr, ptr %12, align 8
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds %struct.bzFile, ptr %59, i32 0, i32 5
  store i32 -1, ptr %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  store i32 0, ptr %5, align 4
  br label %256

62:                                               ; preds = %45
  %63 = load i32, ptr %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load ptr, ptr %6, align 8
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load ptr, ptr %6, align 8
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr %12, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds %struct.bzFile, ptr %74, i32 0, i32 5
  store i32 0, ptr %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, ptr %5, align 4
  br label %256

77:                                               ; preds = %62
  %78 = load i32, ptr %9, align 4
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds %struct.bzFile, ptr %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.bz_stream, ptr %80, i32 0, i32 5
  store i32 %78, ptr %81, align 8
  %82 = load ptr, ptr %8, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = getelementptr inbounds %struct.bzFile, ptr %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.bz_stream, ptr %84, i32 0, i32 4
  store ptr %82, ptr %85, align 8
  br label %86

86:                                               ; preds = %77, %255
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds %struct.bzFile, ptr %87, i32 0, i32 0
  %89 = load ptr, ptr %88, align 8
  %90 = call i32 @ferror(ptr noundef %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load ptr, ptr %6, align 8
  %94 = icmp ne ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load ptr, ptr %6, align 8
  store i32 -6, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load ptr, ptr %12, align 8
  %99 = icmp ne ptr %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load ptr, ptr %12, align 8
  %102 = getelementptr inbounds %struct.bzFile, ptr %101, i32 0, i32 5
  store i32 -6, ptr %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, ptr %5, align 4
  br label %256

104:                                              ; preds = %86
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds %struct.bzFile, ptr %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.bz_stream, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %104
  %111 = load ptr, ptr %12, align 8
  %112 = getelementptr inbounds %struct.bzFile, ptr %111, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8
  %114 = call zeroext i8 @myfeof(ptr noundef %113)
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %158, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %12, align 8
  %118 = getelementptr inbounds %struct.bzFile, ptr %117, i32 0, i32 1
  %119 = getelementptr inbounds [5000 x i8], ptr %118, i64 0, i64 0
  %120 = load ptr, ptr %12, align 8
  %121 = getelementptr inbounds %struct.bzFile, ptr %120, i32 0, i32 0
  %122 = load ptr, ptr %121, align 8
  %123 = call i64 @fread(ptr noundef %119, i64 noundef 1, i64 noundef 5000, ptr noundef %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, ptr %10, align 4
  %125 = load ptr, ptr %12, align 8
  %126 = getelementptr inbounds %struct.bzFile, ptr %125, i32 0, i32 0
  %127 = load ptr, ptr %126, align 8
  %128 = call i32 @ferror(ptr noundef %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %116
  %131 = load ptr, ptr %6, align 8
  %132 = icmp ne ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load ptr, ptr %6, align 8
  store i32 -6, ptr %134, align 4
  br label %135

135:                                              ; preds = %133, %130
  %136 = load ptr, ptr %12, align 8
  %137 = icmp ne ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load ptr, ptr %12, align 8
  %140 = getelementptr inbounds %struct.bzFile, ptr %139, i32 0, i32 5
  store i32 -6, ptr %140, align 8
  br label %141

141:                                              ; preds = %138, %135
  store i32 0, ptr %5, align 4
  br label %256

142:                                              ; preds = %116
  %143 = load i32, ptr %10, align 4
  %144 = load ptr, ptr %12, align 8
  %145 = getelementptr inbounds %struct.bzFile, ptr %144, i32 0, i32 2
  store i32 %143, ptr %145, align 8
  %146 = load ptr, ptr %12, align 8
  %147 = getelementptr inbounds %struct.bzFile, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 8
  %149 = load ptr, ptr %12, align 8
  %150 = getelementptr inbounds %struct.bzFile, ptr %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.bz_stream, ptr %150, i32 0, i32 1
  store i32 %148, ptr %151, align 8
  %152 = load ptr, ptr %12, align 8
  %153 = getelementptr inbounds %struct.bzFile, ptr %152, i32 0, i32 1
  %154 = getelementptr inbounds [5000 x i8], ptr %153, i64 0, i64 0
  %155 = load ptr, ptr %12, align 8
  %156 = getelementptr inbounds %struct.bzFile, ptr %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.bz_stream, ptr %156, i32 0, i32 0
  store ptr %154, ptr %157, align 8
  br label %158

158:                                              ; preds = %142, %110, %104
  %159 = load ptr, ptr %12, align 8
  %160 = getelementptr inbounds %struct.bzFile, ptr %159, i32 0, i32 4
  %161 = call i32 @BZ2_bzDecompress(ptr noundef %160)
  store i32 %161, ptr %11, align 4
  %162 = load i32, ptr %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load i32, ptr %11, align 4
  %166 = icmp ne i32 %165, 4
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load ptr, ptr %6, align 8
  %169 = icmp ne ptr %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, ptr %11, align 4
  %172 = load ptr, ptr %6, align 8
  store i32 %171, ptr %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load ptr, ptr %12, align 8
  %175 = icmp ne ptr %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, ptr %11, align 4
  %178 = load ptr, ptr %12, align 8
  %179 = getelementptr inbounds %struct.bzFile, ptr %178, i32 0, i32 5
  store i32 %177, ptr %179, align 8
  br label %180

180:                                              ; preds = %176, %173
  store i32 0, ptr %5, align 4
  br label %256

181:                                              ; preds = %164, %158
  %182 = load i32, ptr %11, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %215

184:                                              ; preds = %181
  %185 = load ptr, ptr %12, align 8
  %186 = getelementptr inbounds %struct.bzFile, ptr %185, i32 0, i32 0
  %187 = load ptr, ptr %186, align 8
  %188 = call zeroext i8 @myfeof(ptr noundef %187)
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %184
  %192 = load ptr, ptr %12, align 8
  %193 = getelementptr inbounds %struct.bzFile, ptr %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.bz_stream, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %215

197:                                              ; preds = %191
  %198 = load ptr, ptr %12, align 8
  %199 = getelementptr inbounds %struct.bzFile, ptr %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.bz_stream, ptr %199, i32 0, i32 5
  %201 = load i32, ptr %200, align 8
  %202 = icmp ugt i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load ptr, ptr %6, align 8
  %205 = icmp ne ptr %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load ptr, ptr %6, align 8
  store i32 -7, ptr %207, align 4
  br label %208

208:                                              ; preds = %206, %203
  %209 = load ptr, ptr %12, align 8
  %210 = icmp ne ptr %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load ptr, ptr %12, align 8
  %213 = getelementptr inbounds %struct.bzFile, ptr %212, i32 0, i32 5
  store i32 -7, ptr %213, align 8
  br label %214

214:                                              ; preds = %211, %208
  store i32 0, ptr %5, align 4
  br label %256

215:                                              ; preds = %197, %191, %184, %181
  %216 = load i32, ptr %11, align 4
  %217 = icmp eq i32 %216, 4
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  %219 = load ptr, ptr %6, align 8
  %220 = icmp ne ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %218
  %222 = load ptr, ptr %6, align 8
  store i32 4, ptr %222, align 4
  br label %223

223:                                              ; preds = %221, %218
  %224 = load ptr, ptr %12, align 8
  %225 = icmp ne ptr %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load ptr, ptr %12, align 8
  %228 = getelementptr inbounds %struct.bzFile, ptr %227, i32 0, i32 5
  store i32 4, ptr %228, align 8
  br label %229

229:                                              ; preds = %226, %223
  %230 = load i32, ptr %9, align 4
  %231 = load ptr, ptr %12, align 8
  %232 = getelementptr inbounds %struct.bzFile, ptr %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.bz_stream, ptr %232, i32 0, i32 5
  %234 = load i32, ptr %233, align 8
  %235 = sub i32 %230, %234
  store i32 %235, ptr %5, align 4
  br label %256

236:                                              ; preds = %215
  %237 = load ptr, ptr %12, align 8
  %238 = getelementptr inbounds %struct.bzFile, ptr %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.bz_stream, ptr %238, i32 0, i32 5
  %240 = load i32, ptr %239, align 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %236
  %243 = load ptr, ptr %6, align 8
  %244 = icmp ne ptr %243, null
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load ptr, ptr %6, align 8
  store i32 0, ptr %246, align 4
  br label %247

247:                                              ; preds = %245, %242
  %248 = load ptr, ptr %12, align 8
  %249 = icmp ne ptr %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load ptr, ptr %12, align 8
  %252 = getelementptr inbounds %struct.bzFile, ptr %251, i32 0, i32 5
  store i32 0, ptr %252, align 8
  br label %253

253:                                              ; preds = %250, %247
  %254 = load i32, ptr %9, align 4
  store i32 %254, ptr %5, align 4
  br label %256

255:                                              ; preds = %236
  br label %86

256:                                              ; preds = %253, %229, %214, %180, %141, %103, %76, %61, %44
  %257 = load i32, ptr %5, align 4
  ret i32 %257
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @myfeof(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @fgetc(ptr noundef %5)
  store i32 %6, ptr %4, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 1, ptr %2, align 1
  br label %14

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = call i32 @ungetc(i32 noundef %11, ptr noundef %12)
  store i8 0, ptr %2, align 1
  br label %14

14:                                               ; preds = %10, %9
  %15 = load i8, ptr %2, align 1
  ret i8 %15
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @BZ2_bzReadGetUnused(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  store ptr %10, ptr %9, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8
  store i32 -2, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load ptr, ptr %9, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds %struct.bzFile, ptr %22, i32 0, i32 5
  store i32 -2, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  br label %82

25:                                               ; preds = %4
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds %struct.bzFile, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %5, align 8
  store i32 -1, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load ptr, ptr %9, align 8
  %37 = icmp ne ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load ptr, ptr %9, align 8
  %40 = getelementptr inbounds %struct.bzFile, ptr %39, i32 0, i32 5
  store i32 -1, ptr %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %82

42:                                               ; preds = %25
  %43 = load ptr, ptr %7, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %8, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr %5, align 8
  %50 = icmp ne ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %5, align 8
  store i32 -2, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = load ptr, ptr %9, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr %9, align 8
  %58 = getelementptr inbounds %struct.bzFile, ptr %57, i32 0, i32 5
  store i32 -2, ptr %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  br label %82

60:                                               ; preds = %45
  %61 = load ptr, ptr %5, align 8
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load ptr, ptr %9, align 8
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load ptr, ptr %9, align 8
  %70 = getelementptr inbounds %struct.bzFile, ptr %69, i32 0, i32 5
  store i32 0, ptr %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load ptr, ptr %9, align 8
  %73 = getelementptr inbounds %struct.bzFile, ptr %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.bz_stream, ptr %73, i32 0, i32 1
  %75 = load i32, ptr %74, align 8
  %76 = load ptr, ptr %8, align 8
  store i32 %75, ptr %76, align 4
  %77 = load ptr, ptr %9, align 8
  %78 = getelementptr inbounds %struct.bzFile, ptr %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.bz_stream, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %7, align 8
  store ptr %80, ptr %81, align 8
  br label %82

82:                                               ; preds = %71, %59, %41, %24
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzBuffToBuffCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bz_stream, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store i32 %3, ptr %12, align 4
  store i32 %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store i32 %6, ptr %15, align 4
  %18 = load ptr, ptr %9, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %10, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %11, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %13, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %13, align 4
  %31 = icmp sgt i32 %30, 9
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %14, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %15, align 4
  %43 = icmp sgt i32 %42, 250
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %7
  store i32 -2, ptr %8, align 4
  br label %91

45:                                               ; preds = %41
  %46 = load i32, ptr %15, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 30, ptr %15, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 9
  store ptr null, ptr %50, align 8
  %51 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 10
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 11
  store ptr null, ptr %52, align 8
  %53 = load i32, ptr %13, align 4
  %54 = load i32, ptr %14, align 4
  %55 = load i32, ptr %15, align 4
  %56 = call i32 @BZ2_bzCompressInit(ptr noundef %16, i32 noundef %53, i32 noundef %54, i32 noundef %55)
  store i32 %56, ptr %17, align 4
  %57 = load i32, ptr %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, ptr %17, align 4
  store i32 %60, ptr %8, align 4
  br label %91

61:                                               ; preds = %49
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 0
  store ptr %62, ptr %63, align 8
  %64 = load ptr, ptr %9, align 8
  %65 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 4
  store ptr %64, ptr %65, align 8
  %66 = load i32, ptr %12, align 4
  %67 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 1
  store i32 %66, ptr %67, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 5
  store i32 %69, ptr %70, align 8
  %71 = call i32 @BZ2_bzCompress(ptr noundef %16, i32 noundef 2)
  store i32 %71, ptr %17, align 4
  %72 = load i32, ptr %17, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %86

75:                                               ; preds = %61
  %76 = load i32, ptr %17, align 4
  %77 = icmp ne i32 %76, 4
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %88

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bz_stream, ptr %16, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  %82 = load ptr, ptr %10, align 8
  %83 = load i32, ptr %82, align 4
  %84 = sub i32 %83, %81
  store i32 %84, ptr %82, align 4
  %85 = call i32 @BZ2_bzCompressEnd(ptr noundef %16)
  store i32 0, ptr %8, align 4
  br label %91

86:                                               ; preds = %74
  %87 = call i32 @BZ2_bzCompressEnd(ptr noundef %16)
  store i32 -8, ptr %8, align 4
  br label %91

88:                                               ; preds = %78
  %89 = call i32 @BZ2_bzCompressEnd(ptr noundef %16)
  %90 = load i32, ptr %17, align 4
  store i32 %90, ptr %8, align 4
  br label %91

91:                                               ; preds = %88, %86, %79, %59, %44
  %92 = load i32, ptr %8, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzBuffToBuffDecompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bz_stream, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store i32 %4, ptr %12, align 4
  store i32 %5, ptr %13, align 4
  %16 = load ptr, ptr %8, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %6
  %19 = load ptr, ptr %9, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, ptr %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %13, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %27, %21, %18, %6
  store i32 -2, ptr %7, align 4
  br label %84

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 9
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 10
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 11
  store ptr null, ptr %40, align 8
  %41 = load i32, ptr %13, align 4
  %42 = load i32, ptr %12, align 4
  %43 = call i32 @BZ2_bzDecompressInit(ptr noundef %14, i32 noundef %41, i32 noundef %42)
  store i32 %43, ptr %15, align 4
  %44 = load i32, ptr %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, ptr %15, align 4
  store i32 %47, ptr %7, align 4
  br label %84

48:                                               ; preds = %37
  %49 = load ptr, ptr %10, align 8
  %50 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 0
  store ptr %49, ptr %50, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 4
  store ptr %51, ptr %52, align 8
  %53 = load i32, ptr %11, align 4
  %54 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 1
  store i32 %53, ptr %54, align 8
  %55 = load ptr, ptr %9, align 8
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 5
  store i32 %56, ptr %57, align 8
  %58 = call i32 @BZ2_bzDecompress(ptr noundef %14)
  store i32 %58, ptr %15, align 4
  %59 = load i32, ptr %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %73

62:                                               ; preds = %48
  %63 = load i32, ptr %15, align 4
  %64 = icmp ne i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %81

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = load ptr, ptr %9, align 8
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %70, %68
  store i32 %71, ptr %69, align 4
  %72 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14)
  store i32 0, ptr %7, align 4
  br label %84

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.bz_stream, ptr %14, i32 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14)
  store i32 -7, ptr %7, align 4
  br label %84

79:                                               ; preds = %73
  %80 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14)
  store i32 -8, ptr %7, align 4
  br label %84

81:                                               ; preds = %65
  %82 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14)
  %83 = load i32, ptr %15, align 4
  store i32 %83, ptr %7, align 4
  br label %84

84:                                               ; preds = %81, %79, %77, %66, %46, %36
  %85 = load i32, ptr %7, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @BZ2_bzopen(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @bzopen_or_bzdopen(ptr noundef %5, i32 noundef -1, ptr noundef %6, i32 noundef 0)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @bzopen_or_bzdopen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5000 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x i8], align 1
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 9, ptr %12, align 4
  store i32 0, ptr %13, align 4
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 10, i1 false)
  store ptr null, ptr %15, align 8
  store ptr null, ptr %16, align 8
  store i32 0, ptr %17, align 4
  store i32 30, ptr %18, align 4
  store i32 0, ptr %19, align 4
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr %8, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store ptr null, ptr %5, align 8
  br label %132

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load ptr, ptr %8, align 8
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load ptr, ptr %8, align 8
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %36 [
    i32 114, label %33
    i32 119, label %34
    i32 115, label %35
  ]

33:                                               ; preds = %29
  store i32 0, ptr %13, align 4
  br label %48

34:                                               ; preds = %29
  store i32 1, ptr %13, align 4
  br label %48

35:                                               ; preds = %29
  store i32 1, ptr %19, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load ptr, ptr %8, align 8
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 @isdigit(i32 noundef %39) #10
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load ptr, ptr %8, align 8
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  store i32 %46, ptr %12, align 4
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %35, %34, %33
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %50, ptr %8, align 8
  br label %25, !llvm.loop !9

51:                                               ; preds = %25
  %52 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0
  %53 = load i32, ptr %13, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, ptr @.str.6, ptr @.str.7
  %57 = call ptr @__strcat_chk(ptr noundef %52, ptr noundef %56, i64 noundef 10) #7
  %58 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0
  %59 = call ptr @__strcat_chk(ptr noundef %58, ptr noundef @.str.8, i64 noundef 10) #7
  %60 = load i32, ptr %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %51
  %63 = load ptr, ptr %6, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %6, align 8
  %67 = call i32 @strcmp(ptr noundef %66, ptr noundef @.str.9) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %62
  %70 = load i32, ptr %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load ptr, ptr @__stdoutp, align 8
  br label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr @__stdinp, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ]
  store ptr %77, ptr %15, align 8
  br label %82

78:                                               ; preds = %65
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0
  %81 = call ptr @"\01_fopen"(ptr noundef %79, ptr noundef %80)
  store ptr %81, ptr %15, align 8
  br label %82

82:                                               ; preds = %78, %76
  br label %87

83:                                               ; preds = %51
  %84 = load i32, ptr %7, align 4
  %85 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0
  %86 = call ptr @"\01_fdopen"(i32 noundef %84, ptr noundef %85)
  store ptr %86, ptr %15, align 8
  br label %87

87:                                               ; preds = %83, %82
  %88 = load ptr, ptr %15, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store ptr null, ptr %5, align 8
  br label %132

91:                                               ; preds = %87
  %92 = load i32, ptr %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i32, ptr %12, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 1, ptr %12, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, ptr %12, align 4
  %100 = icmp sgt i32 %99, 9
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 9, ptr %12, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = load ptr, ptr %15, align 8
  %104 = load i32, ptr %12, align 4
  %105 = load i32, ptr %17, align 4
  %106 = load i32, ptr %18, align 4
  %107 = call ptr @BZ2_bzWriteOpen(ptr noundef %10, ptr noundef %103, i32 noundef %104, i32 noundef %105, i32 noundef %106)
  store ptr %107, ptr %16, align 8
  br label %115

108:                                              ; preds = %91
  %109 = load ptr, ptr %15, align 8
  %110 = load i32, ptr %17, align 4
  %111 = load i32, ptr %19, align 4
  %112 = getelementptr inbounds [5000 x i8], ptr %11, i64 0, i64 0
  %113 = load i32, ptr %20, align 4
  %114 = call ptr @BZ2_bzReadOpen(ptr noundef %10, ptr noundef %109, i32 noundef %110, i32 noundef %111, ptr noundef %112, i32 noundef %113)
  store ptr %114, ptr %16, align 8
  br label %115

115:                                              ; preds = %108, %102
  %116 = load ptr, ptr %16, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load ptr, ptr %15, align 8
  %120 = load ptr, ptr @__stdinp, align 8
  %121 = icmp ne ptr %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load ptr, ptr %15, align 8
  %124 = load ptr, ptr @__stdoutp, align 8
  %125 = icmp ne ptr %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load ptr, ptr %15, align 8
  %128 = call i32 @fclose(ptr noundef %127)
  br label %129

129:                                              ; preds = %126, %122, %118
  store ptr null, ptr %5, align 8
  br label %132

130:                                              ; preds = %115
  %131 = load ptr, ptr %16, align 8
  store ptr %131, ptr %5, align 8
  br label %132

132:                                              ; preds = %130, %129, %90, %23
  %133 = load ptr, ptr %5, align 8
  ret ptr %133
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @BZ2_bzdopen(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @bzopen_or_bzdopen(ptr noundef null, i32 noundef %5, ptr noundef %6, i32 noundef 1)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzread(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.bzFile, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %7, align 4
  %19 = call i32 @BZ2_bzRead(ptr noundef %8, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  store i32 %19, ptr %9, align 4
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %8, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %15
  %26 = load i32, ptr %9, align 4
  store i32 %26, ptr %4, align 4
  br label %28

27:                                               ; preds = %22
  store i32 -1, ptr %4, align 4
  br label %28

28:                                               ; preds = %27, %25, %14
  %29 = load i32, ptr %4, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i32, ptr %7, align 4
  call void @BZ2_bzWrite(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11)
  %12 = load i32, ptr %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, ptr %7, align 4
  store i32 %15, ptr %4, align 4
  br label %17

16:                                               ; preds = %3
  store i32 -1, ptr %4, align 4
  br label %17

17:                                               ; preds = %16, %14
  %18 = load i32, ptr %4, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @BZ2_bzflush(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @BZ2_bzclose(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.bzFile, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.bzFile, ptr %12, i32 0, i32 3
  %14 = load i8, ptr %13, align 4
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load ptr, ptr %2, align 8
  call void @BZ2_bzWriteClose(ptr noundef %3, ptr noundef %17, i32 noundef 0, ptr noundef null, ptr noundef null)
  %18 = load i32, ptr %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8
  call void @BZ2_bzWriteClose(ptr noundef null, ptr noundef %21, i32 noundef 1, ptr noundef null, ptr noundef null)
  br label %22

22:                                               ; preds = %20, %16
  br label %25

23:                                               ; preds = %8
  %24 = load ptr, ptr %2, align 8
  call void @BZ2_bzReadClose(ptr noundef %3, ptr noundef %24)
  br label %25

25:                                               ; preds = %23, %22
  %26 = load ptr, ptr %4, align 8
  %27 = load ptr, ptr @__stdinp, align 8
  %28 = icmp ne ptr %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr @__stdoutp, align 8
  %32 = icmp ne ptr %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8
  %35 = call i32 @fclose(ptr noundef %34)
  br label %36

36:                                               ; preds = %7, %33, %29, %25
  ret void
}

declare i32 @fclose(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @BZ2_bzerror(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.bzFile, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %5, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %4, align 8
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %5, align 4
  %16 = mul nsw i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x ptr], ptr @bzerrorstrings, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8
  ret ptr %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @copy_output_until_stop(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  br label %4

4:                                                ; preds = %1, %71
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.EState, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bz_stream, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %72

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.EState, ptr %13, i32 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.EState, ptr %16, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %72

21:                                               ; preds = %12
  store i8 1, ptr %3, align 1
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.EState, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.EState, ptr %25, i32 0, i32 20
  %27 = load i32, ptr %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %24, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.EState, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.bz_stream, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  store i8 %30, ptr %35, align 1
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.EState, ptr %36, i32 0, i32 20
  %38 = load i32, ptr %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 8
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.EState, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.bz_stream, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, -1
  store i32 %45, ptr %43, align 8
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.EState, ptr %46, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.bz_stream, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %51, ptr %49, align 8
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.EState, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.bz_stream, ptr %54, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.EState, ptr %58, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.bz_stream, ptr %60, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %21
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.EState, ptr %65, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.bz_stream, ptr %67, i32 0, i32 7
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %64, %21
  br label %4

72:                                               ; preds = %20, %11
  %73 = load i8, ptr %3, align 1
  ret i8 %73
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @copy_input_until_stop(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.EState, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %157

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %155
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.EState, ptr %14, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.EState, ptr %17, i32 0, i32 18
  %19 = load i32, ptr %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %156

22:                                               ; preds = %13
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.EState, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.bz_stream, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %156

30:                                               ; preds = %22
  store i8 1, ptr %3, align 1
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.EState, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.bz_stream, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, ptr %4, align 4
  %38 = load i32, ptr %4, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.EState, ptr %39, i32 0, i32 13
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %93

43:                                               ; preds = %30
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.EState, ptr %44, i32 0, i32 14
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %93

48:                                               ; preds = %43
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.EState, ptr %49, i32 0, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %5, align 1
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.EState, ptr %53, i32 0, i32 26
  %55 = load i32, ptr %54, align 8
  %56 = shl i32 %55, 8
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds %struct.EState, ptr %57, i32 0, i32 26
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 24
  %61 = load i8, ptr %5, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %60, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = xor i32 %56, %66
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.EState, ptr %68, i32 0, i32 26
  store i32 %67, ptr %69, align 8
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.EState, ptr %70, i32 0, i32 22
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.EState, ptr %72, i32 0, i32 13
  %74 = load i32, ptr %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i8], ptr %71, i64 0, i64 %75
  store i8 1, ptr %76, align 1
  %77 = load i8, ptr %5, align 1
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.EState, ptr %78, i32 0, i32 9
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.EState, ptr %81, i32 0, i32 17
  %83 = load i32, ptr %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %80, i64 %84
  store i8 %77, ptr %85, align 1
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr inbounds %struct.EState, ptr %86, i32 0, i32 17
  %88 = load i32, ptr %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 4
  %90 = load i32, ptr %4, align 4
  %91 = load ptr, ptr %2, align 8
  %92 = getelementptr inbounds %struct.EState, ptr %91, i32 0, i32 13
  store i32 %90, ptr %92, align 4
  br label %123

93:                                               ; preds = %43, %30
  %94 = load i32, ptr %4, align 4
  %95 = load ptr, ptr %2, align 8
  %96 = getelementptr inbounds %struct.EState, ptr %95, i32 0, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr %2, align 8
  %101 = getelementptr inbounds %struct.EState, ptr %100, i32 0, i32 14
  %102 = load i32, ptr %101, align 8
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %117

104:                                              ; preds = %99, %93
  %105 = load ptr, ptr %2, align 8
  %106 = getelementptr inbounds %struct.EState, ptr %105, i32 0, i32 13
  %107 = load i32, ptr %106, align 4
  %108 = icmp ult i32 %107, 256
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load ptr, ptr %2, align 8
  call void @add_pair_to_block(ptr noundef %110)
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32, ptr %4, align 4
  %113 = load ptr, ptr %2, align 8
  %114 = getelementptr inbounds %struct.EState, ptr %113, i32 0, i32 13
  store i32 %112, ptr %114, align 4
  %115 = load ptr, ptr %2, align 8
  %116 = getelementptr inbounds %struct.EState, ptr %115, i32 0, i32 14
  store i32 1, ptr %116, align 8
  br label %122

117:                                              ; preds = %99
  %118 = load ptr, ptr %2, align 8
  %119 = getelementptr inbounds %struct.EState, ptr %118, i32 0, i32 14
  %120 = load i32, ptr %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %119, align 8
  br label %122

122:                                              ; preds = %117, %111
  br label %123

123:                                              ; preds = %122, %48
  %124 = load ptr, ptr %2, align 8
  %125 = getelementptr inbounds %struct.EState, ptr %124, i32 0, i32 0
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.bz_stream, ptr %126, i32 0, i32 0
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %129, ptr %127, align 8
  %130 = load ptr, ptr %2, align 8
  %131 = getelementptr inbounds %struct.EState, ptr %130, i32 0, i32 0
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.bz_stream, ptr %132, i32 0, i32 1
  %134 = load i32, ptr %133, align 8
  %135 = add i32 %134, -1
  store i32 %135, ptr %133, align 8
  %136 = load ptr, ptr %2, align 8
  %137 = getelementptr inbounds %struct.EState, ptr %136, i32 0, i32 0
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.bz_stream, ptr %138, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  %142 = load ptr, ptr %2, align 8
  %143 = getelementptr inbounds %struct.EState, ptr %142, i32 0, i32 0
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.bz_stream, ptr %144, i32 0, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %123
  %149 = load ptr, ptr %2, align 8
  %150 = getelementptr inbounds %struct.EState, ptr %149, i32 0, i32 0
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.bz_stream, ptr %151, i32 0, i32 3
  %153 = load i32, ptr %152, align 8
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 8
  br label %155

155:                                              ; preds = %148, %123
  br label %13

156:                                              ; preds = %29, %21
  br label %312

157:                                              ; preds = %1
  br label %158

158:                                              ; preds = %157, %306
  %159 = load ptr, ptr %2, align 8
  %160 = getelementptr inbounds %struct.EState, ptr %159, i32 0, i32 17
  %161 = load i32, ptr %160, align 4
  %162 = load ptr, ptr %2, align 8
  %163 = getelementptr inbounds %struct.EState, ptr %162, i32 0, i32 18
  %164 = load i32, ptr %163, align 8
  %165 = icmp sge i32 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %311

167:                                              ; preds = %158
  %168 = load ptr, ptr %2, align 8
  %169 = getelementptr inbounds %struct.EState, ptr %168, i32 0, i32 0
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.bz_stream, ptr %170, i32 0, i32 1
  %172 = load i32, ptr %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %311

175:                                              ; preds = %167
  %176 = load ptr, ptr %2, align 8
  %177 = getelementptr inbounds %struct.EState, ptr %176, i32 0, i32 3
  %178 = load i32, ptr %177, align 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %311

181:                                              ; preds = %175
  store i8 1, ptr %3, align 1
  %182 = load ptr, ptr %2, align 8
  %183 = getelementptr inbounds %struct.EState, ptr %182, i32 0, i32 0
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.bz_stream, ptr %184, i32 0, i32 0
  %186 = load ptr, ptr %185, align 8
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  store i32 %188, ptr %6, align 4
  %189 = load i32, ptr %6, align 4
  %190 = load ptr, ptr %2, align 8
  %191 = getelementptr inbounds %struct.EState, ptr %190, i32 0, i32 13
  %192 = load i32, ptr %191, align 4
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %244

194:                                              ; preds = %181
  %195 = load ptr, ptr %2, align 8
  %196 = getelementptr inbounds %struct.EState, ptr %195, i32 0, i32 14
  %197 = load i32, ptr %196, align 8
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %244

199:                                              ; preds = %194
  %200 = load ptr, ptr %2, align 8
  %201 = getelementptr inbounds %struct.EState, ptr %200, i32 0, i32 13
  %202 = load i32, ptr %201, align 4
  %203 = trunc i32 %202 to i8
  store i8 %203, ptr %7, align 1
  %204 = load ptr, ptr %2, align 8
  %205 = getelementptr inbounds %struct.EState, ptr %204, i32 0, i32 26
  %206 = load i32, ptr %205, align 8
  %207 = shl i32 %206, 8
  %208 = load ptr, ptr %2, align 8
  %209 = getelementptr inbounds %struct.EState, ptr %208, i32 0, i32 26
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 24
  %212 = load i8, ptr %7, align 1
  %213 = zext i8 %212 to i32
  %214 = xor i32 %211, %213
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4
  %218 = xor i32 %207, %217
  %219 = load ptr, ptr %2, align 8
  %220 = getelementptr inbounds %struct.EState, ptr %219, i32 0, i32 26
  store i32 %218, ptr %220, align 8
  %221 = load ptr, ptr %2, align 8
  %222 = getelementptr inbounds %struct.EState, ptr %221, i32 0, i32 22
  %223 = load ptr, ptr %2, align 8
  %224 = getelementptr inbounds %struct.EState, ptr %223, i32 0, i32 13
  %225 = load i32, ptr %224, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [256 x i8], ptr %222, i64 0, i64 %226
  store i8 1, ptr %227, align 1
  %228 = load i8, ptr %7, align 1
  %229 = load ptr, ptr %2, align 8
  %230 = getelementptr inbounds %struct.EState, ptr %229, i32 0, i32 9
  %231 = load ptr, ptr %230, align 8
  %232 = load ptr, ptr %2, align 8
  %233 = getelementptr inbounds %struct.EState, ptr %232, i32 0, i32 17
  %234 = load i32, ptr %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %231, i64 %235
  store i8 %228, ptr %236, align 1
  %237 = load ptr, ptr %2, align 8
  %238 = getelementptr inbounds %struct.EState, ptr %237, i32 0, i32 17
  %239 = load i32, ptr %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %238, align 4
  %241 = load i32, ptr %6, align 4
  %242 = load ptr, ptr %2, align 8
  %243 = getelementptr inbounds %struct.EState, ptr %242, i32 0, i32 13
  store i32 %241, ptr %243, align 4
  br label %274

244:                                              ; preds = %194, %181
  %245 = load i32, ptr %6, align 4
  %246 = load ptr, ptr %2, align 8
  %247 = getelementptr inbounds %struct.EState, ptr %246, i32 0, i32 13
  %248 = load i32, ptr %247, align 4
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %255, label %250

250:                                              ; preds = %244
  %251 = load ptr, ptr %2, align 8
  %252 = getelementptr inbounds %struct.EState, ptr %251, i32 0, i32 14
  %253 = load i32, ptr %252, align 8
  %254 = icmp eq i32 %253, 255
  br i1 %254, label %255, label %268

255:                                              ; preds = %250, %244
  %256 = load ptr, ptr %2, align 8
  %257 = getelementptr inbounds %struct.EState, ptr %256, i32 0, i32 13
  %258 = load i32, ptr %257, align 4
  %259 = icmp ult i32 %258, 256
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load ptr, ptr %2, align 8
  call void @add_pair_to_block(ptr noundef %261)
  br label %262

262:                                              ; preds = %260, %255
  %263 = load i32, ptr %6, align 4
  %264 = load ptr, ptr %2, align 8
  %265 = getelementptr inbounds %struct.EState, ptr %264, i32 0, i32 13
  store i32 %263, ptr %265, align 4
  %266 = load ptr, ptr %2, align 8
  %267 = getelementptr inbounds %struct.EState, ptr %266, i32 0, i32 14
  store i32 1, ptr %267, align 8
  br label %273

268:                                              ; preds = %250
  %269 = load ptr, ptr %2, align 8
  %270 = getelementptr inbounds %struct.EState, ptr %269, i32 0, i32 14
  %271 = load i32, ptr %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %270, align 8
  br label %273

273:                                              ; preds = %268, %262
  br label %274

274:                                              ; preds = %273, %199
  %275 = load ptr, ptr %2, align 8
  %276 = getelementptr inbounds %struct.EState, ptr %275, i32 0, i32 0
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds %struct.bz_stream, ptr %277, i32 0, i32 0
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds i8, ptr %279, i32 1
  store ptr %280, ptr %278, align 8
  %281 = load ptr, ptr %2, align 8
  %282 = getelementptr inbounds %struct.EState, ptr %281, i32 0, i32 0
  %283 = load ptr, ptr %282, align 8
  %284 = getelementptr inbounds %struct.bz_stream, ptr %283, i32 0, i32 1
  %285 = load i32, ptr %284, align 8
  %286 = add i32 %285, -1
  store i32 %286, ptr %284, align 8
  %287 = load ptr, ptr %2, align 8
  %288 = getelementptr inbounds %struct.EState, ptr %287, i32 0, i32 0
  %289 = load ptr, ptr %288, align 8
  %290 = getelementptr inbounds %struct.bz_stream, ptr %289, i32 0, i32 2
  %291 = load i32, ptr %290, align 4
  %292 = add i32 %291, 1
  store i32 %292, ptr %290, align 4
  %293 = load ptr, ptr %2, align 8
  %294 = getelementptr inbounds %struct.EState, ptr %293, i32 0, i32 0
  %295 = load ptr, ptr %294, align 8
  %296 = getelementptr inbounds %struct.bz_stream, ptr %295, i32 0, i32 2
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %274
  %300 = load ptr, ptr %2, align 8
  %301 = getelementptr inbounds %struct.EState, ptr %300, i32 0, i32 0
  %302 = load ptr, ptr %301, align 8
  %303 = getelementptr inbounds %struct.bz_stream, ptr %302, i32 0, i32 3
  %304 = load i32, ptr %303, align 8
  %305 = add i32 %304, 1
  store i32 %305, ptr %303, align 8
  br label %306

306:                                              ; preds = %299, %274
  %307 = load ptr, ptr %2, align 8
  %308 = getelementptr inbounds %struct.EState, ptr %307, i32 0, i32 3
  %309 = load i32, ptr %308, align 8
  %310 = add i32 %309, -1
  store i32 %310, ptr %308, align 8
  br label %158

311:                                              ; preds = %180, %174, %166
  br label %312

312:                                              ; preds = %311, %156
  %313 = load i8, ptr %3, align 1
  ret i8 %313
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @flush_RL(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.EState, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  call void @add_pair_to_block(ptr noundef %8)
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr %2, align 8
  call void @init_RL(ptr noundef %10)
  ret void
}

declare void @BZ2_compressBlock(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @add_pair_to_block(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.EState, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %4, align 1
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, ptr %3, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.EState, ptr %11, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.EState, ptr %16, i32 0, i32 26
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %18, 8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.EState, ptr %20, i32 0, i32 26
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 24
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %23, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %19, %29
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.EState, ptr %31, i32 0, i32 26
  store i32 %30, ptr %32, align 8
  br label %33

33:                                               ; preds = %15
  %34 = load i32, ptr %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %3, align 4
  br label %9, !llvm.loop !10

36:                                               ; preds = %9
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.EState, ptr %37, i32 0, i32 22
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.EState, ptr %39, i32 0, i32 13
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i8], ptr %38, i64 0, i64 %42
  store i8 1, ptr %43, align 1
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.EState, ptr %44, i32 0, i32 14
  %46 = load i32, ptr %45, align 8
  switch i32 %46, label %128 [
    i32 1, label %47
    i32 2, label %61
    i32 3, label %88
  ]

47:                                               ; preds = %36
  %48 = load i8, ptr %4, align 1
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.EState, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.EState, ptr %52, i32 0, i32 17
  %54 = load i32, ptr %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %51, i64 %55
  store i8 %48, ptr %56, align 1
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds %struct.EState, ptr %57, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %58, align 4
  br label %206

61:                                               ; preds = %36
  %62 = load i8, ptr %4, align 1
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.EState, ptr %63, i32 0, i32 9
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct.EState, ptr %66, i32 0, i32 17
  %68 = load i32, ptr %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %65, i64 %69
  store i8 %62, ptr %70, align 1
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds %struct.EState, ptr %71, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %72, align 4
  %75 = load i8, ptr %4, align 1
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds %struct.EState, ptr %76, i32 0, i32 9
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %2, align 8
  %80 = getelementptr inbounds %struct.EState, ptr %79, i32 0, i32 17
  %81 = load i32, ptr %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %78, i64 %82
  store i8 %75, ptr %83, align 1
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr inbounds %struct.EState, ptr %84, i32 0, i32 17
  %86 = load i32, ptr %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 4
  br label %206

88:                                               ; preds = %36
  %89 = load i8, ptr %4, align 1
  %90 = load ptr, ptr %2, align 8
  %91 = getelementptr inbounds %struct.EState, ptr %90, i32 0, i32 9
  %92 = load ptr, ptr %91, align 8
  %93 = load ptr, ptr %2, align 8
  %94 = getelementptr inbounds %struct.EState, ptr %93, i32 0, i32 17
  %95 = load i32, ptr %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %92, i64 %96
  store i8 %89, ptr %97, align 1
  %98 = load ptr, ptr %2, align 8
  %99 = getelementptr inbounds %struct.EState, ptr %98, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4
  %102 = load i8, ptr %4, align 1
  %103 = load ptr, ptr %2, align 8
  %104 = getelementptr inbounds %struct.EState, ptr %103, i32 0, i32 9
  %105 = load ptr, ptr %104, align 8
  %106 = load ptr, ptr %2, align 8
  %107 = getelementptr inbounds %struct.EState, ptr %106, i32 0, i32 17
  %108 = load i32, ptr %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %105, i64 %109
  store i8 %102, ptr %110, align 1
  %111 = load ptr, ptr %2, align 8
  %112 = getelementptr inbounds %struct.EState, ptr %111, i32 0, i32 17
  %113 = load i32, ptr %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %112, align 4
  %115 = load i8, ptr %4, align 1
  %116 = load ptr, ptr %2, align 8
  %117 = getelementptr inbounds %struct.EState, ptr %116, i32 0, i32 9
  %118 = load ptr, ptr %117, align 8
  %119 = load ptr, ptr %2, align 8
  %120 = getelementptr inbounds %struct.EState, ptr %119, i32 0, i32 17
  %121 = load i32, ptr %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %118, i64 %122
  store i8 %115, ptr %123, align 1
  %124 = load ptr, ptr %2, align 8
  %125 = getelementptr inbounds %struct.EState, ptr %124, i32 0, i32 17
  %126 = load i32, ptr %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %125, align 4
  br label %206

128:                                              ; preds = %36
  %129 = load ptr, ptr %2, align 8
  %130 = getelementptr inbounds %struct.EState, ptr %129, i32 0, i32 22
  %131 = load ptr, ptr %2, align 8
  %132 = getelementptr inbounds %struct.EState, ptr %131, i32 0, i32 14
  %133 = load i32, ptr %132, align 8
  %134 = sub nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [256 x i8], ptr %130, i64 0, i64 %135
  store i8 1, ptr %136, align 1
  %137 = load i8, ptr %4, align 1
  %138 = load ptr, ptr %2, align 8
  %139 = getelementptr inbounds %struct.EState, ptr %138, i32 0, i32 9
  %140 = load ptr, ptr %139, align 8
  %141 = load ptr, ptr %2, align 8
  %142 = getelementptr inbounds %struct.EState, ptr %141, i32 0, i32 17
  %143 = load i32, ptr %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %140, i64 %144
  store i8 %137, ptr %145, align 1
  %146 = load ptr, ptr %2, align 8
  %147 = getelementptr inbounds %struct.EState, ptr %146, i32 0, i32 17
  %148 = load i32, ptr %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %147, align 4
  %150 = load i8, ptr %4, align 1
  %151 = load ptr, ptr %2, align 8
  %152 = getelementptr inbounds %struct.EState, ptr %151, i32 0, i32 9
  %153 = load ptr, ptr %152, align 8
  %154 = load ptr, ptr %2, align 8
  %155 = getelementptr inbounds %struct.EState, ptr %154, i32 0, i32 17
  %156 = load i32, ptr %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %153, i64 %157
  store i8 %150, ptr %158, align 1
  %159 = load ptr, ptr %2, align 8
  %160 = getelementptr inbounds %struct.EState, ptr %159, i32 0, i32 17
  %161 = load i32, ptr %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %160, align 4
  %163 = load i8, ptr %4, align 1
  %164 = load ptr, ptr %2, align 8
  %165 = getelementptr inbounds %struct.EState, ptr %164, i32 0, i32 9
  %166 = load ptr, ptr %165, align 8
  %167 = load ptr, ptr %2, align 8
  %168 = getelementptr inbounds %struct.EState, ptr %167, i32 0, i32 17
  %169 = load i32, ptr %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %166, i64 %170
  store i8 %163, ptr %171, align 1
  %172 = load ptr, ptr %2, align 8
  %173 = getelementptr inbounds %struct.EState, ptr %172, i32 0, i32 17
  %174 = load i32, ptr %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %173, align 4
  %176 = load i8, ptr %4, align 1
  %177 = load ptr, ptr %2, align 8
  %178 = getelementptr inbounds %struct.EState, ptr %177, i32 0, i32 9
  %179 = load ptr, ptr %178, align 8
  %180 = load ptr, ptr %2, align 8
  %181 = getelementptr inbounds %struct.EState, ptr %180, i32 0, i32 17
  %182 = load i32, ptr %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %179, i64 %183
  store i8 %176, ptr %184, align 1
  %185 = load ptr, ptr %2, align 8
  %186 = getelementptr inbounds %struct.EState, ptr %185, i32 0, i32 17
  %187 = load i32, ptr %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %186, align 4
  %189 = load ptr, ptr %2, align 8
  %190 = getelementptr inbounds %struct.EState, ptr %189, i32 0, i32 14
  %191 = load i32, ptr %190, align 8
  %192 = sub nsw i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = load ptr, ptr %2, align 8
  %195 = getelementptr inbounds %struct.EState, ptr %194, i32 0, i32 9
  %196 = load ptr, ptr %195, align 8
  %197 = load ptr, ptr %2, align 8
  %198 = getelementptr inbounds %struct.EState, ptr %197, i32 0, i32 17
  %199 = load i32, ptr %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %196, i64 %200
  store i8 %193, ptr %201, align 1
  %202 = load ptr, ptr %2, align 8
  %203 = getelementptr inbounds %struct.EState, ptr %202, i32 0, i32 17
  %204 = load i32, ptr %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %203, align 4
  br label %206

206:                                              ; preds = %128, %88, %61, %47
  ret void
}

declare i32 @fgetc(ptr noundef) #3

declare i32 @ungetc(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #6

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #3

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { allocsize(0) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.5"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
