.class public final Lcom/megvii/livenessdetection/DetectionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final eyeOpenThreshold:F

.field public final gaussianBlur:F

.field public final integrity:F

.field public final maxBrightness:I

.field public final minBrightness:I

.field public final minFaceSize:F

.field public final motionBlur:F

.field public final mouthOpenThreshold:F

.field public final pitchAngle:F

.field public final timeout:J

.field public final yawAngle:F


# direct methods
.method private constructor <init>(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->a(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->gaussianBlur:F

    .line 80
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->b(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->motionBlur:F

    .line 82
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->c(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->pitchAngle:F

    .line 83
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->d(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->yawAngle:F

    .line 85
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->e(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->minBrightness:I

    .line 86
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->f(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->maxBrightness:I

    .line 88
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->g(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->minFaceSize:F

    .line 90
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->h(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    .line 92
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->i(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->eyeOpenThreshold:F

    .line 93
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->j(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->mouthOpenThreshold:F

    .line 95
    invoke-static {p1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->k(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->integrity:F

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/megvii/livenessdetection/DetectionConfig$Builder;B)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/megvii/livenessdetection/DetectionConfig;-><init>(Lcom/megvii/livenessdetection/DetectionConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public final getEyeOpenThreshold()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->eyeOpenThreshold:F

    return v0
.end method

.method public final getGaussianBlur()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->gaussianBlur:F

    return v0
.end method

.method public final getMaxBrightness()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->maxBrightness:I

    return v0
.end method

.method public final getMinBrightness()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->minBrightness:I

    return v0
.end method

.method public final getMinFaceSize()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->minFaceSize:F

    return v0
.end method

.method public final getMotionBlur()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->motionBlur:F

    return v0
.end method

.method public final getMouthOpenThreshold()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->mouthOpenThreshold:F

    return v0
.end method

.method public final getPitchAngle()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->pitchAngle:F

    return v0
.end method

.method public final getTimeout()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    return-wide v0
.end method

.method public final getYawAngle()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    iget v0, p0, Lcom/megvii/livenessdetection/DetectionConfig;->yawAngle:F

    return v0
.end method

.method public final toJsonString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_5
    const-string v1, "gaussianBlur"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->gaussianBlur:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 101
    const-string v1, "motionBlur"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->motionBlur:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 102
    const-string v1, "pitchAngle"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->pitchAngle:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 103
    const-string v1, "yawAngle"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->yawAngle:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 104
    const-string v1, "minBrightness"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->minBrightness:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v1, "maxBrightness"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->maxBrightness:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string v1, "minFaceSize"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->minFaceSize:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 107
    const-string v1, "timeout"

    iget-wide v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    const-string v1, "eyeOpenThreshold"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->eyeOpenThreshold:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 109
    const-string v1, "mouthOpenThreshold"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->mouthOpenThreshold:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 110
    const-string v1, "integrity"

    iget v2, p0, Lcom/megvii/livenessdetection/DetectionConfig;->integrity:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5d} :catch_5f

    move-result-object v0

    .line 114
    :goto_5e
    return-object v0

    :catch_5f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5e
.end method
