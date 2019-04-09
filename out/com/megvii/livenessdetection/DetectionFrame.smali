.class public abstract Lcom/megvii/livenessdetection/DetectionFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

.field protected mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->NONE:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    iput-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->a:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    return-void
.end method

.method public static get2DPoint(FFFFFF)Landroid/graphics/PointF;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 114
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 115
    cmpg-float v0, p5, v3

    if-gez v0, :cond_1d

    div-float v0, p5, p2

    :goto_e
    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 116
    cmpg-float v0, p4, v3

    if-gez v0, :cond_20

    neg-float v0, p4

    div-float/2addr v0, p0

    :goto_18
    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 117
    return-object v1

    .line 115
    :cond_1d
    neg-float v0, p5

    div-float/2addr v0, p3

    goto :goto_e

    .line 116
    :cond_20
    div-float v0, p4, p1

    goto :goto_18
.end method

.method public static isValid2DPoint(Landroid/graphics/PointF;)Z
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 131
    iget v0, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d

    iget v0, p0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1d

    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d

    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public get2DPoint()Landroid/graphics/PointF;
    .registers 5

    .prologue
    .line 127
    const v0, -0x41d1eb85    # -0.17f

    const v1, 0x3e2e147b    # 0.17f

    const v2, -0x419eb852    # -0.22f

    const v3, 0x3e6147ae    # 0.22f

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/megvii/livenessdetection/DetectionFrame;->get2DPoint(FFFF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public get2DPoint(FFFF)Landroid/graphics/PointF;
    .registers 11

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/DetectionFrame;->hasFace()Z

    move-result v0

    if-nez v0, :cond_8

    .line 122
    const/4 v0, 0x0

    .line 123
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v4, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothPitch:F

    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v5, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothYaw:F

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/megvii/livenessdetection/DetectionFrame;->get2DPoint(FFFFFF)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_7
.end method

.method public getBrightness()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->brightness:F

    goto :goto_6
.end method

.method public abstract getCroppedFaceImageData()[B
.end method

.method public abstract getCroppedFaceImageData(I)[B
.end method

.method public abstract getCroppedFaceImageData(ILandroid/graphics/Rect;)[B
.end method

.method public abstract getCroppedFaceImageData(Landroid/graphics/Rect;)[B
.end method

.method public getEncodedFaceImageData(I)[B
    .registers 4

    .prologue
    .line 57
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/megvii/livenessdetection/DetectionFrame;->getEncodedFaceImageData(IILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedFaceImageData(II)[B
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/megvii/livenessdetection/DetectionFrame;->getEncodedFaceImageData(IILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getEncodedFaceImageData(IILandroid/graphics/Rect;)[B
.end method

.method public getEncodedFaceImageData(ILandroid/graphics/Rect;)[B
    .registers 4

    .prologue
    .line 50
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/megvii/livenessdetection/DetectionFrame;->getEncodedFaceImageData(IILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    return-object v0
.end method

.method public getFacePos()Landroid/graphics/RectF;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    goto :goto_5
.end method

.method public getFaceQuality()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    goto :goto_6
.end method

.method public declared-synchronized getFaceSize()Landroid/graphics/Rect;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget-object v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceSize:Landroid/graphics/Rect;
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_6

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrameType()Lcom/megvii/livenessdetection/DetectionFrame$FrameType;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->a:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    return-object v0
.end method

.method public getGaussianBlur()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->gaussianBlur:F

    goto :goto_6
.end method

.method public abstract getImageData(Landroid/graphics/Rect;ZIIZZI)[B
.end method

.method public abstract getImageHeight()I
.end method

.method public abstract getImageWidth()I
.end method

.method public getLeftEyeHwratio()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->leftEyeHWRatio:F

    goto :goto_6
.end method

.method public getMotionBlur()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->motionBlur:F

    goto :goto_6
.end method

.method public getMouthHwratio()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthHWRatio:F

    goto :goto_6
.end method

.method public getPitchAngle()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->pitch:F

    goto :goto_6
.end method

.method public getRightEyeHwratio()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->rightEyeHWRatio:F

    goto :goto_6
.end method

.method public abstract getRotation()I
.end method

.method public getWearGlass()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->wearGlass:F

    goto :goto_6
.end method

.method public abstract getYUVData()[B
.end method

.method public getYawAngle()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    iget v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->yaw:F

    goto :goto_6
.end method

.method public hasFace()Z
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/megvii/livenessdetection/DetectionFrame;->mFaceInfo:Lcom/megvii/livenessdetection/bean/FaceInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/megvii/livenessdetection/DetectionFrame;->a:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    .line 26
    return-void
.end method
