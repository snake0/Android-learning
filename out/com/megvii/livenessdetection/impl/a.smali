.class public final Lcom/megvii/livenessdetection/impl/a;
.super Lcom/megvii/livenessdetection/DetectionFrame;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:[B


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/megvii/livenessdetection/DetectionFrame;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    .line 20
    return-void
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private declared-synchronized c()V
    .registers 8

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_50

    if-nez v0, :cond_7

    .line 66
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 49
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    .line 50
    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 51
    iget-object v2, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 53
    iget-object v3, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 54
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 53
    invoke-static {v3, v4, v5, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_5

    .line 57
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_50

    .line 61
    :try_start_46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_53
    .catchall {:try_start_46 .. :try_end_49} :catchall_50

    .line 65
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->b:[B
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_50

    goto :goto_5

    .line 46
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_53
    move-exception v0

    goto :goto_49
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/megvii/livenessdetection/DetectionConfig;Lcom/megvii/livenessdeteciton/obf/b;)V
    .registers 5

    .prologue
    .line 121
    invoke-static {p1}, Lcom/megvii/livenessdetection/bean/FaceInfo$FaceInfoFactory;->createFaceInfo(Ljava/lang/String;)Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    .line 123
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    invoke-virtual {p3, v0}, Lcom/megvii/livenessdeteciton/obf/b;->a(Lcom/megvii/livenessdetection/bean/FaceInfo;)V

    .line 125
    :cond_f
    return-void
.end method

.method public final a()[B
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/megvii/livenessdetection/impl/a;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_8
    return-object v0

    :cond_9
    iget-object v4, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    .line 1108
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v3, v0, [B

    move v0, v1

    .line 1109
    :goto_17
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_4b

    move v2, v1

    .line 1110
    :goto_1e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v2, v5, :cond_48

    .line 1111
    invoke-virtual {v4, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 1112
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 1113
    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 1114
    and-int/lit16 v5, v5, 0xff

    .line 1115
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/2addr v8, v0

    add-int/2addr v8, v2

    mul-int/lit16 v6, v6, 0x12b

    mul-int/lit16 v7, v7, 0x24b

    add-int/2addr v6, v7

    mul-int/lit8 v5, v5, 0x72

    add-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    .line 1110
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1109
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_4b
    move-object v0, v3

    .line 104
    goto :goto_8
.end method

.method public final getCroppedFaceImageData()[B
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->b:[B

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/megvii/livenessdetection/impl/a;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/megvii/livenessdetection/impl/a;->hasFace()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 71
    invoke-direct {p0}, Lcom/megvii/livenessdetection/impl/a;->c()V

    .line 73
    :cond_13
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->b:[B

    return-object v0
.end method

.method public final getCroppedFaceImageData(I)[B
    .registers 3

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCroppedFaceImageData(ILandroid/graphics/Rect;)[B
    .registers 4

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCroppedFaceImageData(Landroid/graphics/Rect;)[B
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEncodedFaceImageData(IILandroid/graphics/Rect;)[B
    .registers 5

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImageData(Landroid/graphics/Rect;ZIIZZI)[B
    .registers 9

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImageHeight()I
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/megvii/livenessdetection/impl/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public final getImageWidth()I
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/megvii/livenessdetection/impl/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public final getRotation()I
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized getYUVData()[B
    .registers 2

    .prologue
    .line 42
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method
