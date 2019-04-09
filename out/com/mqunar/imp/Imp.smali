.class public Lcom/mqunar/imp/Imp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 7
    const-string v0, "imp_1_0"

    .line 9
    :try_start_2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_5} :catch_6

    .line 14
    :goto_5
    return-void

    .line 10
    :catch_6
    move-exception v0

    .line 11
    const-string v1, "JNI"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    const-string v0, "JNI"

    const-string v1, "failed first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native d([B)[B
.end method

.method public static native e([B[B)[B
.end method

.method public static native version()[B
.end method
