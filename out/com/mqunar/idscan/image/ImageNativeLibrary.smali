.class public Lcom/mqunar/idscan/image/ImageNativeLibrary;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/idscan/image/ImageNativeLibrary;->a:Z

    :try_start_3
    const-string v0, "image"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/idscan/image/ImageNativeLibrary;->a:Z
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mqunar/idscan/image/ImageNativeLibrary;->a:Z

    invoke-static {}, Lcom/mqunar/idscan/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/qav/uelog/QAVLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qav/uelog/QAVLog;

    move-result-object v1

    const-string v2, "ImageNativeLibrary"

    const-string v3, "load image_v1_0_0 failed"

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/qav/uelog/QAVLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AdaptiveThreshold([III[I[I)V
.end method

.method public static native Otsu([I[I)I
.end method

.method public static native RegionYUVtoRBGA([BIIIIII[I)V
.end method

.method public static native YUVtoARBG([BII[I)V
.end method

.method public static native YUVtoRBGA([BII[I)V
.end method
