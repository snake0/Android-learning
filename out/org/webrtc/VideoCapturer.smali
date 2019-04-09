.class public Lorg/webrtc/VideoCapturer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativeVideoCapturer:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/webrtc/VideoCapturer;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lorg/webrtc/VideoCapturer;->nativeCreateVideoCapturer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_b

    .line 40
    check-cast v0, Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/VideoCapturer;

    .line 41
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static native free(J)V
.end method

.method private static native nativeCreateVideoCapturer(Ljava/lang/String;)Ljava/lang/Object;
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 63
    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    invoke-static {v0, v1}, Lorg/webrtc/VideoCapturer;->free(J)V

    .line 65
    :cond_d
    return-void
.end method

.method protected setNativeCapturer(J)V
    .registers 3

    .prologue
    .line 46
    iput-wide p1, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    .line 47
    return-void
.end method

.method takeNativeVideoCapturer()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Capturer can only be taken once!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_10
    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    .line 55
    iput-wide v2, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    .line 56
    return-wide v0
.end method
