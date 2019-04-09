.class public Lcom/mqunar/yvideo/multivideo/MediaManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final HANDLER_PREPARE:I = 0x0

.field public static final HANDLER_RELEASE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "VideoPlayer"

.field private static mediaManager:Lcom/mqunar/yvideo/multivideo/MediaManager;

.field public static savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public static surface:Landroid/view/Surface;

.field public static textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;


# instance fields
.field public currentVideoHeight:I

.field public currentVideoWidth:I

.field public mMediaHandler:Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;

.field public mMediaHandlerThread:Landroid/os/HandlerThread;

.field public mainThreadHandler:Landroid/os/Handler;

.field public mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

.field public positionInList:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->positionInList:I

    .line 31
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoWidth:I

    .line 32
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoHeight:I

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoPlayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    .line 40
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v0, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;-><init>(Lcom/mqunar/yvideo/multivideo/MediaManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mMediaHandler:Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mainThreadHandler:Landroid/os/Handler;

    .line 43
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    if-nez v0, :cond_38

    .line 44
    new-instance v0, Lcom/mqunar/yvideo/multivideo/MediaSystem;

    invoke-direct {v0}, Lcom/mqunar/yvideo/multivideo/MediaSystem;-><init>()V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    .line 45
    :cond_38
    return-void
.end method

.method public static getCurrentDataSource()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPosition()J
    .registers 2

    .prologue
    .line 77
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDataSource()Lcom/mqunar/yvideo/multivideo/DataSourceBean;
    .registers 1

    .prologue
    .line 59
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getDataSourceObjects()Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    move-result-object v0

    return-object v0
.end method

.method public static getDuration()J
    .registers 2

    .prologue
    .line 81
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static instance()Lcom/mqunar/yvideo/multivideo/MediaManager;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaManager:Lcom/mqunar/yvideo/multivideo/MediaManager;

    if-nez v0, :cond_a

    .line 53
    # getter for: Lcom/mqunar/yvideo/multivideo/MediaManager$SingletonHolder;->instance:Lcom/mqunar/yvideo/multivideo/MediaManager;
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager$SingletonHolder;->access$000()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    sput-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaManager:Lcom/mqunar/yvideo/multivideo/MediaManager;

    .line 55
    :cond_a
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaManager:Lcom/mqunar/yvideo/multivideo/MediaManager;

    return-object v0
.end method

.method public static isPlaying()Z
    .registers 1

    .prologue
    .line 97
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public static pause()V
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->pause()V

    .line 90
    return-void
.end method

.method public static seekTo(J)V
    .registers 3

    .prologue
    .line 85
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->seekTo(J)V

    .line 86
    return-void
.end method

.method public static setCurrentDataSource(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0, p0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setCurrentDataSource(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static setDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V
    .registers 2

    .prologue
    .line 64
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0, p0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setDataSourceObjects(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V

    .line 65
    return-void
.end method

.method public static start()V
    .registers 1

    .prologue
    .line 93
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->start()V

    .line 94
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .prologue
    .line 115
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_a

    .line 116
    sput-object p1, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 117
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->prepare()V

    .line 123
    :cond_9
    :goto_9
    return-void

    .line 119
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 120
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_9
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .prologue
    .line 132
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .prologue
    .line 128
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .prologue
    .line 138
    return-void
.end method

.method public prepare()V
    .registers 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->releaseMediaPlayer()V

    .line 109
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 110
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mMediaHandler:Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method public releaseMediaPlayer()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mMediaHandler:Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 103
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mMediaHandler:Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/multivideo/MediaManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method
