.class public Lcom/taobao/android/runtime/DalvikUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/taobao/android/runtime/DalvikUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/runtime/DalvikUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    invoke-static {p0, p1, p2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v2

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    .line 92
    return-object v2
.end method

.method public static a(I)Ljava/lang/Boolean;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    sget-boolean v1, Lcom/taobao/android/runtime/d;->a:Z

    if-eqz v1, :cond_6

    .line 131
    :cond_5
    :goto_5
    return-object v0

    .line 127
    :cond_6
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->b:Z

    if-eqz v1, :cond_5

    .line 131
    invoke-static {p0}, Lcom/taobao/android/runtime/DalvikUtils;->setClassVerifyModeNative(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method public static a()Z
    .registers 3

    .prologue
    .line 58
    :try_start_0
    const-string v0, "dalvikhack"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_e

    .line 67
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->nativeInit()Z

    move-result v0

    sput-boolean v0, Lcom/taobao/android/runtime/DalvikUtils;->b:Z

    .line 69
    sget-boolean v0, Lcom/taobao/android/runtime/DalvikUtils;->b:Z

    :goto_d
    return v0

    .line 59
    :catch_e
    move-exception v0

    .line 63
    sget-object v1, Lcom/taobao/android/runtime/DalvikUtils;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static native addBootClassPathNative([Ljava/lang/String;[I)Z
.end method

.method private static native bootClassPathNative()Ljava/lang/String;
.end method

.method private static native disableJitCompilationNative()Z
.end method

.method private static native dvmJdwpStartupNative(S)Z
.end method

.method private static native getClassVerifyModeNative()I
.end method

.method private static native getDexOptModeNative()I
.end method

.method private static native nativeInit()Z
.end method

.method private static native setClassVerifyModeNative(I)Z
.end method

.method private static native setDexOptModeNative(I)Z
.end method
