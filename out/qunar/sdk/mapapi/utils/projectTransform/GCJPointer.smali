.class public Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;
.super Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .prologue
    .line 8
    invoke-direct {p0}, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;-><init>()V

    .line 9
    iput-wide p1, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->latitude:D

    .line 10
    iput-wide p3, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->longitude:D

    .line 11
    return-void
.end method


# virtual methods
.method public toExactWSGPointer()Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;
    .registers 30

    .prologue
    .line 22
    .line 24
    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    .line 25
    move-object/from16 v0, p0

    iget-wide v5, v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->latitude:D

    sub-double v10, v5, v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->longitude:D

    sub-double v8, v5, v3

    .line 26
    move-object/from16 v0, p0

    iget-wide v5, v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->latitude:D

    add-double/2addr v5, v1

    move-object/from16 v0, p0

    iget-wide v1, v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->longitude:D

    add-double/2addr v3, v1

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v1, 0x0

    move/from16 v24, v1

    move-object v1, v7

    move-wide/from16 v25, v5

    move-wide v5, v8

    move/from16 v8, v24

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-wide/from16 v9, v25

    :goto_30
    const/16 v2, 0x1e

    if-ge v8, v2, :cond_77

    .line 30
    add-double v1, v11, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double v13, v1, v13

    .line 31
    add-double v1, v5, v3

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v15

    .line 32
    new-instance v7, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;

    invoke-direct {v7, v13, v14, v1, v2}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;-><init>(DD)V

    .line 33
    invoke-virtual {v7}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->toGCJPointer()Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;

    move-result-object v15

    .line 34
    invoke-virtual {v15}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->getLatitude()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->getLatitude()D

    move-result-wide v18

    sub-double v16, v16, v18

    .line 35
    invoke-virtual {v15}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->getLongitude()D

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->getLongitude()D

    move-result-wide v20

    sub-double v18, v18, v20

    .line 36
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v15, v20, v22

    if-gez v15, :cond_78

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v15, v20, v22

    if-gez v15, :cond_78

    move-object v1, v7

    .line 52
    :cond_77
    return-object v1

    .line 41
    :cond_78
    const-wide/16 v20, 0x0

    cmpl-double v15, v16, v20

    if-lez v15, :cond_8d

    move-wide v9, v13

    .line 46
    :goto_7f
    const-wide/16 v13, 0x0

    cmpl-double v13, v18, v13

    if-lez v13, :cond_8f

    move-wide v3, v5

    .line 29
    :goto_86
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move-wide v5, v3

    move-wide v3, v1

    move-object v1, v7

    goto :goto_30

    :cond_8d
    move-wide v11, v13

    .line 44
    goto :goto_7f

    :cond_8f
    move-wide/from16 v24, v3

    move-wide v3, v1

    move-wide/from16 v1, v24

    .line 49
    goto :goto_86
.end method

.method public toWSGPointer()Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;
    .registers 9

    .prologue
    .line 14
    iget-wide v0, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->latitude:D

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/utils/projectTransform/TransformUtil;->outOfChina(DD)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15
    new-instance v0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;

    iget-wide v1, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->latitude:D

    iget-wide v3, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;-><init>(DD)V

    .line 18
    :goto_13
    return-object v0

    .line 17
    :cond_14
    iget-wide v0, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->latitude:D

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/utils/projectTransform/TransformUtil;->delta(DD)[D

    move-result-object v1

    .line 18
    new-instance v0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->latitude:D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->longitude:D

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    sub-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;-><init>(DD)V

    goto :goto_13
.end method
