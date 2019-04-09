.class public final Lcom/iflytek/cae/jni/CAEJni;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method public static native CAEAudioWrite(I[BI)I
.end method

.method public static native CAEDestroy(I)I
.end method

.method public static native CAEGetChannel()I
.end method

.method public static native CAENew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native CAERead16kAudio([B)I
.end method

.method public static native CAEReset(I)I
.end method

.method public static native CAESendMsg(II[B[B)I
.end method

.method public static native CAESetRealBeam(II)I
.end method

.method public static native CAESetWParam(I[B[B)I
.end method

.method public static native DebugLog(Z)V
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/iflytek/cae/jni/CAEJni;->a:Z

    if-nez v0, :cond_19

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "cae"

    :cond_c
    :try_start_c
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/cae/jni/CAEJni;->a:Z

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/as;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/iflytek/cae/jni/CAEJni;->DebugLog(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/cae/jni/CAEJni;->a:Z

    goto :goto_19
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/iflytek/cae/jni/CAEJni;->a:Z

    return v0
.end method
