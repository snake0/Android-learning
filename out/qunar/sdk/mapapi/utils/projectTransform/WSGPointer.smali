.class public Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;
.super Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .prologue
    .line 7
    invoke-direct {p0}, Lqunar/sdk/mapapi/utils/projectTransform/GeoPointer;-><init>()V

    .line 8
    iput-wide p1, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->latitude:D

    .line 9
    iput-wide p3, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->longitude:D

    .line 10
    return-void
.end method


# virtual methods
.method public toGCJPointer()Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;
    .registers 9

    .prologue
    .line 13
    iget-wide v0, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->latitude:D

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/utils/projectTransform/TransformUtil;->outOfChina(DD)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14
    new-instance v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;

    iget-wide v1, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->latitude:D

    iget-wide v3, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;-><init>(DD)V

    .line 17
    :goto_13
    return-object v0

    .line 16
    :cond_14
    iget-wide v0, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->latitude:D

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/utils/projectTransform/TransformUtil;->delta(DD)[D

    move-result-object v1

    .line 17
    new-instance v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;

    iget-wide v2, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->latitude:D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    add-double/2addr v2, v4

    iget-wide v4, p0, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->longitude:D

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;-><init>(DD)V

    goto :goto_13
.end method
