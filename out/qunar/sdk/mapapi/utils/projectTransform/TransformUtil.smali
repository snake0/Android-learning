.class public Lqunar/sdk/mapapi/utils/projectTransform/TransformUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delta(DD)[D
    .registers 22

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 38
    const-wide v1, 0x415854c140000000L    # 6378245.0

    .line 39
    const-wide v3, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    .line 40
    const-wide v5, 0x405a400000000000L    # 105.0

    sub-double v5, p2, v5

    const-wide v7, 0x4041800000000000L    # 35.0

    sub-double v7, p0, v7

    invoke-static {v5, v6, v7, v8}, Lqunar/sdk/mapapi/utils/projectTransform/TransformUtil;->transformLat(DD)D

    move-result-wide v5

    .line 41
    const-wide v7, 0x405a400000000000L    # 105.0

    sub-double v7, p2, v7

    const-wide v9, 0x4041800000000000L    # 35.0

    sub-double v9, p0, v9

    invoke-static {v7, v8, v9, v10}, Lqunar/sdk/mapapi/utils/projectTransform/TransformUtil;->transformLon(DD)D

    move-result-wide v7

    .line 42
    const-wide v9, 0x4066800000000000L    # 180.0

    div-double v9, p0, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    .line 43
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 44
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double v15, v3, v11

    mul-double/2addr v11, v15

    sub-double v11, v13, v11

    .line 45
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 46
    const/4 v15, 0x0

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v5, v5, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v3, v16, v3

    mul-double/2addr v3, v1

    mul-double/2addr v11, v13

    div-double/2addr v3, v11

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v11

    div-double v3, v5, v3

    aput-wide v3, v0, v15

    .line 47
    const/4 v3, 0x1

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v7

    div-double/2addr v1, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v1, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v6

    div-double v1, v4, v1

    aput-wide v1, v0, v3

    .line 48
    return-object v0
.end method

.method public static outOfChina(DD)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 4
    const-wide v1, 0x4052004189374bc7L    # 72.004

    cmpg-double v1, p2, v1

    if-ltz v1, :cond_13

    const-wide v1, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v1, p2, v1

    if-lez v1, :cond_14

    .line 10
    :cond_13
    :goto_13
    return v0

    .line 7
    :cond_14
    const-wide v1, 0x3fea89a027525461L    # 0.8293

    cmpg-double v1, p0, v1

    if-ltz v1, :cond_13

    const-wide v1, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v1, p0, v1

    if-gtz v1, :cond_13

    .line 10
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static transformLat(DD)D
    .registers 14

    .prologue
    .line 14
    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, p2

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 16
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 17
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p2, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 18
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p2, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, p2

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 19
    return-wide v0
.end method

.method public static transformLon(DD)D
    .registers 14

    .prologue
    .line 23
    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 24
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 25
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p0, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 26
    const-wide v2, 0x4062c00000000000L    # 150.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p0, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double v6, p0, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 28
    return-wide v0
.end method
