.class public Lorg/webrtc/VideoCapturerAndroid;
.super Lorg/webrtc/VideoCapturer;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# static fields
.field private static final CAMERA_FREEZE_REPORT_TIMOUT_MS:I = 0x1770

.field private static final CAMERA_OBSERVER_PERIOD_MS:I = 0x7d0

.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "VideoCapturerAndroid"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private camera:Landroid/hardware/Camera;

.field private final cameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private final cameraIdLock:Ljava/lang/Object;

.field private final cameraObserver:Ljava/lang/Runnable;

.field private final cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

.field private cameraThread:Landroid/os/HandlerThread;

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private dropNextFrame:Z

.field private final eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

.field private firstFrameReported:Z

.field private frameObserver:Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;

.field private id:I

.field private info:Landroid/hardware/Camera$CameraInfo;

.field private final isCapturingToTexture:Z

.field private openCameraAttempts:I

.field private openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

.field private volatile pendingCameraSwitch:Z

.field private final pendingCameraSwitchLock:Ljava/lang/Object;

.field private final queuedBuffers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end field

.field private requestedFramerate:I

.field private requestedHeight:I

.field private requestedWidth:I

.field final surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, p1, v0, v0}, Lorg/webrtc/VideoCapturerAndroid;-><init>(ILorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)V

    .line 325
    return-void
.end method

.method private constructor <init>(ILorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-direct {p0}, Lorg/webrtc/VideoCapturer;-><init>()V

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitchLock:Ljava/lang/Object;

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;

    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    .line 101
    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    .line 110
    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$1;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoCapturerAndroid$1;-><init>(Lorg/webrtc/VideoCapturerAndroid;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 128
    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$2;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoCapturerAndroid$2;-><init>(Lorg/webrtc/VideoCapturerAndroid;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraObserver:Ljava/lang/Runnable;

    .line 329
    iput p1, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    .line 330
    iput-object p2, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    .line 331
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VideoCapturerAndroid"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    .line 332
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 333
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    .line 334
    if-eqz p3, :cond_4e

    const/4 v0, 0x1

    :cond_4e
    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    .line 335
    new-instance v0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-direct {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    .line 336
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    invoke-static {p3, v0}, Lorg/webrtc/SurfaceTextureHelper;->create(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 337
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    if-eqz v0, :cond_68

    .line 338
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lorg/webrtc/SurfaceTextureHelper;->setListener(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 340
    :cond_68
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCapturerAndroid isCapturingToTexture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/VideoCapturerAndroid;IIILorg/webrtc/VideoCapturerAndroid$CapturerObserver;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 65
    invoke-direct/range {p0 .. p5}, Lorg/webrtc/VideoCapturerAndroid;->startCaptureOnCameraThread(IIILorg/webrtc/VideoCapturerAndroid$CapturerObserver;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/webrtc/VideoCapturerAndroid;)V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->stopCaptureOnCameraThread()V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/VideoCapturerAndroid;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/VideoCapturerAndroid;)Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/VideoCapturerAndroid;)V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->switchCameraOnCameraThread()V

    return-void
.end method

.method static synthetic access$500(Lorg/webrtc/VideoCapturerAndroid;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lorg/webrtc/VideoCapturerAndroid;Z)Z
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitch:Z

    return p1
.end method

.method static synthetic access$700(Lorg/webrtc/VideoCapturerAndroid;)Landroid/hardware/Camera$CameraInfo;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method static synthetic access$800(Lorg/webrtc/VideoCapturerAndroid;III)V
    .registers 4

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid;->onOutputFormatRequestOnCameraThread(III)V

    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/VideoCapturerAndroid;III)V
    .registers 4

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid;->startPreviewOnCameraThread(III)V

    return-void
.end method

.method private checkIsOnCameraThread()V
    .registers 3

    .prologue
    .line 344
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_10

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_10
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;)Lorg/webrtc/VideoCapturerAndroid;
    .registers 3

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/webrtc/VideoCapturerAndroid;->create(Ljava/lang/String;Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/VideoCapturerAndroid;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/VideoCapturerAndroid;
    .registers 6

    .prologue
    .line 212
    invoke-static {p0}, Lorg/webrtc/VideoCapturerAndroid;->lookupDeviceName(Ljava/lang/String;)I

    move-result v1

    .line 213
    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    .line 214
    const/4 v0, 0x0

    .line 221
    :goto_8
    return-object v0

    .line 217
    :cond_9
    new-instance v0, Lorg/webrtc/VideoCapturerAndroid;

    invoke-direct {v0, v1, p1, p2}, Lorg/webrtc/VideoCapturerAndroid;-><init>(ILorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)V

    .line 219
    iget-object v1, v0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-static {v0, v1}, Lorg/webrtc/VideoCapturerAndroid;->nativeCreateVideoCapturer(Lorg/webrtc/VideoCapturerAndroid;Lorg/webrtc/SurfaceTextureHelper;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/VideoCapturerAndroid;->setNativeCapturer(J)V

    goto :goto_8
.end method

.method private getDeviceOrientation()I
    .registers 3

    .prologue
    .line 640
    .line 642
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 644
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 656
    const/4 v0, 0x0

    .line 659
    :goto_16
    return v0

    .line 646
    :pswitch_17
    const/16 v0, 0x5a

    .line 647
    goto :goto_16

    .line 649
    :pswitch_1a
    const/16 v0, 0xb4

    .line 650
    goto :goto_16

    .line 652
    :pswitch_1d
    const/16 v0, 0x10e

    .line 653
    goto :goto_16

    .line 644
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method private getFrameOrientation()I
    .registers 3

    .prologue
    .line 663
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getDeviceOrientation()I

    move-result v0

    .line 664
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_c

    .line 665
    rsub-int v0, v0, 0x168

    .line 667
    :cond_c
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getSupportedFormatsAsJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lorg/webrtc/VideoCapturerAndroid;->getCurrentCameraId()I

    move-result v0

    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getSupportedFormatsAsJson(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static lookupDeviceName(Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 352
    const-string v2, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookupDeviceName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-eqz p0, :cond_22

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    .line 364
    :cond_23
    :goto_23
    return v0

    .line 356
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 359
    :goto_2a
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 360
    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3d
    move v0, v1

    .line 364
    goto :goto_23
.end method

.method private static native nativeCreateVideoCapturer(Lorg/webrtc/VideoCapturerAndroid;Lorg/webrtc/SurfaceTextureHelper;)J
.end method

.method private onOutputFormatRequestOnCameraThread(III)V
    .registers 7

    .prologue
    .line 624
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 625
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_f

    .line 626
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Calling onOutputFormatRequest() on stopped camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_e
    return-void

    .line 629
    :cond_f
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputFormatRequestOnCameraThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;->onOutputFormatRequest(III)V

    goto :goto_e
.end method

.method private release()V
    .registers 3

    .prologue
    .line 370
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "release"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lorg/webrtc/VideoCapturerAndroid;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_15
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$6;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoCapturerAndroid$6;-><init>(Lorg/webrtc/VideoCapturerAndroid;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 382
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->disconnect(Landroid/os/Handler;)V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    .line 384
    return-void
.end method

.method private startCaptureOnCameraThread(IIILorg/webrtc/VideoCapturerAndroid$CapturerObserver;Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 418
    const/4 v1, 0x0

    .line 419
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 420
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_11

    .line 421
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera has already been started."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_11
    iput-object p5, p0, Lorg/webrtc/VideoCapturerAndroid;->applicationContext:Landroid/content/Context;

    .line 424
    iput-object p4, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;

    .line 425
    iput-boolean v7, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    .line 429
    :try_start_17
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1a} :catch_a6

    .line 430
    :try_start_1a
    const-string v0, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_3f

    .line 432
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    iget v3, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    invoke-interface {v0, v3}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraOpening(I)V

    .line 434
    :cond_3f
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    .line 435
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    .line 436
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 437
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_1a .. :try_end_56} :catchall_a3

    .line 456
    :try_start_56
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v2}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_ee
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_61} :catch_d0

    .line 462
    :try_start_61
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " .Device orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getDeviceOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid;->startPreviewOnCameraThread(III)V

    .line 466
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;->onCapturerStarted(Z)V

    .line 469
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraObserver:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_a2} :catch_d0

    .line 480
    :cond_a2
    :goto_a2
    return-void

    .line 437
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    :try_start_a5
    throw v0
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_a6} :catch_a6

    .line 438
    :catch_a6
    move-exception v0

    .line 439
    :try_start_a7
    iget v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    .line 440
    iget v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_ea

    .line 441
    const-string v1, "VideoCapturerAndroid"

    const-string v2, "Camera.open failed, retrying"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    new-instance v0, Lorg/webrtc/VideoCapturerAndroid$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/VideoCapturerAndroid$8;-><init>(Lorg/webrtc/VideoCapturerAndroid;IIILorg/webrtc/VideoCapturerAndroid$CapturerObserver;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    .line 448
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_cf} :catch_d0

    goto :goto_a2

    .line 471
    :catch_d0
    move-exception v0

    .line 474
    const-string v1, "VideoCapturerAndroid"

    const-string v2, "startCapture failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->stopCaptureOnCameraThread()V

    .line 476
    invoke-interface {p4, v7}, Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;->onCapturerStarted(Z)V

    .line 477
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_a2

    .line 478
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    const-string v1, "Camera can not be started."

    invoke-interface {v0, v1}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    goto :goto_a2

    .line 451
    :cond_ea
    const/4 v1, 0x0

    :try_start_eb
    iput v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    .line 452
    throw v0

    .line 457
    :catch_ee
    move-exception v0

    .line 458
    const-string v2, "VideoCapturerAndroid"

    const-string v3, "setPreviewTexture failed"

    invoke-static {v2, v3, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_fc
    .catch Ljava/lang/RuntimeException; {:try_start_eb .. :try_end_fc} :catch_d0
.end method

.method private startPreviewOnCameraThread(III)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 485
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 486
    const-string v1, "VideoCapturerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewOnCameraThread requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_3d

    .line 489
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Calling startPreviewOnCameraThread on stopped camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_3c
    :goto_3c
    return-void

    .line 493
    :cond_3d
    iput p1, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedWidth:I

    .line 494
    iput p2, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedHeight:I

    .line 495
    iput p3, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedFramerate:I

    .line 498
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 499
    mul-int/lit16 v2, p3, 0x3e8

    invoke-static {v1, v2}, Lorg/webrtc/CameraEnumerationAndroid;->getFramerateRange(Landroid/hardware/Camera$Parameters;I)[I

    move-result-object v2

    .line 500
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 503
    new-instance v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    aget v6, v2, v0

    aget v2, v2, v7

    invoke-direct {v4, v5, v3, v6, v2}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IIII)V

    .line 509
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    invoke-virtual {v4, v2}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->isSameFormat(Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 514
    const-string v2, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVideoStabilizationSupported: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 517
    invoke-virtual {v1, v7}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 521
    :cond_91
    iget v2, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    if-lez v2, :cond_9c

    .line 522
    iget v2, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->minFramerate:I

    iget v3, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 524
    :cond_9c
    iget v2, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v3, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 526
    iget-boolean v2, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    if-nez v2, :cond_af

    .line 527
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 531
    :cond_af
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 534
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 537
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    if-eqz v2, :cond_cf

    .line 538
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 539
    iput-boolean v7, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    .line 542
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 546
    :cond_cf
    const-string v2, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start capturing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iput-object v4, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 549
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 550
    const-string v3, "continuous-video"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 551
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 554
    :cond_fa
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 555
    iget-boolean v1, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    if-nez v1, :cond_12d

    .line 556
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 557
    invoke-virtual {v4}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v1

    .line 558
    :goto_10c
    const/4 v2, 0x3

    if-ge v0, v2, :cond_128

    .line 559
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 560
    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_10c

    .line 563
    :cond_128
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 565
    :cond_12d
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_3c
.end method

.method private stopCaptureOnCameraThread()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 584
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "stopCaptureOnCameraThread"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 586
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    .line 589
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_25

    .line 590
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Calling stopCapture() for already stopped camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_24
    :goto_24
    return-void

    .line 594
    :cond_25
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraObserver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-virtual {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->getAndResetFrameCount()I

    .line 596
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Stop preview."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 598
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 599
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 600
    iput-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 602
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Release camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 604
    iput-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    .line 605
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_24

    .line 606
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    invoke-interface {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraClosed()V

    goto :goto_24
.end method

.method private switchCameraOnCameraThread()V
    .registers 7

    .prologue
    .line 611
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 612
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "switchCameraOnCameraThread"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->stopCaptureOnCameraThread()V

    .line 614
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_10
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    rem-int/2addr v0, v2

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    .line 616
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_35

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    .line 618
    iget v1, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedWidth:I

    iget v2, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedHeight:I

    iget v3, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedFramerate:I

    iget-object v4, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;

    iget-object v5, p0, Lorg/webrtc/VideoCapturerAndroid;->applicationContext:Landroid/content/Context;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/VideoCapturerAndroid;->startCaptureOnCameraThread(IIILorg/webrtc/VideoCapturerAndroid$CapturerObserver;Landroid/content/Context;)V

    .line 620
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "switchCameraOnCameraThread done"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void

    .line 616
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method


# virtual methods
.method public changeCaptureFormat(III)V
    .registers 6

    .prologue
    .line 293
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid$5;-><init>(Lorg/webrtc/VideoCapturerAndroid;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method getCameraThreadHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getCurrentCameraId()I
    .registers 3

    .prologue
    .line 303
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_3
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    monitor-exit v1

    return v0

    .line 305
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getSupportedFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/webrtc/VideoCapturerAndroid;->getCurrentCameraId()I

    move-result v0

    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getSupportedFormats(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCapturingToTexture()Z
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    return v0
.end method

.method public isReleased()Z
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onOutputFormatRequest(III)V
    .registers 6

    .prologue
    .line 283
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid$4;-><init>(Lorg/webrtc/VideoCapturerAndroid;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 10

    .prologue
    .line 673
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 674
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 694
    :cond_f
    :goto_f
    return-void

    .line 678
    :cond_10
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-eq v0, p2, :cond_1c

    .line 679
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected camera in callback!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_1c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 685
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    if-nez v0, :cond_36

    .line 686
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    invoke-interface {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onFirstFrameAvailable()V

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    .line 690
    :cond_36
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-virtual {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->addFrame()V

    .line 691
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v2, v1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v3, v1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getFrameOrientation()I

    move-result v4

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;->onByteBufferFrameCaptured([BIIIJ)V

    .line 693
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_f
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .registers 13

    .prologue
    .line 699
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 700
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_d

    .line 702
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 721
    :goto_c
    return-void

    .line 705
    :cond_d
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    if-eqz v0, :cond_1a

    .line 706
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    goto :goto_c

    .line 711
    :cond_1a
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getFrameOrientation()I

    move-result v5

    .line 712
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 715
    invoke-static {}, Lorg/webrtc/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v0

    invoke-static {p2, v0}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v4

    .line 718
    :goto_2d
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-virtual {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->addFrame()V

    .line 719
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v1, v1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v2, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    move v3, p1

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;->onTextureFrameCaptured(III[FIJ)V

    goto :goto_c

    :cond_42
    move-object v4, p2

    goto :goto_2d
.end method

.method public printStackTrace()V
    .registers 6

    .prologue
    .line 225
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_26

    .line 226
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 227
    array-length v0, v1

    if-lez v0, :cond_26

    .line 228
    const-string v0, "VideoCapturerAndroid"

    const-string v2, "VideoCapturerAndroid stacks trace:"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    array-length v2, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_26

    aget-object v3, v1, v0

    .line 230
    const-string v4, "VideoCapturerAndroid"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 234
    :cond_26
    return-void
.end method

.method startCapture(IIILandroid/content/Context;Lorg/webrtc/VideoCapturerAndroid$CapturerObserver;)V
    .registers 14

    .prologue
    .line 398
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-nez p4, :cond_36

    .line 401
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_36
    if-nez p5, :cond_40

    .line 404
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "frameObserver not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_40
    iget-object v7, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/VideoCapturerAndroid$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/VideoCapturerAndroid$7;-><init>(Lorg/webrtc/VideoCapturerAndroid;IIILorg/webrtc/VideoCapturerAndroid$CapturerObserver;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method stopCapture()V
    .registers 4

    .prologue
    .line 570
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "stopCapture"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 572
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/VideoCapturerAndroid$9;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/VideoCapturerAndroid$9;-><init>(Lorg/webrtc/VideoCapturerAndroid;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 579
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "stopCapture done"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public switchCamera(Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;)V
    .registers 5

    .prologue
    .line 239
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    .line 240
    if-eqz p1, :cond_e

    .line 241
    const-string v0, "No camera to switch to."

    invoke-interface {p1, v0}, Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 275
    :cond_e
    :goto_e
    return-void

    .line 245
    :cond_f
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_12
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitch:Z

    if-eqz v0, :cond_29

    .line 249
    const-string v0, "VideoCapturerAndroid"

    const-string v2, "Ignoring camera switch request."

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz p1, :cond_24

    .line 251
    const-string v0, "Pending camera switch already in progress."

    invoke-interface {p1, v0}, Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 253
    :cond_24
    monitor-exit v1

    goto :goto_e

    .line 256
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    throw v0

    .line 255
    :cond_29
    const/4 v0, 0x1

    :try_start_2a
    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitch:Z

    .line 256
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_26

    .line 257
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$3;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/VideoCapturerAndroid$3;-><init>(Lorg/webrtc/VideoCapturerAndroid;Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method
