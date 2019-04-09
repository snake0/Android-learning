.class public Lorg/webrtc/MediaStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field final nativeStream:J

.field public final preservedVideoTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field public final videoTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    .line 44
    iput-wide p1, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 45
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeAddAudioTrack(JJ)Z
.end method

.method private static native nativeAddVideoTrack(JJ)Z
.end method

.method private static native nativeLabel(J)Ljava/lang/String;
.end method

.method private static native nativeRemoveAudioTrack(JJ)Z
.end method

.method private static native nativeRemoveVideoTrack(JJ)Z
.end method


# virtual methods
.method public addPreservedTrack(Lorg/webrtc/VideoTrack;)Z
    .registers 6

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddVideoTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    iget-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public addTrack(Lorg/webrtc/AudioTrack;)Z
    .registers 6

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/AudioTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddAudioTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public addTrack(Lorg/webrtc/VideoTrack;)Z
    .registers 6

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddVideoTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 57
    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 93
    :goto_0
    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 94
    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/AudioTrack;

    .line 95
    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/AudioTrack;)Z

    .line 96
    invoke-virtual {v0}, Lorg/webrtc/AudioTrack;->dispose()V

    goto :goto_0

    .line 98
    :cond_17
    :goto_17
    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 99
    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoTrack;

    .line 100
    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/VideoTrack;)Z

    .line 101
    invoke-virtual {v0}, Lorg/webrtc/VideoTrack;->dispose()V

    goto :goto_17

    .line 104
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 105
    iget-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoTrack;

    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/VideoTrack;)Z

    goto :goto_2e

    .line 107
    :cond_42
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStream;->free(J)V

    .line 108
    return-void
.end method

.method public label()Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStream;->nativeLabel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeTrack(Lorg/webrtc/AudioTrack;)Z
    .registers 6

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/AudioTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeRemoveAudioTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public removeTrack(Lorg/webrtc/VideoTrack;)Z
    .registers 6

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeRemoveVideoTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/webrtc/MediaStream;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
