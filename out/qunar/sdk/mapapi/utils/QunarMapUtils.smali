.class public Lqunar/sdk/mapapi/utils/QunarMapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GPOINT_CHINA_CENTER:Ljava/lang/String; = "35.563611,103.388611"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static OffsetLocation(Lqunar/sdk/location/QLocation;IILqunar/sdk/mapapi/QunarMapView;)Lqunar/sdk/location/QLocation;
    .registers 11

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p3}, Lqunar/sdk/mapapi/QunarMapView;->getQunarMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v2

    .line 143
    invoke-virtual {p3}, Lqunar/sdk/mapapi/QunarMapView;->getDisplayMap()Landroid/view/ViewGroup;

    move-result-object v0

    .line 144
    sget-object v3, Lqunar/sdk/mapapi/utils/QunarMapUtils$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {v2}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_92

    .line 179
    :cond_14
    :goto_14
    :pswitch_14
    return-object v1

    .line 146
    :pswitch_15
    instance-of v2, v0, Lcom/baidu/mapapi/map/MapView;

    if-eqz v2, :cond_14

    .line 147
    check-cast v0, Lcom/baidu/mapapi/map/MapView;

    .line 148
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    .line 149
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 150
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getProjection()Lcom/baidu/mapapi/map/Projection;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_8f

    .line 152
    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/Projection;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 153
    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 154
    iget v2, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 155
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 156
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-wide v2, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    :goto_4d
    move-object v1, v0

    .line 158
    goto :goto_14

    .line 164
    :pswitch_4f
    instance-of v2, v0, Lcom/mapquest/android/maps/MapView;

    if-eqz v2, :cond_14

    .line 165
    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 166
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 168
    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    .line 169
    invoke-interface {v0, v2, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 170
    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 171
    iget v2, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 172
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v1}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 173
    new-instance v1, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_14

    :cond_8f
    move-object v0, v1

    goto :goto_4d

    .line 144
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_4f
    .end packed-switch
.end method

.method public static formatGpoint(Ljava/lang/String;)Lqunar/sdk/location/QLocation;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 92
    if-eqz p0, :cond_b

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 130
    :cond_b
    :goto_b
    :pswitch_b
    return-object v0

    .line 95
    :cond_c
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_b

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b

    .line 104
    const/4 v2, 0x0

    :try_start_19
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 105
    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_6d

    move-result-wide v4

    .line 110
    sget-object v1, Lqunar/sdk/mapapi/utils/QunarMapUtils$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    sget-object v6, Lqunar/sdk/mapapi/QunarMapFacade;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {v6}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_70

    goto :goto_b

    .line 112
    :pswitch_34
    new-instance v0, Lcom/baidu/mapapi/utils/CoordinateConverter;

    invoke-direct {v0}, Lcom/baidu/mapapi/utils/CoordinateConverter;-><init>()V

    .line 113
    sget-object v1, Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/utils/CoordinateConverter;->from(Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/utils/CoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/utils/CoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 115
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-wide v2, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_b

    .line 123
    :pswitch_56
    new-instance v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;-><init>(DD)V

    invoke-virtual {v0}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->toExactWSGPointer()Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;

    move-result-object v1

    .line 124
    new-instance v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_b

    .line 106
    :catch_6d
    move-exception v1

    goto :goto_b

    .line 110
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_34
        :pswitch_b
        :pswitch_56
    .end packed-switch
.end method

.method public static formatGpoint(Ljava/lang/String;Lqunar/sdk/mapapi/QunarMapType;Z)Lqunar/sdk/location/QLocation;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p0, :cond_b

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 84
    :cond_b
    :goto_b
    :pswitch_b
    return-object v0

    .line 43
    :cond_c
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_b

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b

    .line 52
    const/4 v2, 0x0

    :try_start_19
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 53
    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_73

    move-result-wide v4

    .line 58
    sget-object v1, Lqunar/sdk/mapapi/utils/QunarMapUtils$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_76

    goto :goto_b

    .line 60
    :pswitch_32
    new-instance v0, Lcom/baidu/mapapi/utils/CoordinateConverter;

    invoke-direct {v0}, Lcom/baidu/mapapi/utils/CoordinateConverter;-><init>()V

    .line 61
    sget-object v1, Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/utils/CoordinateConverter;->from(Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/utils/CoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/utils/CoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 63
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-wide v2, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_b

    .line 72
    :pswitch_54
    if-eqz p2, :cond_5c

    .line 73
    new-instance v0, Lqunar/sdk/location/QLocation;

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_b

    .line 76
    :cond_5c
    new-instance v0, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;-><init>(DD)V

    invoke-virtual {v0}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->toExactWSGPointer()Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;

    move-result-object v1

    .line 77
    new-instance v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_b

    .line 54
    :catch_73
    move-exception v1

    goto :goto_b

    .line 58
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_32
        :pswitch_b
        :pswitch_54
    .end packed-switch
.end method

.method public static fromScreenLocation(Landroid/graphics/Point;Landroid/view/ViewGroup;)Lqunar/sdk/location/QLocation;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 187
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 205
    :cond_5
    :goto_5
    return-object v0

    .line 191
    :cond_6
    instance-of v1, p1, Lcom/baidu/mapapi/map/MapView;

    if-eqz v1, :cond_24

    .line 192
    check-cast p1, Lcom/baidu/mapapi/map/MapView;

    .line 193
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->getProjection()Lcom/baidu/mapapi/map/Projection;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_5

    .line 196
    invoke-virtual {v1, p0}, Lcom/baidu/mapapi/map/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 197
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-wide v2, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_5

    .line 199
    :cond_24
    instance-of v1, p1, Lcom/mapquest/android/maps/MapView;

    if-eqz v1, :cond_5

    .line 200
    check-cast p1, Lcom/mapquest/android/maps/MapView;

    .line 201
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 202
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    .line 203
    new-instance v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    goto :goto_5
.end method

.method public static getDistance(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/ViewGroup;)D
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 243
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 266
    :cond_6
    :goto_6
    :pswitch_6
    return-wide v0

    .line 247
    :cond_7
    sget-object v2, Lqunar/sdk/mapapi/utils/QunarMapUtils$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    sget-object v3, Lqunar/sdk/mapapi/QunarMapFacade;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {v3}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_32

    goto :goto_6

    .line 249
    :pswitch_15
    instance-of v2, p2, Lcom/baidu/mapapi/map/MapView;

    if-eqz v2, :cond_6

    .line 250
    check-cast p2, Lcom/baidu/mapapi/map/MapView;

    .line 251
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BaiduMap;->getProjection()Lcom/baidu/mapapi/map/Projection;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_6

    .line 254
    invoke-virtual {v2, p0}, Lcom/baidu/mapapi/map/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 255
    invoke-virtual {v2, p1}, Lcom/baidu/mapapi/map/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    goto :goto_6

    .line 247
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method

.method public static getDistance(Lqunar/sdk/location/QLocation;Lqunar/sdk/location/QLocation;)D
    .registers 11

    .prologue
    .line 275
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 276
    if-eqz p0, :cond_7

    if-nez p1, :cond_a

    .line 277
    :cond_7
    const-wide/16 v0, 0x0

    .line 281
    :goto_9
    return-wide v0

    .line 279
    :cond_a
    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 281
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    goto :goto_9
.end method

.method public static isPolygonContainsPoint(Ljava/util/List;Lqunar/sdk/location/QLocation;Lqunar/sdk/mapapi/QunarMapView;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;",
            "Lqunar/sdk/location/QLocation;",
            "Lqunar/sdk/mapapi/QunarMapView;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 292
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    if-nez p1, :cond_c

    .line 315
    :cond_b
    :goto_b
    :pswitch_b
    return v0

    .line 296
    :cond_c
    sget-object v1, Lqunar/sdk/mapapi/utils/QunarMapUtils$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {p2}, Lqunar/sdk/mapapi/QunarMapView;->getQunarMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_54

    goto :goto_b

    .line 299
    :pswitch_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 301
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 303
    :cond_42
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 306
    invoke-static {v1, v0}, Lcom/baidu/mapapi/utils/SpatialRelationUtil;->isPolygonContainsPoint(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v0

    goto :goto_b

    .line 296
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static toScreenLocation(Lqunar/sdk/location/QLocation;Landroid/view/ViewGroup;)Landroid/graphics/Point;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 214
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 233
    :cond_5
    :goto_5
    return-object v0

    .line 218
    :cond_6
    instance-of v1, p1, Lcom/baidu/mapapi/map/MapView;

    if-eqz v1, :cond_28

    .line 219
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 220
    check-cast p1, Lcom/baidu/mapapi/map/MapView;

    .line 221
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BaiduMap;->getProjection()Lcom/baidu/mapapi/map/Projection;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_5

    .line 224
    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/Projection;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_5

    .line 226
    :cond_28
    instance-of v1, p1, Lcom/mapquest/android/maps/MapView;

    if-eqz v1, :cond_5

    .line 227
    check-cast p1, Lcom/mapquest/android/maps/MapView;

    .line 228
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 230
    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    .line 231
    invoke-interface {v0, v2, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_5
.end method
