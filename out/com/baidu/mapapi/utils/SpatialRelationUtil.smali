.class public Lcom/baidu/mapapi/utils/SpatialRelationUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 16

    invoke-static {p0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    mul-double v2, v3, v3

    div-double v2, v5, v2

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    sub-double v0, v8, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    new-instance v2, Lcom/baidu/mapapi/model/inner/GeoPoint;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static getNearestPointFromLine(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/model/LatLng;",
            ")",
            "Lcom/baidu/mapapi/model/LatLng;"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_f

    :cond_d
    move-object v3, v1

    :cond_e
    return-object v3

    :cond_f
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0, v1, p1}, Lcom/baidu/mapapi/utils/SpatialRelationUtil;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    iget-wide v6, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    cmpg-double v0, v4, v10

    if-gtz v0, :cond_7a

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    iget-wide v6, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    cmpg-double v0, v4, v10

    if-gtz v0, :cond_7a

    move-object v0, v1

    :goto_67
    if-eqz v3, :cond_75

    invoke-static {p1, v0}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    invoke-static {p1, v3}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gez v1, :cond_a4

    :cond_75
    :goto_75
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v3, v0

    goto :goto_12

    :cond_7a
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1, v0}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1, v0}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_9b

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    goto :goto_67

    :cond_9b
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    goto :goto_67

    :cond_a4
    move-object v0, v3

    goto :goto_75
.end method

.method public static isCircleContainsPoint(Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/model/LatLng;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {p0, p2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v2

    int-to-double v4, p1

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_8

    int-to-double v4, p1

    cmpl-double v0, v2, v4

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_8

    :cond_19
    move v0, v1

    goto :goto_8
.end method

.method public static isPolygonContainsPoint(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/model/LatLng;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_e

    :cond_c
    move v4, v2

    :cond_d
    :goto_d
    return v4

    :cond_e
    move v1, v2

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_35

    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v0, v5, v7

    if-nez v0, :cond_31

    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v0, v5, v7

    if-eqz v0, :cond_d

    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_35
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v5, v2

    move v3, v2

    :goto_3b
    if-ge v5, v6, :cond_9d

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    add-int/lit8 v1, v5, 0x1

    rem-int/2addr v1, v6

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5a

    move v0, v3

    :goto_55
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v0

    goto :goto_3b

    :cond_5a
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_6a

    move v0, v3

    goto :goto_55

    :cond_6a
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_7a

    move v0, v3

    goto :goto_55

    :cond_7a
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    iget-wide v9, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v11, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v0, v7

    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v7, v0, v7

    if-eqz v7, :cond_d

    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v0, v0, v7

    if-gez v0, :cond_a5

    add-int/lit8 v0, v3, 0x1

    goto :goto_55

    :cond_9d
    rem-int/lit8 v0, v3, 0x2

    if-ne v0, v4, :cond_a2

    move v2, v4

    :cond_a2
    move v4, v2

    goto/16 :goto_d

    :cond_a5
    move v0, v3

    goto :goto_55
.end method
