.class public final Lcom/megvii/livenessdetection/impl/b;
.super Lcom/megvii/livenessdetection/DetectionFrame;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field private d:[B

.field private e:I


# direct methods
.method public constructor <init>([BIIILcom/megvii/livenessdetection/Detector$DetectionType;)V
    .registers 6

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/megvii/livenessdetection/DetectionFrame;-><init>()V

    .line 20
    iput p2, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    .line 21
    iput p3, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    .line 22
    iput p4, p0, Lcom/megvii/livenessdetection/impl/b;->e:I

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    iput-object p5, p0, Lcom/megvii/livenessdetection/impl/b;->c:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 25
    iput-object p1, p0, Lcom/megvii/livenessdetection/impl/b;->d:[B

    .line 26
    return-void
.end method

.method private declared-synchronized a(ILandroid/graphics/Rect;)[B
    .registers 4

    .prologue
    .line 60
    monitor-enter p0

    const/16 v0, 0x50

    :try_start_3
    invoke-direct {p0, p1, p2, v0}, Lcom/megvii/livenessdetection/impl/b;->a(ILandroid/graphics/Rect;I)[B
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ILandroid/graphics/Rect;I)[B
    .registers 16

    .prologue
    const/high16 v11, 0x3fc00000    # 1.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 63
    monitor-enter p0

    :try_start_7
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/impl/b;->hasFace()Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1af

    move-result v0

    if-nez v0, :cond_10

    .line 64
    const/4 v0, 0x0

    .line 152
    :goto_e
    monitor-exit p0

    return-object v0

    .line 66
    :cond_10
    :try_start_10
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/b;->d:[B

    const/16 v2, 0x11

    iget v3, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    iget v4, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 68
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    iget v3, p0, Lcom/megvii/livenessdetection/impl/b;->e:I

    rsub-int v3, v3, 0x168

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 74
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 75
    iget-object v4, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v4, v4, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 76
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 77
    iget v2, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 78
    iget v2, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->right:I

    .line 79
    iget v2, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 80
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 82
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 84
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 85
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 87
    const/4 v2, 0x0

    iget v3, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v8, Landroid/graphics/RectF;->left:F

    .line 88
    const/4 v2, 0x0

    iget v3, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v8, Landroid/graphics/RectF;->top:F

    .line 89
    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v8, Landroid/graphics/RectF;->right:F

    .line 90
    iget v2, v8, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v8, Landroid/graphics/RectF;->bottom:F

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v8, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v8, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, p3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_c8
    .catchall {:try_start_10 .. :try_end_c8} :catchall_1af

    .line 95
    :try_start_c8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_1a5
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_1af

    .line 99
    :goto_cb
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    iget v1, p0, Lcom/megvii/livenessdetection/impl/b;->e:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 105
    const/4 v1, -0x1

    if-eq p1, v1, :cond_fd

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 107
    cmpl-float v2, v1, v10

    if-lez v2, :cond_fd

    .line 108
    div-float v2, v10, v1

    div-float v1, v10, v1

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 110
    :cond_fd
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 114
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 116
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 117
    iget v4, p0, Lcom/megvii/livenessdetection/impl/b;->e:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 118
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 120
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v1, v7

    aput v1, v5, v6

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v2, v6

    aput v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 122
    const/4 v1, 0x0

    aget v1, v4, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 123
    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    .line 127
    if-nez p2, :cond_16b

    .line 128
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 130
    :cond_16b
    div-float v4, v3, v9

    sub-float v4, v1, v4

    float-to-int v4, v4

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 131
    div-float v4, v3, v9

    sub-float v4, v2, v4

    float-to-int v4, v4

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 132
    div-float v4, v3, v9

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 133
    div-float v1, v3, v9

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 134
    invoke-static {p2}, Lcom/megvii/livenessdeteciton/obf/b;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_193
    .catchall {:try_start_cb .. :try_end_193} :catchall_1af

    .line 145
    :try_start_193
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 146
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 147
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x6cb8edad

    invoke-static {v0, v2, v3, v4, v1}, Lcom/megvii/livenessdetection/impl/EncodeImpl;->a([BZZILjava/lang/String;)[B
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1a2} :catch_1b2
    .catchall {:try_start_193 .. :try_end_1a2} :catchall_1af

    move-result-object v0

    goto/16 :goto_e

    .line 96
    :catch_1a5
    move-exception v0

    .line 97
    :try_start_1a6
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;)V
    :try_end_1ad
    .catchall {:try_start_1a6 .. :try_end_1ad} :catchall_1af

    goto/16 :goto_cb

    .line 63
    :catchall_1af
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :catch_1b2
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_e
.end method

.method private declared-synchronized b(ILandroid/graphics/Rect;I)[B
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 157
    monitor-enter p0

    :try_start_4
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/b;->d:[B

    const/16 v2, 0x11

    iget v3, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    iget v4, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 159
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    iget v6, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, p3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_e2

    .line 163
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_d8
    .catchall {:try_start_25 .. :try_end_28} :catchall_e2

    .line 167
    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 171
    iget v1, p0, Lcom/megvii/livenessdetection/impl/b;->e:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 173
    const/4 v1, -0x1

    if-eq p1, v1, :cond_5a

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 175
    cmpl-float v2, v1, v8

    if-lez v2, :cond_5a

    .line 176
    div-float v2, v8, v1

    div-float v1, v8, v1

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 178
    :cond_5a
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    if-nez p2, :cond_70

    .line 181
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 184
    :cond_70
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/impl/b;->hasFace()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 185
    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 186
    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 187
    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 188
    iget-object v1, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 196
    :cond_b2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 197
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_bc
    .catchall {:try_start_28 .. :try_end_bc} :catchall_e2

    .line 199
    :try_start_bc
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 200
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/impl/b;->hasFace()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 203
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x6cb8edad

    invoke-static {p2}, Lcom/megvii/livenessdeteciton/obf/b;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/megvii/livenessdetection/impl/EncodeImpl;->a([BZZILjava/lang/String;)[B
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_d5} :catch_e5
    .catchall {:try_start_bc .. :try_end_d5} :catchall_e2

    move-result-object v0

    .line 210
    :cond_d6
    :goto_d6
    monitor-exit p0

    return-object v0

    .line 164
    :catch_d8
    move-exception v0

    .line 165
    :try_start_d9
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_e2

    goto/16 :goto_28

    .line 157
    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :catch_e5
    move-exception v0

    move-object v0, v7

    goto :goto_d6
.end method


# virtual methods
.method public final a()Lcom/megvii/livenessdetection/Detector$DetectionType;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/b;->c:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/megvii/livenessdetection/DetectionConfig;Lcom/megvii/livenessdeteciton/obf/b;)V
    .registers 5

    .prologue
    .line 262
    invoke-static {p1}, Lcom/megvii/livenessdetection/bean/FaceInfo$FaceInfoFactory;->createFaceInfo(Ljava/lang/String;)Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    .line 263
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    invoke-virtual {p3, v0}, Lcom/megvii/livenessdeteciton/obf/b;->a(Lcom/megvii/livenessdetection/bean/FaceInfo;)V

    .line 264
    return-void
.end method

.method public final a(Lcom/megvii/livenessdetection/DetectionFrame;)Z
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    .line 258
    :goto_5
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->hasFace()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothQuality:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    .line 257
    :cond_19
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/b;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothQuality:F

    goto :goto_5

    .line 258
    :cond_1e
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final declared-synchronized getCroppedFaceImageData()[B
    .registers 3

    .prologue
    .line 214
    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/megvii/livenessdetection/impl/b;->a(ILandroid/graphics/Rect;)[B
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCroppedFaceImageData(I)[B
    .registers 3

    .prologue
    .line 218
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/megvii/livenessdetection/impl/b;->a(ILandroid/graphics/Rect;)[B
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCroppedFaceImageData(ILandroid/graphics/Rect;)[B
    .registers 4

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/megvii/livenessdetection/impl/b;->a(ILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getCroppedFaceImageData(Landroid/graphics/Rect;)[B
    .registers 3

    .prologue
    .line 223
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/megvii/livenessdetection/impl/b;->a(ILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getEncodedFaceImageData(IILandroid/graphics/Rect;)[B
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 233
    invoke-virtual {p0, p2, p3}, Lcom/megvii/livenessdetection/impl/b;->getCroppedFaceImageData(ILandroid/graphics/Rect;)[B

    move-result-object v0

    .line 234
    invoke-static {v0, v1, v1, p1}, Lcom/megvii/livenessdetection/impl/EncodeImpl;->a([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public final getImageData(Landroid/graphics/Rect;ZIIZZI)[B
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 240
    if-nez p5, :cond_6

    if-eqz p6, :cond_a

    :cond_6
    if-gez p7, :cond_a

    move-object v0, v1

    .line 251
    :goto_9
    return-object v0

    .line 243
    :cond_a
    if-ltz p3, :cond_10

    const/16 v2, 0x64

    if-le p3, v2, :cond_12

    :cond_10
    move-object v0, v1

    .line 244
    goto :goto_9

    .line 246
    :cond_12
    if-eqz p2, :cond_21

    .line 247
    if-lez p4, :cond_1f

    :goto_16
    invoke-direct {p0, p4, p1, p3}, Lcom/megvii/livenessdetection/impl/b;->a(ILandroid/graphics/Rect;I)[B

    move-result-object v0

    .line 248
    invoke-static {v0, p5, p6, p7}, Lcom/megvii/livenessdetection/impl/EncodeImpl;->a([BZZI)[B

    move-result-object v0

    goto :goto_9

    :cond_1f
    move p4, v0

    .line 247
    goto :goto_16

    .line 250
    :cond_21
    if-lez p4, :cond_2c

    :goto_23
    invoke-direct {p0, p4, p1, p3}, Lcom/megvii/livenessdetection/impl/b;->b(ILandroid/graphics/Rect;I)[B

    move-result-object v0

    .line 251
    invoke-static {v0, p5, p6, p7}, Lcom/megvii/livenessdetection/impl/EncodeImpl;->a([BZZI)[B

    move-result-object v0

    goto :goto_9

    :cond_2c
    move p4, v0

    .line 250
    goto :goto_23
.end method

.method public final getImageHeight()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/megvii/livenessdetection/impl/b;->b:I

    return v0
.end method

.method public final getImageWidth()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/megvii/livenessdetection/impl/b;->a:I

    return v0
.end method

.method public final getRotation()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/megvii/livenessdetection/impl/b;->e:I

    return v0
.end method

.method public final getYUVData()[B
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/megvii/livenessdetection/impl/b;->d:[B

    return-object v0
.end method
