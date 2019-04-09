.class public Lcom/megvii/livenessdetection/FaceQualityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field public faceMaxSizeRatioThreshold:F

.field public faceWidthThreshold:F

.field public gaussianBlurThreshold:F

.field public integrityThreshold:F

.field public maxBrightnessThreshold:F

.field public minBrightnessThreshold:F

.field public motionBlurThreshold:F

.field public needHolding:I

.field public pitchThreshold:F

.field public yawThreshold:F


# direct methods
.method public constructor <init>(FF)V
    .registers 5

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const v0, 0x3e2e147b    # 0.17f

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->pitchThreshold:F

    .line 16
    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->yawThreshold:F

    .line 17
    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->integrityThreshold:F

    .line 18
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->minBrightnessThreshold:F

    .line 19
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->maxBrightnessThreshold:F

    .line 20
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->faceWidthThreshold:F

    .line 21
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->motionBlurThreshold:F

    .line 22
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->gaussianBlurThreshold:F

    .line 23
    iput v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->a:F

    .line 24
    iput v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->b:F

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->needHolding:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->c:I

    .line 30
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->faceMaxSizeRatioThreshold:F

    .line 33
    iput p1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->a:F

    .line 34
    iput p2, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->b:F

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized feedFrame(Lcom/megvii/livenessdetection/DetectionFrame;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/megvii/livenessdetection/DetectionFrame;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 45
    monitor-enter p0

    :try_start_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 46
    if-nez p1, :cond_15

    .line 47
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "detectionFrame could not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 45
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 50
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getRotation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_55

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageWidth()I

    move-result v0

    move v1, v0

    .line 52
    :goto_22
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getRotation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5b

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageHeight()I

    move-result v0

    .line 55
    :goto_2e
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v3

    .line 57
    if-nez v3, :cond_60

    .line 58
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_NOT_FOUND:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_39
    :goto_39
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_134

    .line 113
    iget v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->c:I

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->needHolding:I

    if-ge v0, v1, :cond_4e

    .line 114
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FRAME_NEED_HOLDING:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_4e
    :goto_4e
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_53
    .catchall {:try_start_15 .. :try_end_53} :catchall_12

    monitor-exit p0

    return-object v0

    .line 51
    :cond_55
    :try_start_55
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageHeight()I

    move-result v0

    move v1, v0

    goto :goto_22

    .line 53
    :cond_5b
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageWidth()I

    move-result v0

    goto :goto_2e

    .line 60
    :cond_60
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 62
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 64
    iget v7, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->a:F

    sub-float/2addr v5, v7

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-double v7, v1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->b:F

    sub-float v1, v6, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 66
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v7

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 69
    iget-object v1, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v11

    if-lez v0, :cond_9c

    .line 70
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_OUT_OF_RECT:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_9c
    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->yaw:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->yawThreshold:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_b4

    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->pitch:F

    .line 75
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->pitchThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b9

    .line 76
    :cond_b4
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_POS_DEVIATED:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_b9
    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->integrity:F

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->integrityThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c6

    .line 80
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_NONINTEGRITY:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_c6
    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->brightness:F

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->minBrightnessThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d3

    .line 84
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_TOO_DARK:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_d3
    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->brightness:F

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->maxBrightnessThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e0

    .line 87
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_TOO_BRIGHT:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_e0
    iget-object v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->faceWidthThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f2

    .line 91
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_TOO_SMALL:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_f2
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->faceMaxSizeRatioThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_101

    .line 95
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_TOO_LARGE:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_101
    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->motionBlur:F

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->motionBlurThreshold:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_111

    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->gaussianBlur:F

    iget v1, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->gaussianBlurThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_116

    .line 100
    :cond_111
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_TOO_BLURRY:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_116
    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeLeftOcclusion:F

    cmpl-float v0, v0, v11

    if-gtz v0, :cond_122

    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeRightOcclusion:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_127

    .line 103
    :cond_122
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_EYE_OCCLUSIVE:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_127
    iget v0, v3, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthOcclusion:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_39

    .line 106
    sget-object v0, Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;->FACE_MOUTH_OCCLUSIVE:Lcom/megvii/livenessdetection/FaceQualityManager$FaceQualityErrorType;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 117
    :cond_134
    const/4 v0, 0x0

    iput v0, p0, Lcom/megvii/livenessdetection/FaceQualityManager;->c:I
    :try_end_137
    .catchall {:try_start_55 .. :try_end_137} :catchall_12

    goto/16 :goto_4e
.end method
