.class public Lcom/taobao/android/dex/interpret/ARTUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native IsVerificationEnabledNative()Z
.end method

.method public static a()Ljava/lang/Boolean;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    sget-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z

    if-nez v0, :cond_6

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_5
    return-object v0

    :cond_6
    invoke-static {}, Lcom/taobao/android/dex/interpret/ARTUtils;->isDex2oatEnabledNative()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method public static a(Z)Ljava/lang/Boolean;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    sget-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z

    if-nez v0, :cond_6

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_5
    return-object v0

    :cond_6
    invoke-static {p0}, Lcom/taobao/android/dex/interpret/ARTUtils;->setIsDex2oatEnabledNative(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Z)Z
    .registers 5

    .prologue
    .line 24
    :try_start_0
    const-string v0, "dexinterpret"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1, v0}, Lcom/taobao/android/dex/interpret/ARTUtils;->nativeInit(ZI)Z

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_11} :catch_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_26

    .line 38
    :goto_11
    sget-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z

    return v0

    .line 27
    :catch_14
    move-exception v0

    .line 31
    const-string v1, "ARTUtils"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 32
    :catch_1d
    move-exception v0

    .line 33
    const-string v1, "ARTUtils"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 34
    :catch_26
    move-exception v0

    .line 35
    const-string v1, "ARTUtils"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method private static native abortNative()Z
.end method

.method public static b()Ljava/lang/Boolean;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    sget-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z

    if-nez v0, :cond_6

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_5
    return-object v0

    :cond_6
    invoke-static {}, Lcom/taobao/android/dex/interpret/ARTUtils;->IsVerificationEnabledNative()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method public static b(Z)Ljava/lang/Boolean;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    sget-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z

    if-nez v0, :cond_6

    .line 64
    const/4 v0, 0x0

    .line 72
    :goto_5
    return-object v0

    .line 66
    :cond_6
    invoke-static {p0}, Lcom/taobao/android/dex/interpret/ARTUtils;->setVerificationEnabledNative(Z)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_17

    if-eqz p0, :cond_17

    .line 68
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/taobao/android/dex/interpret/ARTUtils;->c(Z)Ljava/lang/Boolean;

    .line 72
    :cond_12
    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 69
    :cond_17
    if-eqz v0, :cond_12

    if-nez p0, :cond_12

    .line 70
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/taobao/android/dex/interpret/ARTUtils;->c(Z)Ljava/lang/Boolean;

    goto :goto_12
.end method

.method public static c(Z)Ljava/lang/Boolean;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    sget-boolean v0, Lcom/taobao/android/dex/interpret/ARTUtils;->a:Z

    if-nez v0, :cond_6

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_5
    return-object v0

    :cond_6
    invoke-static {p0}, Lcom/taobao/android/dex/interpret/ARTUtils;->setSignalCatcherHaltFlagNative(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method private static native isDex2oatEnabledNative()Z
.end method

.method private static native nativeInit(ZI)Z
.end method

.method private static native setIsDex2oatEnabledNative(Z)Z
.end method

.method private static native setSignalCatcherHaltFlagNative(Z)Z
.end method

.method private static native setVerificationEnabledNative(Z)Z
.end method
