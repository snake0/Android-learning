.class public final Lcom/baidu/mapapi/map/Projection;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mapsdkplatform/comapi/map/e;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/e;

    return-void
.end method


# virtual methods
.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/baidu/mapapi/model/LatLng;
    .registers 5

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/e;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/e;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public metersToEquatorPixels(F)F
    .registers 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    float-to-double v0, p1

    iget-object v2, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/e;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/e;->J()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_5
.end method

.method public toOpenGLLocation(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/map/MapStatus;)Landroid/graphics/PointF;
    .registers 12

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v1

    iget-object v2, p2, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iget-wide v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->d:D

    iget-wide v5, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->e:D

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v7

    sub-double v3, v7, v3

    iget-wide v7, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->n:D

    div-double/2addr v3, v7

    double-to-float v3, v3

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    sub-double v4, v7, v5

    iget-wide v1, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->n:D

    div-double v1, v4, v1

    double-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public toOpenGLNormalization(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/map/MapStatus;)Landroid/graphics/PointF;
    .registers 15

    if-eqz p1, :cond_49

    if-eqz p2, :cond_49

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    iget-object v1, p2, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab;->k:Lcom/baidu/mapsdkplatform/comapi/map/ab$a;

    iget-wide v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab$a;->b:J

    iget-wide v4, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab$a;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab$a;->c:J

    iget-wide v6, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab$a;->d:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    iget-wide v10, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab$a;->a:J

    long-to-double v10, v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    div-double v2, v6, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    iget-wide v0, v1, Lcom/baidu/mapsdkplatform/comapi/map/ab$a;->d:J

    long-to-double v0, v0

    sub-double v0, v8, v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v4

    new-instance v0, Landroid/graphics/PointF;

    double-to-float v1, v2

    double-to-float v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_48
    return-object v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public toScreenLocation(Lcom/baidu/mapapi/model/LatLng;)Landroid/graphics/Point;
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/e;

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/e;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Landroid/graphics/Point;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
