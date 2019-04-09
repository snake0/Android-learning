.class public Lcom/mqunar/yvideo/multivideo/MediaSystem;
.super Lcom/mqunar/yvideo/multivideo/MediaInterface;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 119
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 121
    :goto_b
    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_b
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 130
    :goto_b
    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_b
.end method

.method public getVideoHeight()I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 34
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVideoWidth()I
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 26
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 91
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 93
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 5

    .prologue
    .line 183
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/MediaSystem$3;

    invoke-direct {v1, p0, p2}, Lcom/mqunar/yvideo/multivideo/MediaSystem$3;-><init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 171
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/MediaSystem$2;

    invoke-direct {v1, p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem$2;-><init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .prologue
    .line 207
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/MediaSystem$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/mqunar/yvideo/multivideo/MediaSystem$5;-><init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .prologue
    .line 221
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;-><init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 157
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 158
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/MediaSystem$1;

    invoke-direct {v1, p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem$1;-><init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_21
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 195
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/MediaSystem$4;

    invoke-direct {v1, p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem$4;-><init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    .prologue
    .line 240
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iput p2, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoWidth:I

    .line 241
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iput p3, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoHeight:I

    .line 242
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/MediaSystem$7;

    invoke-direct {v1, p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem$7;-><init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 86
    :cond_9
    return-void
.end method

.method public prepare()V
    .registers 6

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 56
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 57
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->getDataSourceObjects()Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->isLoop()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 58
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 59
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 60
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 61
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 62
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 63
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 64
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 65
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 66
    const-class v0, Landroid/media/MediaPlayer;

    .line 68
    const-string v1, "setDataSource"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->getDataSourceObjects()Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getHeader()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 70
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->getDataSourceObjects()Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getHeader()Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_7c
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->setPrepare(Z)V

    .line 79
    :goto_85
    return-void

    .line 72
    :cond_86
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_99} :catch_9a

    goto :goto_7c

    .line 76
    :catch_9a
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_85
.end method

.method public reSet()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 152
    :cond_9
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;->setPrepare(Z)V

    .line 114
    :cond_10
    return-void
.end method

.method public seekTo(J)V
    .registers 5

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    .line 103
    :goto_6
    return-void

    .line 100
    :catch_7
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6
.end method

.method public setLooping(Z)V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 40
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 42
    :cond_9
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 138
    return-void
.end method

.method public setVolume(FF)V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 145
    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 49
    :cond_9
    return-void
.end method
