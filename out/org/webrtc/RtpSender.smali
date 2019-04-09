.class public Lorg/webrtc/RtpSender;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cachedTrack:Lorg/webrtc/MediaStreamTrack;

.field final nativeRtpSender:J


# direct methods
.method public constructor <init>(J)V
    .registers 8

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    .line 38
    invoke-static {p1, p2}, Lorg/webrtc/RtpSender;->nativeGetTrack(J)J

    move-result-wide v1

    .line 40
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    .line 41
    return-void

    .line 40
    :cond_13
    new-instance v0, Lorg/webrtc/MediaStreamTrack;

    invoke-direct {v0, v1, v2}, Lorg/webrtc/MediaStreamTrack;-><init>(J)V

    goto :goto_10
.end method

.method private static native free(J)V
.end method

.method private static native nativeGetTrack(J)J
.end method

.method private static native nativeId(J)Ljava/lang/String;
.end method

.method private static native nativeSetTrack(JJ)V
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/MediaStreamTrack;->dispose()V

    .line 65
    :cond_9
    iget-wide v0, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/RtpSender;->free(J)V

    .line 66
    return-void
.end method

.method public id()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/RtpSender;->nativeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTrack(Lorg/webrtc/MediaStreamTrack;)V
    .registers 6

    .prologue
    .line 46
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/MediaStreamTrack;->dispose()V

    .line 49
    :cond_9
    iput-object p1, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    .line 50
    iget-wide v2, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    if-nez p1, :cond_15

    const-wide/16 v0, 0x0

    :goto_11
    invoke-static {v2, v3, v0, v1}, Lorg/webrtc/RtpSender;->nativeSetTrack(JJ)V

    .line 51
    return-void

    .line 50
    :cond_15
    iget-wide v0, p1, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    goto :goto_11
.end method

.method public track()Lorg/webrtc/MediaStreamTrack;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    return-object v0
.end method
