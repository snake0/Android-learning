.class public Lcom/mapquest/android/maps/MercatorProjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/ProjectionX;


# static fields
.field private static final EARTH_RADIUS_METERS:I = 0x615299

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_LAT:D = 85.05112877980659

.field private static final SCALE_FACTORS:[I


# instance fields
.field private final TILE_SIZE:I

.field private centerLat:I

.field private centerLng:I

.field private centerXPix:I

.field private centerYPix:I

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/mapquest/android/maps/MercatorProjection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/MercatorProjection;->LOG_TAG:Ljava/lang/String;

    .line 17
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/mapquest/android/maps/MercatorProjection;->SCALE_FACTORS:[I

    return-void

    :array_12
    .array-data 4
        0x0
        0x0
        0x69cbfc8
        0x34e5fe4
        0x1a72ff2
        0xd397f9
        0x69cbfc
        0x34e5fe
        0x1a72ff
        0xd397f
        0x69cbf
        0x34e5f
        0x1a72f
        0xd397
        0x69cb
        0x34e5
        0x1a72
        0xd39
        0x69c
    .end array-data
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x100

    iput v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->TILE_SIZE:I

    .line 20
    iput-object p1, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 21
    return-void
.end method

.method private check()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 24
    const/4 v0, 0x0

    .line 25
    iget-object v2, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    iget v3, p0, Lcom/mapquest/android/maps/MercatorProjection;->zoomLevel:I

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 29
    :cond_d
    iget-object v2, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v2, v2, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 30
    if-eqz v2, :cond_4f

    .line 31
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    iget v4, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerLat:I

    if-eq v3, v4, :cond_1c

    move v0, v1

    .line 35
    :cond_1c
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    iget v4, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerLng:I

    if-eq v3, v4, :cond_53

    .line 39
    :goto_24
    if-eqz v1, :cond_4f

    .line 40
    if-eqz v1, :cond_4f

    .line 41
    monitor-enter p0

    .line 42
    :try_start_29
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->zoomLevel:I

    .line 43
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerLat:I

    .line 44
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerLng:I

    .line 45
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/mapquest/android/maps/MercatorProjection;->toGlobalPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 46
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerXPix:I

    .line 47
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerYPix:I

    .line 48
    monitor-exit p0

    .line 53
    :cond_4f
    return-void

    .line 48
    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_50

    throw v0

    :cond_53
    move v1, v0

    goto :goto_24
.end method

.method private fromGlobalPixels(II)Lcom/mapquest/android/maps/GeoPoint;
    .registers 12

    .prologue
    const-wide v1, 0x40554345b1a549d6L    # 85.05112877980659

    const-wide v3, -0x3faabcba4e5ab62aL    # -85.05112877980659

    .line 60
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v7

    .line 61
    const/16 v0, 0x100

    shl-int/2addr v0, v7

    .line 62
    if-nez v0, :cond_32

    .line 63
    const/4 v0, 0x0

    .line 68
    :goto_16
    int-to-double v5, p2

    invoke-direct {p0, v5, v6, v7}, Lcom/mapquest/android/maps/MercatorProjection;->pixelYToLatitude(DI)D

    move-result-wide v5

    .line 69
    cmpl-double v8, v5, v1

    if-lez v8, :cond_37

    .line 75
    :goto_1f
    int-to-double v3, v0

    invoke-direct {p0, v3, v4, v7}, Lcom/mapquest/android/maps/MercatorProjection;->pixelXToLongitude(DI)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v0

    .line 76
    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v1

    .line 77
    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v1, v0}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    return-object v2

    .line 65
    :cond_32
    add-int v5, v0, p1

    rem-int v0, v5, v0

    goto :goto_16

    .line 71
    :cond_37
    cmpg-double v1, v5, v3

    if-gez v1, :cond_3d

    move-wide v1, v3

    .line 72
    goto :goto_1f

    :cond_3d
    move-wide v1, v5

    goto :goto_1f
.end method

.method private metersPerPixel(DI)F
    .registers 10

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 81
    mul-double v0, p1, v4

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    const-wide v2, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v0, v2

    const/16 v2, 0x100

    shl-int/2addr v2, p3

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private pixelXToLongitude(DI)D
    .registers 10

    .prologue
    .line 125
    const-wide v0, 0x4076800000000000L    # 360.0

    const/16 v2, 0x100

    shl-int/2addr v2, p3

    int-to-double v2, v2

    div-double v2, p1, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private pixelYToLatitude(DI)D
    .registers 14

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 129
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/16 v2, 0x100

    shl-int/2addr v2, p3

    int-to-double v2, v2

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    .line 130
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4076800000000000L    # 360.0

    neg-double v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v8

    sub-double v0, v2, v0

    .line 131
    return-wide v0
.end method


# virtual methods
.method public calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0, v0}, Lcom/mapquest/android/maps/MercatorProjection;->calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;II)I

    move-result v0

    return v0
.end method

.method public calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;II)I
    .registers 13

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    .line 191
    :try_start_6
    iget-object v2, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {p0, v2, v0}, Lcom/mapquest/android/maps/MercatorProjection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 192
    iget-object v3, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {p0, v3, v0}, Lcom/mapquest/android/maps/MercatorProjection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 193
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    .line 194
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v5, v0

    .line 196
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-double v7, v0

    div-double v2, v3, v7

    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-double v7, v0

    div-double v4, v5, v7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 198
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_64

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 199
    :goto_5b
    iget-object v2, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    sub-int v0, v1, v0

    .line 204
    :goto_63
    return v0

    .line 198
    :cond_64
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_6a

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_5b

    .line 200
    :catch_6a
    move-exception v0

    move v0, v1

    goto :goto_63
.end method

.method public fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;
    .registers 6

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/mapquest/android/maps/MercatorProjection;->check()V

    .line 178
    iget v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerXPix:I

    iget-object v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 179
    iget v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerYPix:I

    iget-object v2, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    .line 180
    add-int/2addr v0, p1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/mapquest/android/maps/MercatorProjection;->fromGlobalPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method protected getGlobalFromScreen(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 8

    .prologue
    const/16 v2, 0x100

    .line 149
    invoke-direct {p0}, Lcom/mapquest/android/maps/MercatorProjection;->check()V

    .line 150
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    shl-int v0, v2, v0

    .line 151
    iget-object v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    shl-int/2addr v2, v1

    .line 156
    :try_start_14
    iget v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerXPix:I

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    sub-int v3, p1, v3

    add-int/2addr v1, v3

    rem-int v0, v1, v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_40

    .line 163
    :goto_24
    iget v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerYPix:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    sub-int v3, p2, v3

    add-int/2addr v1, v3

    .line 164
    if-ltz v1, :cond_47

    if-gt v1, v2, :cond_47

    .line 165
    if-nez p3, :cond_3c

    .line 166
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 169
    :cond_3c
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 172
    :goto_3f
    return-object p3

    .line 157
    :catch_40
    move-exception v0

    move-object v1, v0

    .line 158
    const/4 v0, 0x0

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 172
    :cond_47
    const/4 p3, 0x0

    goto :goto_3f
.end method

.method public getScaleFactor(I)I
    .registers 3

    .prologue
    .line 56
    sget-object v0, Lcom/mapquest/android/maps/MercatorProjection;->SCALE_FACTORS:[I

    aget v0, v0, p1

    return v0
.end method

.method public getScreenFromGlobal(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 7

    .prologue
    const/16 v1, 0x100

    .line 135
    invoke-direct {p0}, Lcom/mapquest/android/maps/MercatorProjection;->check()V

    .line 136
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    shl-int v2, v1, v0

    .line 137
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    shl-int v0, v1, v0

    .line 138
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerXPix:I

    sub-int v1, v0, v1

    .line 139
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerYPix:I

    sub-int v3, v0, v3

    .line 140
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v4, v2, 0x2

    if-le v0, v4, :cond_48

    .line 141
    if-gez v1, :cond_46

    const/4 v0, 0x1

    .line 142
    :goto_2c
    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 145
    :goto_2e
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 141
    :cond_46
    const/4 v0, -0x1

    goto :goto_2c

    :cond_48
    move v0, v1

    goto :goto_2e
.end method

.method public metersToEquatorPixels(F)F
    .registers 5

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mapquest/android/maps/MercatorProjection;->check()V

    .line 86
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-static {v0}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v0

    iget-object v2, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mapquest/android/maps/MercatorProjection;->metersPerPixel(DI)F

    move-result v0

    .line 87
    div-float v0, p1, v0

    return v0
.end method

.method toGlobalPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 13

    .prologue
    const/16 v9, 0x100

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 91
    if-nez p2, :cond_b

    .line 92
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 95
    :cond_b
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    .line 96
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    .line 97
    const-wide v3, 0x4066800000000000L    # 180.0

    add-double/2addr v1, v3

    const-wide v3, 0x4076800000000000L    # 360.0

    div-double/2addr v1, v3

    shl-int v3, v9, v0

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 98
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 100
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v5, v7, v1

    sub-double v1, v7, v1

    div-double v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v1, v5

    sub-double v1, v3, v1

    shl-int v0, v9, v0

    int-to-double v3, v0

    mul-double v0, v1, v3

    double-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 101
    return-object p2
.end method

.method public toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 8

    .prologue
    .line 105
    if-nez p2, :cond_7

    .line 106
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 109
    :cond_7
    invoke-direct {p0}, Lcom/mapquest/android/maps/MercatorProjection;->check()V

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/mapquest/android/maps/MercatorProjection;->toGlobalPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 111
    const/16 v0, 0x100

    iget-object v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    shl-int v2, v0, v1

    .line 112
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerXPix:I

    sub-int v1, v0, v1

    .line 113
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/mapquest/android/maps/MercatorProjection;->centerYPix:I

    sub-int v3, v0, v3

    .line 114
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v4, v2, 0x2

    if-le v0, v4, :cond_49

    .line 115
    if-gez v1, :cond_47

    const/4 v0, 0x1

    .line 116
    :goto_2e
    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 119
    :goto_30
    iget-object v1, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 120
    iget-object v0, p0, Lcom/mapquest/android/maps/MercatorProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 121
    return-object p2

    .line 115
    :cond_47
    const/4 v0, -0x1

    goto :goto_2e

    :cond_49
    move v0, v1

    goto :goto_30
.end method
