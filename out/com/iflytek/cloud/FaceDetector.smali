.class public Lcom/iflytek/cloud/FaceDetector;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field private static a:Lcom/iflytek/cloud/FaceDetector;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/ch;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    :try_start_3
    new-instance v0, Lcom/iflytek/cloud/thirdparty/ch;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/ch;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e35

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method public static declared-synchronized createDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/FaceDetector;
    .registers 5

    const-class v1, Lcom/iflytek/cloud/FaceDetector;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/FaceDetector;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    :try_start_6
    sget-object v0, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/iflytek/cloud/FaceDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/FaceDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;

    :cond_17
    sget-object v0, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDetector()Lcom/iflytek/cloud/FaceDetector;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/FaceDetector;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized destroy()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1c

    if-eqz v0, :cond_d

    :try_start_a
    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ch;->a()V

    :cond_d
    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/iflytek/cloud/FaceDetector;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1f

    const/4 v2, 0x0

    :try_start_17
    sput-object v2, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    :cond_1a
    monitor-exit p0

    return v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1f
.end method

.method public declared-synchronized detectARGB(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_13

    :try_start_3
    iget-object v1, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ch;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized detectGray(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_13

    :try_start_3
    iget-object v1, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ch;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackNV21([BIIII)Ljava/lang/String;
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_18

    :try_start_3
    iget-object v1, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->d:Lcom/iflytek/cloud/thirdparty/ch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/ch;->a([BIIII)Ljava/lang/String;

    move-result-object v0

    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
