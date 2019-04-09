.class public Lcom/mqunar/yvideo/utils/YuvUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string v0, "yuv_util"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native compressYUV([BII[BIIIIZ)V
.end method

.method public static native cropYUV([BII[BIIII)V
.end method

.method public static native destroy()V
.end method

.method public static native yuv420pToYuv420sp([B[BII)V
.end method
