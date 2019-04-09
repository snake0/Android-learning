.class public final Lcom/mqunar/idscan/a/f;
.super Ljava/lang/Object;


# static fields
.field public static a:[B

.field public static b:[B

.field public static c:I

.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/mqunar/idscan/a/d;

.field private g:Landroid/hardware/Camera;

.field private h:Lcom/mqunar/idscan/a/a;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;

.field private k:Z

.field private l:Z

.field private final m:Lcom/mqunar/idscan/a/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mqunar/idscan/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/mqunar/idscan/a/f;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/a/f;->e:Landroid/content/Context;

    new-instance v0, Lcom/mqunar/idscan/a/d;

    invoke-direct {v0, p1}, Lcom/mqunar/idscan/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    new-instance v0, Lcom/mqunar/idscan/a/g;

    iget-object v1, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    invoke-direct {v0, v1}, Lcom/mqunar/idscan/a/g;-><init>(Lcom/mqunar/idscan/a/d;)V

    iput-object v0, p0, Lcom/mqunar/idscan/a/f;->m:Lcom/mqunar/idscan/a/g;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/os/Handler;)V
    .registers 6

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    if-eqz v0, :cond_6d

    iget-boolean v1, p0, Lcom/mqunar/idscan/a/f;->l:Z

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/mqunar/idscan/a/f;->m:Lcom/mqunar/idscan/a/g;

    const/16 v2, 0x14

    invoke-virtual {v1, p1, v2}, Lcom/mqunar/idscan/a/g;->a(Landroid/os/Handler;I)V

    sget-object v1, Lcom/mqunar/idscan/a/f;->a:[B

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    invoke-virtual {v1}, Lcom/mqunar/idscan/a/d;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    sput-object v1, Lcom/mqunar/idscan/a/f;->a:[B

    :cond_33
    sget-object v1, Lcom/mqunar/idscan/a/f;->b:[B

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    invoke-virtual {v1}, Lcom/mqunar/idscan/a/d;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    sput-object v1, Lcom/mqunar/idscan/a/f;->b:[B

    :cond_55
    sget-boolean v1, Lcom/mqunar/idscan/decode/a;->a:Z

    if-eqz v1, :cond_7f

    sget v1, Lcom/mqunar/idscan/a/f;->c:I

    if-nez v1, :cond_6f

    sget-object v1, Lcom/mqunar/idscan/a/f;->a:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 v1, 0x1

    sput v1, Lcom/mqunar/idscan/a/f;->c:I

    :cond_65
    :goto_65
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mqunar/idscan/decode/a;->a:Z

    :cond_68
    :goto_68
    iget-object v1, p0, Lcom/mqunar/idscan/a/f;->m:Lcom/mqunar/idscan/a/g;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_6d
    .catchall {:try_start_2 .. :try_end_6d} :catchall_7c

    :cond_6d
    monitor-exit p0

    return-void

    :cond_6f
    :try_start_6f
    sget v1, Lcom/mqunar/idscan/a/f;->c:I

    if-ne v1, v3, :cond_65

    sget-object v1, Lcom/mqunar/idscan/a/f;->b:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 v1, 0x0

    sput v1, Lcom/mqunar/idscan/a/f;->c:I
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_7c

    goto :goto_65

    :catchall_7c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7f
    :try_start_7f
    sget v1, Lcom/mqunar/idscan/a/f;->c:I

    if-nez v1, :cond_89

    sget-object v1, Lcom/mqunar/idscan/a/f;->b:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_68

    :cond_89
    sget v1, Lcom/mqunar/idscan/a/f;->c:I

    if-ne v1, v3, :cond_68

    sget-object v1, Lcom/mqunar/idscan/a/f;->a:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_7c

    goto :goto_68
.end method

.method public final declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    if-nez v0, :cond_4e

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-nez v3, :cond_23

    sget-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    const-string v2, "No cameras!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_18
    if-nez v0, :cond_4c

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    move v0, v2

    :goto_24
    if-ge v0, v3, :cond_35

    :try_start_26
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v2, :cond_35

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    if-ge v0, v3, :cond_3c

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_18

    :cond_3c
    const-string v0, "camera_operate"

    const-string v2, "No camera facing back; returning camera #0"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_18

    :cond_4c
    iput-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    :cond_4e
    move-object v2, v0

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v0, p0, Lcom/mqunar/idscan/a/f;->k:Z

    if-nez v0, :cond_5e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/a/f;->k:Z

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    invoke-virtual {v0, v2}, Lcom/mqunar/idscan/a/d;->a(Landroid/hardware/Camera;)V

    :cond_5e
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_61
    .catchall {:try_start_26 .. :try_end_61} :catchall_20

    move-result-object v0

    if-nez v0, :cond_6d

    move-object v0, v1

    :goto_65
    :try_start_65
    iget-object v1, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/idscan/a/d;->a(Landroid/hardware/Camera;Z)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6b} :catch_72
    .catchall {:try_start_65 .. :try_end_6b} :catchall_20

    :cond_6b
    :goto_6b
    monitor-exit p0

    return-void

    :cond_6d
    :try_start_6d
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :catch_72
    move-exception v1

    sget-object v1, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resetting to saved camera params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_6b

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_6d .. :try_end_9d} :catchall_20

    :try_start_9d
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/mqunar/idscan/a/d;->a(Landroid/hardware/Camera;Z)V
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_a6} :catch_a7
    .catchall {:try_start_9d .. :try_end_a6} :catchall_20

    goto :goto_6b

    :catch_a7
    move-exception v0

    :try_start_a8
    sget-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_20

    goto :goto_6b
.end method

.method public final declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    if-eqz v0, :cond_1a

    const-string v0, "camera_operate"

    const-string v1, "release camera #"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/a/f;->i:Landroid/graphics/Rect;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    if-eqz v0, :cond_1c

    iget-boolean v1, p0, Lcom/mqunar/idscan/a/f;->l:Z

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    sget-boolean v0, Lcom/mqunar/idscan/a/d;->a:Z

    if-nez v0, :cond_19

    new-instance v0, Lcom/mqunar/idscan/a/a;

    iget-object v1, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lcom/mqunar/idscan/a/a;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/mqunar/idscan/a/f;->h:Lcom/mqunar/idscan/a/a;

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/a/f;->l:Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->h:Lcom/mqunar/idscan/a/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->h:Lcom/mqunar/idscan/a/a;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/a/f;->h:Lcom/mqunar/idscan/a/a;

    :cond_d
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/mqunar/idscan/a/f;->l:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->m:Lcom/mqunar/idscan/a/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/idscan/a/g;->a(Landroid/os/Handler;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/idscan/a/f;->l:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/graphics/Rect;
    .registers 10

    const/4 v1, 0x0

    const-wide v7, 0x3ffc6e978d4fdf3bL    # 1.777

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/d;->b()Landroid/graphics/Point;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_90

    move-result-object v3

    if-nez v3, :cond_16

    const/4 v0, 0x0

    :goto_14
    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_16
    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v0, v3, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    float-to-double v4, v4

    cmpl-double v6, v4, v7

    if-lez v6, :cond_87

    int-to-double v1, v0

    mul-double/2addr v1, v7

    double-to-int v1, v1

    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v2, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    sget-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mqunar/idscan/a/f;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_84
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;
    :try_end_86
    .catchall {:try_start_16 .. :try_end_86} :catchall_90

    goto :goto_14

    :cond_87
    cmpg-double v0, v4, v7

    if-gez v0, :cond_93

    int-to-double v0, v2

    div-double/2addr v0, v7

    double-to-int v0, v0

    move v1, v2

    goto :goto_2d

    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_93
    move v0, v1

    goto :goto_2d
.end method

.method public final declared-synchronized f()Landroid/graphics/Rect;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x401951eb851eb852L    # 6.33

    div-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/mqunar/idscan/a/f;->j:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/mqunar/idscan/a/f;->i:Landroid/graphics/Rect;

    sget-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mqunar/idscan/a/f;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->i:Landroid/graphics/Rect;
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Landroid/graphics/Rect;
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/mqunar/idscan/a/f;->f()Landroid/graphics/Rect;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8f

    move-result-object v2

    if-nez v2, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    invoke-virtual {v2}, Lcom/mqunar/idscan/a/d;->a()Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    invoke-virtual {v3}, Lcom/mqunar/idscan/a/d;->b()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    sget-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calculated framingRectInPreview rect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cameraResolution: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mqunar/idscan/a/f;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "screenResolution: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8c
    .catchall {:try_start_a .. :try_end_8c} :catchall_8f

    move-object v0, v1

    goto/16 :goto_8

    :catchall_8f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Lcom/mqunar/idscan/a/d;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/a/f;->f:Lcom/mqunar/idscan/a/d;

    return-object v0
.end method
