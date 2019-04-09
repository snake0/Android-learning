.class public Lorg/webrtc/RendererCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BALANCED_VISIBLE_FRACTION:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    const/high16 v0, 0x3f100000    # 0.5625f

    sput v0, Lorg/webrtc/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method private static adjustOrigin([F)V
    .registers 7

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xc

    const/high16 v3, 0x3f000000    # 0.5f

    .line 219
    aget v0, p0, v4

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x4

    aget v2, p0, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p0, v4

    .line 220
    aget v0, p0, v5

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x5

    aget v2, p0, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p0, v5

    .line 222
    aget v0, p0, v4

    add-float/2addr v0, v3

    aput v0, p0, v4

    .line 223
    aget v0, p0, v5

    add-float/2addr v0, v3

    aput v0, p0, v5

    .line 224
    return-void
.end method

.method private static convertScalingTypeToVisibleFraction(Lorg/webrtc/RendererCommon$ScalingType;)F
    .registers 3

    .prologue
    .line 231
    sget-object v0, Lorg/webrtc/RendererCommon$1;->$SwitchMap$org$webrtc$RendererCommon$ScalingType:[I

    invoke-virtual {p0}, Lorg/webrtc/RendererCommon$ScalingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 233
    :pswitch_11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 237
    :goto_13
    return v0

    .line 235
    :pswitch_14
    const/4 v0, 0x0

    goto :goto_13

    .line 237
    :pswitch_16
    sget v0, Lorg/webrtc/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    goto :goto_13

    .line 231
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method private static getDisplaySize(FFII)Landroid/graphics/Point;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 250
    cmpl-float v0, p0, v1

    if-eqz v0, :cond_9

    cmpl-float v0, p1, v1

    if-nez v0, :cond_f

    .line 251
    :cond_9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    :goto_e
    return-object v0

    .line 254
    :cond_f
    int-to-float v0, p3

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 256
    int-to-float v0, p2

    div-float/2addr v0, p0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 258
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_e
.end method

.method public static getDisplaySize(Lorg/webrtc/RendererCommon$ScalingType;FII)Landroid/graphics/Point;
    .registers 5

    .prologue
    .line 208
    invoke-static {p0}, Lorg/webrtc/RendererCommon;->convertScalingTypeToVisibleFraction(Lorg/webrtc/RendererCommon$ScalingType;)F

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lorg/webrtc/RendererCommon;->getDisplaySize(FFII)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutMatrix(ZFF)[F
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 184
    .line 187
    cmpl-float v0, p2, p1

    if-lez v0, :cond_1e

    .line 188
    div-float v0, p1, p2

    move v1, v0

    move v0, v2

    .line 193
    :goto_b
    if-eqz p0, :cond_10

    .line 194
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    .line 196
    :cond_10
    const/16 v3, 0x10

    new-array v3, v3, [F

    .line 197
    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 198
    invoke-static {v3, v4, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 199
    invoke-static {v3}, Lorg/webrtc/RendererCommon;->adjustOrigin([F)V

    .line 200
    return-object v3

    .line 190
    :cond_1e
    div-float v0, p2, p1

    move v1, v2

    goto :goto_b
.end method

.method public static final horizontalFlipMatrix()[F
    .registers 1

    .prologue
    .line 151
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final identityMatrix()[F
    .registers 1

    .prologue
    .line 134
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static multiplyMatrices([F[F)[F
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 173
    const/16 v0, 0x10

    new-array v0, v0, [F

    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 174
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 175
    return-object v0
.end method

.method public static rotateTextureMatrix([FF)[F
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 163
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 164
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 165
    invoke-static {v0}, Lorg/webrtc/RendererCommon;->adjustOrigin([F)V

    .line 166
    invoke-static {p0, v0}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public static final verticalFlipMatrix()[F
    .registers 1

    .prologue
    .line 142
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
