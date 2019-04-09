.class public Lorg/webrtc/VideoRendererGui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoRendererGui"

.field private static drawThread:Ljava/lang/Thread;

.field private static eglContext:Lorg/webrtc/EglBase$Context;

.field private static eglContextReady:Ljava/lang/Runnable;

.field private static instance:Lorg/webrtc/VideoRendererGui;

.field private static renderFrameThread:Ljava/lang/Thread;


# instance fields
.field private onSurfaceCreatedCalled:Z

.field private screenHeight:I

.field private screenWidth:I

.field private surface:Landroid/opengl/GLSurfaceView;

.field private final yuvImageRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/VideoRendererGui$YuvImageRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    .line 59
    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    .line 62
    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    return-void
.end method

.method private constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 80
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 81
    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$400()Lorg/webrtc/VideoRendererGui;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/VideoRendererGui;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    return v0
.end method

.method static synthetic access$600(Lorg/webrtc/VideoRendererGui;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    return v0
.end method

.method public static declared-synchronized create(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    .registers 14

    .prologue
    .line 469
    const-class v7, Lorg/webrtc/VideoRendererGui;

    monitor-enter v7

    :try_start_3
    new-instance v6, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v6}, Lorg/webrtc/GlRectDrawer;-><init>()V

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit v7

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized create(IIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    .registers 19

    .prologue
    .line 480
    const-class v11, Lorg/webrtc/VideoRendererGui;

    monitor-enter v11

    if-ltz p0, :cond_27

    const/16 v0, 0x64

    if-gt p0, v0, :cond_27

    if-ltz p1, :cond_27

    const/16 v0, 0x64

    if-gt p1, v0, :cond_27

    if-ltz p2, :cond_27

    const/16 v0, 0x64

    if-gt p2, v0, :cond_27

    if-ltz p3, :cond_27

    const/16 v0, 0x64

    if-gt p3, v0, :cond_27

    add-int v0, p0, p2

    const/16 v1, 0x64

    if-gt v0, v1, :cond_27

    add-int v0, p1, p3

    const/16 v1, 0x64

    if-le v0, v1, :cond_32

    .line 483
    :cond_27
    :try_start_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incorrect window parameters."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 480
    :catchall_2f
    move-exception v0

    monitor-exit v11

    throw v0

    .line 486
    :cond_32
    :try_start_32
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_3e

    .line 487
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to create yuv renderer before setting GLSurfaceView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_3e
    new-instance v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    sget-object v1, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v1, v1, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v2, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;-><init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoRendererGui$1;)V

    .line 493
    sget-object v1, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v1, v1, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_5f
    .catchall {:try_start_32 .. :try_end_5f} :catchall_2f

    .line 494
    :try_start_5f
    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-boolean v2, v2, Lorg/webrtc/VideoRendererGui;->onSurfaceCreatedCalled:Z

    if-eqz v2, :cond_7a

    .line 498
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 499
    sget-object v3, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v3, v3, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    new-instance v4, Lorg/webrtc/VideoRendererGui$1;

    invoke-direct {v4, v0, v2}, Lorg/webrtc/VideoRendererGui$1;-><init>(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_8b

    .line 510
    :try_start_77
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7a} :catch_84
    .catchall {:try_start_77 .. :try_end_7a} :catchall_8b

    .line 516
    :cond_7a
    :try_start_7a
    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v2, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_8b

    .line 518
    monitor-exit v11

    return-object v0

    .line 511
    :catch_84
    move-exception v0

    .line 512
    :try_start_85
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 517
    :catchall_8b
    move-exception v0

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_2f
.end method

.method public static createGui(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRenderer;
    .registers 8

    .prologue
    .line 451
    invoke-static/range {p0 .. p5}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    move-result-object v0

    .line 453
    new-instance v1, Lorg/webrtc/VideoRenderer;

    invoke-direct {v1, v0}, Lorg/webrtc/VideoRenderer;-><init>(Lorg/webrtc/VideoRenderer$Callbacks;)V

    return-object v1
.end method

.method public static createGuiRenderer(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRenderer$Callbacks;
    .registers 7

    .prologue
    .line 459
    invoke-static/range {p0 .. p5}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized dispose()V
    .registers 4

    .prologue
    .line 427
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_30

    if-nez v0, :cond_9

    .line 443
    :goto_7
    monitor-exit v1

    return-void

    .line 430
    :cond_9
    :try_start_9
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.dispose"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_30

    .line 432
    :try_start_15
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 433
    # invokes: Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->release()V
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$100(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_1d

    .line 436
    :catchall_2d
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 427
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0

    .line 435
    :cond_33
    :try_start_33
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 436
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_2d

    .line 437
    const/4 v0, 0x0

    :try_start_3c
    sput-object v0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    .line 438
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    .line 439
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    .line 440
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    .line 441
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    .line 442
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_30

    goto :goto_7
.end method

.method public static declared-synchronized getEglBaseContext()Lorg/webrtc/EglBase$Context;
    .registers 2

    .prologue
    .line 422
    const-class v0, Lorg/webrtc/VideoRendererGui;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 586
    if-eqz p0, :cond_33

    .line 587
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 588
    array-length v0, v1

    if-lez v0, :cond_33

    .line 589
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stacks trace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    array-length v2, v1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v2, :cond_33

    aget-object v3, v1, v0

    .line 591
    const-string v4, "VideoRendererGui"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 595
    :cond_33
    return-void
.end method

.method public static declared-synchronized printStackTraces()V
    .registers 3

    .prologue
    .line 598
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_18

    if-nez v0, :cond_9

    .line 603
    :goto_7
    monitor-exit v1

    return-void

    .line 601
    :cond_9
    :try_start_9
    sget-object v0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    const-string v2, "Render frame thread"

    invoke-static {v0, v2}, Lorg/webrtc/VideoRendererGui;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 602
    sget-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    const-string v2, "Draw thread"

    invoke-static {v0, v2}, Lorg/webrtc/VideoRendererGui;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    goto :goto_7

    .line 598
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized remove(Lorg/webrtc/VideoRenderer$Callbacks;)V
    .registers 5

    .prologue
    .line 555
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_3
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.remove"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_19

    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to remove renderer before setting GLSurfaceView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_16

    .line 555
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    .line 560
    :cond_19
    :try_start_19
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_16

    .line 561
    :try_start_1e
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 562
    const/4 v3, -0x1

    if-ne v0, v3, :cond_33

    .line 563
    const-string v0, "VideoRendererGui"

    const-string v3, "Couldn\'t remove renderer (not present in current list)"

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_41

    .line 568
    monitor-exit v1

    return-void

    .line 565
    :cond_33
    :try_start_33
    sget-object v3, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v3, v3, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    # invokes: Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->release()V
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$100(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_30

    .line 567
    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_41

    :try_start_43
    throw v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_16
.end method

.method public static declared-synchronized reset(Lorg/webrtc/VideoRenderer$Callbacks;)V
    .registers 5

    .prologue
    .line 571
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_3
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.reset"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_19

    .line 573
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to reset renderer before setting GLSurfaceView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_16

    .line 571
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    .line 576
    :cond_19
    :try_start_19
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_16

    .line 577
    :try_start_1e
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 578
    if-ne v0, p0, :cond_26

    .line 579
    invoke-virtual {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->reset()V

    goto :goto_26

    .line 582
    :catchall_38
    move-exception v0

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_16

    :cond_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 583
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setRendererEvents(Lorg/webrtc/VideoRenderer$Callbacks;Lorg/webrtc/RendererCommon$RendererEvents;)V
    .registers 6

    .prologue
    .line 540
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_3
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.setRendererEvents"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_19

    .line 542
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to set renderer events before setting GLSurfaceView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_16

    .line 540
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    .line 545
    :cond_19
    :try_start_19
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_16

    .line 546
    :try_start_1e
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 547
    if-ne v0, p0, :cond_26

    .line 548
    # setter for: Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;
    invoke-static {v0, p1}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$702(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;Lorg/webrtc/RendererCommon$RendererEvents;)Lorg/webrtc/RendererCommon$RendererEvents;

    goto :goto_26

    .line 551
    :catchall_38
    move-exception v0

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_16

    :cond_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 552
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setView(Landroid/opengl/GLSurfaceView;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 416
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_3
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.setView"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lorg/webrtc/VideoRendererGui;

    invoke-direct {v0, p0}, Lorg/webrtc/VideoRendererGui;-><init>(Landroid/opengl/GLSurfaceView;)V

    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    .line 418
    sput-object p1, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 419
    monitor-exit v1

    return-void

    .line 416
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized update(Lorg/webrtc/VideoRenderer$Callbacks;IIIILorg/webrtc/RendererCommon$ScalingType;Z)V
    .registers 17

    .prologue
    .line 524
    const-class v7, Lorg/webrtc/VideoRendererGui;

    monitor-enter v7

    :try_start_3
    const-string v0, "VideoRendererGui"

    const-string v1, "VideoRendererGui.update"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_19

    .line 526
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to update yuv renderer before setting GLSurfaceView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_16

    .line 524
    :catchall_16
    move-exception v0

    monitor-exit v7

    throw v0

    .line 529
    :cond_19
    :try_start_19
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v8, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_16

    .line 530
    :try_start_1e
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_26
    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 531
    if-ne v0, p0, :cond_26

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 532
    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->setPosition(IIIILorg/webrtc/RendererCommon$ScalingType;Z)V

    goto :goto_26

    .line 535
    :catchall_3f
    move-exception v0

    monitor-exit v8
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_3f

    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_16

    :cond_42
    :try_start_42
    monitor-exit v8
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 536
    monitor-exit v7

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 654
    sget-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    if-nez v0, :cond_b

    .line 655
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    .line 657
    :cond_b
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    iget v1, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 658
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 659
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 660
    :try_start_1a
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 661
    # invokes: Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->draw()V
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$800(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_20

    .line 663
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 664
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9

    .prologue
    .line 641
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoRendererGui.onSurfaceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iput p2, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    .line 644
    iput p3, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    .line 645
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 646
    :try_start_2f
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 647
    iget v3, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    iget v4, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    invoke-virtual {v0, v3, v4}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->setScreenSize(II)V

    goto :goto_35

    .line 649
    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 650
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const v4, 0x3e19999a    # 0.15f

    .line 608
    const-string v0, "VideoRendererGui"

    const-string v1, "VideoRendererGui.onSurfaceCreated"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    .line 611
    :try_start_e
    invoke-static {}, Lorg/webrtc/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 612
    new-instance v0, Lorg/webrtc/EglBase14$Context;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/webrtc/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    .line 617
    :goto_1f
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoRendererGui EGL Context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_68

    .line 620
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 622
    :try_start_3d
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 623
    # invokes: Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->createTextures()V
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$300(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_43

    .line 626
    :catchall_53
    move-exception v0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_53

    throw v0

    .line 614
    :cond_56
    :try_start_56
    new-instance v2, Lorg/webrtc/EglBase10$Context;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/webrtc/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    sput-object v2, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    goto :goto_1f

    .line 618
    :catchall_68
    move-exception v0

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_68

    throw v0

    .line 625
    :cond_6b
    const/4 v0, 0x1

    :try_start_6c
    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui;->onSurfaceCreatedCalled:Z

    .line 626
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_53

    .line 627
    const-string v0, "onSurfaceCreated done"

    invoke-static {v0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 628
    const/16 v0, 0xcf5

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 629
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 632
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    .line 633
    :try_start_81
    sget-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_8a

    .line 634
    sget-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 636
    :cond_8a
    monitor-exit v1

    .line 637
    return-void

    .line 636
    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_8c

    throw v0
.end method
