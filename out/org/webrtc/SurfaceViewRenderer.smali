.class public Lorg/webrtc/SurfaceViewRenderer;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/webrtc/VideoRenderer$Callbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewRenderer"


# instance fields
.field private desiredLayoutSize:Landroid/graphics/Point;

.field private drawer:Lorg/webrtc/RendererCommon$GlDrawer;

.field private eglBase:Lorg/webrtc/EglBase;

.field private firstFrameTimeNs:J

.field private frameHeight:I

.field private final frameLock:Ljava/lang/Object;

.field private frameRotation:I

.field private frameWidth:I

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private isSurfaceCreated:Z

.field private final layoutLock:Ljava/lang/Object;

.field private final layoutSize:Landroid/graphics/Point;

.field private final makeBlackRunnable:Ljava/lang/Runnable;

.field private mirror:Z

.field private pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

.field private final renderFrameRunnable:Ljava/lang/Runnable;

.field private renderThread:Landroid/os/HandlerThread;

.field private renderThreadHandler:Landroid/os/Handler;

.field private renderTimeNs:J

.field private rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

.field private scalingType:Lorg/webrtc/RendererCommon$ScalingType;

.field private final statisticsLock:Ljava/lang/Object;

.field private final surfaceSize:Landroid/graphics/Point;

.field private yuvTextures:[I

.field private final yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->handlerLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/webrtc/RendererCommon$YuvUploader;

    invoke-direct {v0}, Lorg/webrtc/RendererCommon$YuvUploader;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    .line 92
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    .line 103
    sget-object v0, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/RendererCommon$ScalingType;

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->statisticsLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$1;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$2;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$2;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->makeBlackRunnable:Ljava/lang/Runnable;

    .line 141
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->handlerLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/webrtc/RendererCommon$YuvUploader;

    invoke-direct {v0}, Lorg/webrtc/RendererCommon$YuvUploader;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    .line 92
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    .line 103
    sget-object v0, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/RendererCommon$ScalingType;

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->statisticsLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$1;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$2;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$2;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->makeBlackRunnable:Ljava/lang/Runnable;

    .line 149
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/SurfaceViewRenderer;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/SurfaceViewRenderer;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->makeBlack()V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/SurfaceViewRenderer;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/SurfaceViewRenderer;)Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$400(Lorg/webrtc/SurfaceViewRenderer;)Lorg/webrtc/EglBase;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    return-object v0
.end method

.method static synthetic access$402(Lorg/webrtc/SurfaceViewRenderer;Lorg/webrtc/EglBase;)Lorg/webrtc/EglBase;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    return-object p1
.end method

.method static synthetic access$500(Lorg/webrtc/SurfaceViewRenderer;)Lorg/webrtc/RendererCommon$GlDrawer;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    return-object v0
.end method

.method static synthetic access$502(Lorg/webrtc/SurfaceViewRenderer;Lorg/webrtc/RendererCommon$GlDrawer;)Lorg/webrtc/RendererCommon$GlDrawer;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    return-object p1
.end method

.method static synthetic access$600(Lorg/webrtc/SurfaceViewRenderer;)[I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    return-object v0
.end method

.method static synthetic access$602(Lorg/webrtc/SurfaceViewRenderer;[I)[I
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    return-object p1
.end method

.method private checkConsistentLayout()Z
    .registers 4

    .prologue
    .line 441
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_25

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Wrong thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_25
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_28
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    :goto_3d
    monitor-exit v1

    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3d

    .line 447
    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_41

    throw v0
.end method

.method private frameAspectRatio()F
    .registers 4

    .prologue
    .line 536
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_3
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameWidth:I

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameHeight:I

    if-nez v0, :cond_e

    .line 538
    :cond_b
    const/4 v0, 0x0

    monitor-exit v1

    .line 540
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_20

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameWidth:I

    int-to-float v0, v0

    iget v2, p0, Lorg/webrtc/SurfaceViewRenderer;->frameHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_1b
    monitor-exit v1

    goto :goto_d

    .line 542
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    .line 540
    :cond_20
    :try_start_20
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameHeight:I

    int-to-float v0, v0

    iget v2, p0, Lorg/webrtc/SurfaceViewRenderer;->frameWidth:I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_1b
.end method

.method private getDesiredLayoutSize(II)Landroid/graphics/Point;
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 323
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    const v0, 0x7fffffff

    :try_start_8
    invoke-static {v0, p1}, Lorg/webrtc/SurfaceViewRenderer;->getDefaultSize(II)I

    move-result v0

    .line 325
    const v2, 0x7fffffff

    invoke-static {v2, p2}, Lorg/webrtc/SurfaceViewRenderer;->getDefaultSize(II)I

    move-result v2

    .line 326
    iget-object v3, p0, Lorg/webrtc/SurfaceViewRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->frameAspectRatio()F

    move-result v4

    invoke-static {v3, v4, v0, v2}, Lorg/webrtc/RendererCommon;->getDisplaySize(Lorg/webrtc/RendererCommon$ScalingType;FII)Landroid/graphics/Point;

    move-result-object v3

    .line 328
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v5, :cond_25

    .line 329
    iput v0, v3, Landroid/graphics/Point;->x:I

    .line 331
    :cond_25
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v5, :cond_2d

    .line 332
    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 334
    :cond_2d
    monitor-exit v1

    return-object v3

    .line 335
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private getResourceName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 420
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 422
    :goto_1f
    return-object v0

    .line 421
    :catch_20
    move-exception v0

    .line 422
    const-string v0, ""

    goto :goto_1f
.end method

.method private logStatistics()V
    .registers 10

    .prologue
    .line 568
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_3
    const-string v0, "SurfaceViewRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Frames received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/SurfaceViewRenderer;->framesReceived:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Dropped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/SurfaceViewRenderer;->framesDropped:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Rendered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesReceived:I

    if-lez v0, :cond_b9

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    if-lez v0, :cond_b9

    .line 572
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/webrtc/SurfaceViewRenderer;->firstFrameTimeNs:J

    sub-long/2addr v2, v4

    .line 573
    const-string v0, "SurfaceViewRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-double v5, v2

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms. FPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    int-to-double v5, v5

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v5, v7

    long-to-double v2, v2

    div-double v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "SurfaceViewRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Average render time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/webrtc/SurfaceViewRenderer;->renderTimeNs:J

    iget v5, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " us."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_b9
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_bb
    move-exception v0

    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_3 .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method private makeBlack()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 427
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_26

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Wrong thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_26
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 431
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 432
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 433
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->swapBuffers()V

    .line 435
    :cond_3f
    return-void
.end method

.method private renderFrameOnRenderThread()V
    .registers 13

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 454
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_27

    .line 455
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Wrong thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_27
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_2a
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-nez v0, :cond_30

    .line 461
    monitor-exit v1

    .line 532
    :goto_2f
    return-void

    .line 463
    :cond_30
    iget-object v8, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 465
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_62

    .line 466
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_65

    .line 467
    :cond_42
    const-string v0, "SurfaceViewRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "No surface to draw on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {v8}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    goto :goto_2f

    .line 465
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    .line 471
    :cond_65
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->checkConsistentLayout()Z

    move-result v0

    if-nez v0, :cond_72

    .line 473
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->makeBlack()V

    .line 474
    invoke-static {v8}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    goto :goto_2f

    .line 480
    :cond_72
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_75
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->surfaceWidth()I

    move-result v0

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_8d

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->surfaceHeight()I

    move-result v0

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v0, v2, :cond_90

    .line 482
    :cond_8d
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->makeBlack()V

    .line 484
    :cond_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_75 .. :try_end_91} :catchall_dc

    .line 486
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 488
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_98
    iget-object v0, v8, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    iget v2, v8, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lorg/webrtc/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object v0

    .line 491
    iget-boolean v2, p0, Lorg/webrtc/SurfaceViewRenderer;->mirror:Z

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->frameAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lorg/webrtc/RendererCommon;->getLayoutMatrix(ZFF)[F

    move-result-object v2

    .line 493
    invoke-static {v0, v2}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v11

    .line 494
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_98 .. :try_end_bb} :catchall_df

    .line 498
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 499
    iget-boolean v0, v8, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v0, :cond_15c

    .line 501
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    if-nez v0, :cond_e2

    .line 502
    new-array v0, v6, [I

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    move v0, v7

    .line 503
    :goto_cd
    if-ge v0, v6, :cond_e2

    .line 504
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    const/16 v2, 0xde1

    invoke-static {v2}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v2

    aput v2, v1, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 484
    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit v1
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v0

    .line 494
    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    .line 507
    :cond_e2
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    iget v2, v8, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v3, v8, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget-object v4, v8, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    iget-object v5, v8, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/RendererCommon$YuvUploader;->uploadYuvData([III[I[Ljava/nio/ByteBuffer;)V

    .line 509
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->yuvTextures:[I

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->y:I

    move-object v2, v11

    move v3, v7

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lorg/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIII)V

    .line 514
    :goto_103
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->swapBuffers()V

    .line 515
    invoke-static {v8}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 516
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_10e
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    if-nez v0, :cond_13d

    .line 518
    iput-wide v9, p0, Lorg/webrtc/SurfaceViewRenderer;->firstFrameTimeNs:J

    .line 519
    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_117
    .catchall {:try_start_10e .. :try_end_117} :catchall_159

    .line 520
    :try_start_117
    const-string v0, "SurfaceViewRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Reporting first rendered frame."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_13c

    .line 522
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 524
    :cond_13c
    monitor-exit v2
    :try_end_13d
    .catchall {:try_start_117 .. :try_end_13d} :catchall_16f

    .line 526
    :cond_13d
    :try_start_13d
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    .line 527
    iget-wide v2, p0, Lorg/webrtc/SurfaceViewRenderer;->renderTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/webrtc/SurfaceViewRenderer;->renderTimeNs:J

    .line 528
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    rem-int/lit16 v0, v0, 0x12c

    if-nez v0, :cond_156

    .line 529
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->logStatistics()V

    .line 531
    :cond_156
    monitor-exit v1

    goto/16 :goto_2f

    :catchall_159
    move-exception v0

    monitor-exit v1
    :try_end_15b
    .catchall {:try_start_13d .. :try_end_15b} :catchall_159

    throw v0

    .line 511
    :cond_15c
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    iget v1, v8, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->y:I

    move-object v2, v11

    move v3, v7

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lorg/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIII)V

    goto :goto_103

    .line 524
    :catchall_16f
    move-exception v0

    :try_start_170
    monitor-exit v2
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    :try_start_171
    throw v0
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_159
.end method

.method private runOnRenderThread(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 411
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_3
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 413
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    :cond_c
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .registers 7

    .prologue
    .line 547
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_3
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameWidth:I

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    if-ne v0, v2, :cond_15

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameHeight:I

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    if-ne v0, v2, :cond_15

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    if-eq v0, v2, :cond_72

    .line 550
    :cond_15
    const-string v0, "SurfaceViewRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Reporting frame resolution changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_5e

    .line 553
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget v4, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    invoke-interface {v0, v2, v3, v4}, Lorg/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 555
    :cond_5e
    iget v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameWidth:I

    .line 556
    iget v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameHeight:I

    .line 557
    iget v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    .line 558
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$6;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$6;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->post(Ljava/lang/Runnable;)Z

    .line 564
    :cond_72
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v0
.end method


# virtual methods
.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V
    .registers 5

    .prologue
    .line 158
    sget-object v0, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    new-instance v1, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v1}, Lorg/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    .line 159
    return-void
.end method

.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .registers 9

    .prologue
    .line 169
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_3
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Already initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0

    .line 173
    :cond_27
    :try_start_27
    const-string v0, "SurfaceViewRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Initializing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-object p2, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    .line 175
    iput-object p4, p0, Lorg/webrtc/SurfaceViewRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "SurfaceViewRenderer"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    invoke-static {p1, p3}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 179
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 180
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_27 .. :try_end_69} :catchall_24

    .line 181
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->tryCreateEglSurface()V

    .line 182
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .prologue
    .line 363
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_3
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    sub-int v2, p4, p2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 365
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutSize:Landroid/graphics/Point;

    sub-int v2, p5, p3

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 366
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 368
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 369
    return-void

    .line 366
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    .line 341
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_3
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameWidth:I

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameHeight:I

    if-nez v0, :cond_10

    .line 343
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 344
    monitor-exit v1

    .line 359
    :goto_f
    return-void

    .line 346
    :cond_10
    invoke-direct {p0, p1, p2}, Lorg/webrtc/SurfaceViewRenderer;->getDesiredLayoutSize(II)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    .line 347
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getMeasuredWidth()I

    move-result v2

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getMeasuredHeight()I

    move-result v2

    if-eq v0, v2, :cond_39

    .line 351
    :cond_2a
    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_46

    .line 352
    :try_start_2d
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_38

    .line 353
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/webrtc/SurfaceViewRenderer;->makeBlackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 355
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_49

    .line 357
    :cond_39
    :try_start_39
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->desiredLayoutSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v2}, Lorg/webrtc/SurfaceViewRenderer;->setMeasuredDimension(II)V

    .line 358
    monitor-exit v1

    goto :goto_f

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_46

    throw v0

    .line 355
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_46
.end method

.method public release()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 211
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 212
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_a
    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_2c

    .line 214
    const-string v0, "SurfaceViewRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Already released"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    monitor-exit v1

    .line 259
    :goto_2b
    return-void

    .line 221
    :cond_2c
    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v3, Lorg/webrtc/SurfaceViewRenderer$4;

    invoke-direct {v3, p0, v0}, Lorg/webrtc/SurfaceViewRenderer$4;-><init>(Lorg/webrtc/SurfaceViewRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 237
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 238
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_6d

    .line 240
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 241
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 242
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_45
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v0, :cond_51

    .line 244
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-static {v0}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 247
    :cond_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_70

    .line 249
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;)V

    .line 250
    iput-object v4, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThread:Landroid/os/HandlerThread;

    .line 252
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    const/4 v0, 0x0

    :try_start_5d
    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameWidth:I

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameHeight:I

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    .line 257
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_73

    .line 258
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->resetStatistics()V

    goto :goto_2b

    .line 238
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    .line 247
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0

    .line 257
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0
.end method

.method public renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .registers 6

    .prologue
    .line 296
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_3
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesReceived:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesReceived:I

    .line 298
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_32

    .line 299
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_d
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_35

    .line 301
    const-string v0, "SurfaceViewRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Dropping frame - Not initialized or already released."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 304
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_5a

    .line 319
    :goto_31
    return-void

    .line 298
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 306
    :cond_35
    :try_start_35
    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_5a

    .line 307
    :try_start_38
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v0, :cond_4b

    .line 309
    iget-object v3, p0, Lorg/webrtc/SurfaceViewRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_60

    .line 310
    :try_start_3f
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesDropped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesDropped:I

    .line 311
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_5d

    .line 312
    :try_start_46
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-static {v0}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 314
    :cond_4b
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 315
    invoke-direct {p0, p1}, Lorg/webrtc/SurfaceViewRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 316
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/webrtc/SurfaceViewRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_60

    .line 318
    :try_start_58
    monitor-exit v1

    goto :goto_31

    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5a

    throw v0

    .line 311
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v0

    .line 317
    :catchall_60
    move-exception v0

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_60

    :try_start_62
    throw v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_5a
.end method

.method public resetStatistics()V
    .registers 5

    .prologue
    .line 266
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesReceived:I

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesDropped:I

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->framesRendered:I

    .line 270
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/SurfaceViewRenderer;->firstFrameTimeNs:J

    .line 271
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/SurfaceViewRenderer;->renderTimeNs:J

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setMirror(Z)V
    .registers 4

    .prologue
    .line 279
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_3
    iput-boolean p1, p0, Lorg/webrtc/SurfaceViewRenderer;->mirror:Z

    .line 281
    monitor-exit v1

    .line 282
    return-void

    .line 281
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V
    .registers 4

    .prologue
    .line 288
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_3
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer;->scalingType:Lorg/webrtc/RendererCommon$ScalingType;

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    .prologue
    .line 398
    const-string v0, "SurfaceViewRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Surface changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_2d
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iput p3, v0, Landroid/graphics/Point;->x:I

    .line 401
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    iput p4, v0, Landroid/graphics/Point;->y:I

    .line 402
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_3c

    .line 404
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 405
    return-void

    .line 402
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    .prologue
    .line 374
    const-string v0, "SurfaceViewRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Surface created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isSurfaceCreated:Z

    .line 377
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 378
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->tryCreateEglSurface()V

    .line 379
    return-void

    .line 377
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    .prologue
    .line 383
    const-string v0, "SurfaceViewRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Surface destroyed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const/4 v0, 0x0

    :try_start_20
    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isSurfaceCreated:Z

    .line 386
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 387
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceSize:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 388
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_36

    .line 389
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$5;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$5;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 394
    return-void

    .line 388
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public tryCreateEglSurface()V
    .registers 2

    .prologue
    .line 190
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$3;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$3;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method
