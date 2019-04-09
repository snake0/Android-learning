.class Lorg/webrtc/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lorg/webrtc/EglBase;

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isOwningThread:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field private final oesTextureId:I

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;


# direct methods
.method private constructor <init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;Z)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 320
    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 321
    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 325
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_20
    iput-object p2, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 329
    iput-boolean p3, p0, Lorg/webrtc/SurfaceTextureHelper;->isOwningThread:Z

    .line 331
    sget-object v0, Lorg/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, v0}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    .line 332
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 333
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->makeCurrent()V

    .line 335
    const v0, 0x8d65

    invoke-static {v0}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 336
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;ZLorg/webrtc/SurfaceTextureHelper$1;)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/SurfaceTextureHelper;-><init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$102(Lorg/webrtc/SurfaceTextureHelper;Z)Z
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return p1
.end method

.method static synthetic access$200(Lorg/webrtc/SurfaceTextureHelper;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/SurfaceTextureHelper;)Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method static synthetic access$302(Lorg/webrtc/SurfaceTextureHelper;Z)Z
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return p1
.end method

.method static synthetic access$400(Lorg/webrtc/SurfaceTextureHelper;)Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    return v0
.end method

.method static synthetic access$402(Lorg/webrtc/SurfaceTextureHelper;Z)Z
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    return p1
.end method

.method static synthetic access$500(Lorg/webrtc/SurfaceTextureHelper;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->release()V

    return-void
.end method

.method public static create(Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/webrtc/SurfaceTextureHelper;->create(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;)Lorg/webrtc/SurfaceTextureHelper;
    .registers 4

    .prologue
    .line 80
    if-eqz p1, :cond_f

    move-object v0, p1

    .line 91
    :goto_3
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/webrtc/SurfaceTextureHelper$1;-><init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/SurfaceTextureHelper;

    return-object v0

    .line 83
    :cond_f
    new-instance v1, Landroid/os/HandlerThread;

    const-string v0, "SurfaceTextureHelper"

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_3
.end method

.method private getYuvConverter()Lorg/webrtc/SurfaceTextureHelper$YuvConverter;
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    if-eqz v0, :cond_7

    .line 342
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    .line 347
    :goto_6
    return-object v0

    .line 344
    :cond_7
    monitor-enter p0

    .line 345
    :try_start_8
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    if-nez v0, :cond_19

    .line 346
    new-instance v0, Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/webrtc/SurfaceTextureHelper$YuvConverter;-><init>(Lorg/webrtc/EglBase$Context;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    .line 347
    :cond_19
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    monitor-exit p0

    goto :goto_6

    .line 348
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private release()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1a
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_2a

    .line 476
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_2a
    monitor-enter p0

    .line 479
    :try_start_2b
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    if-eqz v0, :cond_34

    .line 480
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper$YuvConverter;->release()V

    .line 481
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_57

    .line 482
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->makeCurrent()V

    .line 483
    new-array v0, v3, [I

    iget v1, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 484
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 485
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 486
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 487
    return-void

    .line 481
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method private tryDeliverTextureFrame()V
    .registers 6

    .prologue
    .line 451
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_18

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_18
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-eqz v0, :cond_25

    .line 469
    :cond_24
    :goto_24
    return-void

    .line 457
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 460
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->makeCurrent()V

    .line 461
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 463
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 464
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 465
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_52

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 468
    :goto_4a
    iget-object v3, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    iget v4, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    invoke-interface {v3, v4, v2, v0, v1}, Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;->onTextureFrameAvailable(I[FJ)V

    goto :goto_24

    .line 465
    :cond_52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    goto :goto_4a
.end method


# virtual methods
.method public disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 405
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isOwningThread:Z

    if-nez v0, :cond_d

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call disconnect(handler)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_d
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 409
    iput-boolean v2, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 410
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_26

    .line 411
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->release()V

    .line 426
    :cond_26
    :goto_26
    return-void

    .line 415
    :cond_27
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 416
    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/SurfaceTextureHelper$4;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/SurfaceTextureHelper$4;-><init>(Lorg/webrtc/SurfaceTextureHelper;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 425
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_26
.end method

.method public disconnect(Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 435
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    if-eq v0, p1, :cond_c

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong handler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isOwningThread:Z

    .line 439
    invoke-virtual {p0}, Lorg/webrtc/SurfaceTextureHelper;->disconnect()V

    .line 440
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isTextureInUse()Z
    .registers 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method public returnTextureFrame()V
    .registers 3

    .prologue
    .line 383
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$3;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$3;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method public setListener(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-eqz v0, :cond_c

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceTextureHelper listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_c
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 360
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$2;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$2;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 367
    return-void
.end method

.method public textureToYUV(Ljava/nio/ByteBuffer;IIII[F)V
    .registers 14

    .prologue
    .line 444
    iget v0, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    if-eq p5, v0, :cond_c

    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "textureToByteBuffer called with unexpected textureId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_c
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->getYuvConverter()Lorg/webrtc/SurfaceTextureHelper$YuvConverter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/SurfaceTextureHelper$YuvConverter;->convert(Ljava/nio/ByteBuffer;IIII[F)V

    .line 448
    return-void
.end method
