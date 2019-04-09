.class Lcom/mapquest/android/maps/MapQuestProjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/ProjectionX;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static PIXERSPERLATDEGREE:D

.field public static PIXERSPERLNGDEGREE:D

.field private static PIXERSPERMETER:D

.field public static final SCALES:[I


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
    .registers 2

    .prologue
    .line 7
    const-class v0, Lcom/mapquest/android/maps/MapQuestProjection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->LOG_TAG:Ljava/lang/String;

    .line 9
    const-wide v0, 0x41b2cef2cba97364L    # 3.15552459661917E8

    sput-wide v0, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLATDEGREE:D

    .line 10
    const-wide v0, 0x41add7e92bd1de07L    # 2.5034459790989706E8

    sput-wide v0, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLNGDEGREE:D

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    .line 17
    const-wide v0, 0x40a6254b5dcc63f1L    # 2834.6472

    sput-wide v0, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERMETER:D

    return-void

    .line 16
    nop

    :array_28
    .array-data 4
        0x53ef3fd
        0x1bfa6aa
        0x95378e
        0x35b7d7
        0x16f4db
        0xab369
        0x4f49f
        0x25d46
        0x124f7
        0x8ca0
        0x4650
        0x2328
        0x125c
        0x9c4
        0x5dc
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x100

    iput v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->TILE_SIZE:I

    .line 21
    iput-object p1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 22
    return-void
.end method

.method private check()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object v2, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    iget v3, p0, Lcom/mapquest/android/maps/MapQuestProjection;->zoomLevel:I

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 30
    :cond_d
    iget-object v2, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v2, v2, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 31
    if-eqz v2, :cond_4f

    .line 32
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    iget v4, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerLat:I

    if-eq v3, v4, :cond_1c

    move v0, v1

    .line 36
    :cond_1c
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    iget v4, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerLng:I

    if-eq v3, v4, :cond_53

    .line 40
    :goto_24
    if-eqz v1, :cond_4f

    .line 41
    if-eqz v1, :cond_4f

    .line 42
    monitor-enter p0

    .line 43
    :try_start_29
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->zoomLevel:I

    .line 44
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerLat:I

    .line 45
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerLng:I

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v2, v0}, Lcom/mapquest/android/maps/MapQuestProjection;->toGlobalPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 47
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerXPix:I

    .line 48
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerYPix:I

    .line 49
    monitor-exit p0

    .line 54
    :cond_4f
    return-void

    .line 49
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
    const-wide v0, 0x4056800000000000L    # 90.0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    .line 126
    iget-object v4, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v4}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v6

    .line 127
    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-virtual {p0, v4, v5, v6}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalX(DI)I

    move-result v4

    .line 128
    add-int v5, v4, p1

    rem-int v7, v5, v4

    .line 129
    invoke-direct {p0, p2, v6}, Lcom/mapquest/android/maps/MapQuestProjection;->pixelYToLatitude(II)D

    move-result-wide v4

    .line 130
    cmpl-double v8, v4, v0

    if-lez v8, :cond_37

    .line 136
    :goto_25
    invoke-direct {p0, v7, v6}, Lcom/mapquest/android/maps/MapQuestProjection;->pixelXToLongitude(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v2

    .line 137
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v0

    .line 138
    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v1, v0, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    return-object v1

    .line 132
    :cond_37
    cmpg-double v0, v4, v2

    if-gez v0, :cond_3d

    move-wide v0, v2

    .line 133
    goto :goto_25

    :cond_3d
    move-wide v0, v4

    goto :goto_25
.end method

.method private getGlobalFromScreenX(I)I
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v0

    .line 108
    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerXPix:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 109
    return v0
.end method

.method private getGlobalFromScreenY(I)I
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v0

    .line 114
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerYPix:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 115
    return v0
.end method

.method private getScreenFromGlobalX(I)I
    .registers 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    .line 90
    const-wide v2, 0x4066800000000000L    # 180.0

    invoke-virtual {p0, v2, v3, v1}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalX(DI)I

    move-result v2

    .line 91
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerXPix:I

    sub-int/2addr v0, v1

    add-int v1, v0, p1

    .line 92
    iget v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerXPix:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v3, v2, 0x2

    if-le v0, v3, :cond_31

    .line 93
    iget v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerXPix:I

    if-ge v0, p1, :cond_2f

    const/4 v0, -0x1

    .line 94
    :goto_2c
    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 97
    :goto_2e
    return v0

    .line 93
    :cond_2f
    const/4 v0, 0x1

    goto :goto_2c

    :cond_31
    move v0, v1

    goto :goto_2e
.end method

.method private getScreenFromGlobalY(I)I
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v0

    .line 102
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->centerYPix:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 103
    return v0
.end method

.method private pixelXToLongitude(II)D
    .registers 12

    .prologue
    const-wide v7, 0x412e848000000000L    # 1000000.0

    .line 206
    const/4 v0, 0x1

    if-ge p2, v0, :cond_a

    .line 207
    const/16 p2, 0x9

    .line 210
    :cond_a
    :try_start_a
    sget-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    .line 211
    int-to-double v1, p1

    sget-wide v3, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLNGDEGREE:D
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_20

    int-to-double v5, v0

    div-double/2addr v3, v5

    div-double v0, v1, v3

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v2

    .line 212
    mul-double/2addr v0, v7

    div-double/2addr v0, v7

    .line 216
    :goto_1f
    return-wide v0

    .line 214
    :catch_20
    move-exception v0

    .line 216
    const-wide/16 v0, 0x0

    goto :goto_1f
.end method

.method private pixelYToLatitude(II)D
    .registers 12

    .prologue
    const-wide v7, 0x412e848000000000L    # 1000000.0

    .line 190
    const/4 v0, 0x1

    if-ge p2, v0, :cond_a

    .line 191
    const/16 p2, 0x9

    .line 194
    :cond_a
    :try_start_a
    sget-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    .line 195
    int-to-double v1, p1

    sget-wide v3, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLATDEGREE:D
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_20

    int-to-double v5, v0

    div-double/2addr v3, v5

    div-double v0, v1, v3

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v2

    .line 196
    mul-double/2addr v0, v7

    div-double/2addr v0, v7

    .line 200
    :goto_1f
    return-wide v0

    .line 198
    :catch_20
    move-exception v0

    .line 200
    const-wide/16 v0, 0x0

    goto :goto_1f
.end method

.method private toGlobalPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 142
    if-nez p2, :cond_7

    .line 143
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalX(DI)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 148
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalY(DI)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 149
    return-object p2
.end method


# virtual methods
.method public calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, p1, v0, v0}, Lcom/mapquest/android/maps/MapQuestProjection;->calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;II)I

    move-result v0

    return v0
.end method

.method public calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;II)I
    .registers 16

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    .line 232
    iget-object v2, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    .line 233
    const/4 v0, 0x1

    .line 234
    iget-object v3, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v3

    sub-int/2addr v3, p2

    .line 235
    iget-object v4, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v4}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v4

    sub-int/2addr v4, p3

    .line 237
    sget-object v5, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    iget v6, p0, Lcom/mapquest/android/maps/MapQuestProjection;->zoomLevel:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    .line 238
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sget-wide v8, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLNGDEGREE:D

    int-to-double v10, v5

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    .line 239
    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    sub-int v1, v2, v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sget-wide v8, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLATDEGREE:D

    int-to-double v10, v5

    div-double/2addr v8, v10

    mul-double/2addr v1, v8

    .line 240
    int-to-double v8, v5

    int-to-double v10, v3

    div-double/2addr v6, v10

    mul-double/2addr v6, v8

    int-to-double v8, v5

    int-to-double v3, v4

    div-double/2addr v1, v3

    mul-double/2addr v1, v8

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 243
    :goto_54
    sget-object v3, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    aget v3, v3, v0

    int-to-double v3, v3

    cmpg-double v3, v1, v3

    if-gez v3, :cond_6a

    sget-object v3, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    array-length v3, v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_67

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6a

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 248
    :catch_67
    move-exception v0

    .line 250
    const/16 v0, 0x8

    :cond_6a
    return v0
.end method

.method public fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;
    .registers 5

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapQuestProjection;->check()V

    .line 154
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalFromScreenX(I)I

    move-result v0

    .line 155
    invoke-direct {p0, p2}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalFromScreenY(I)I

    move-result v1

    .line 156
    invoke-direct {p0, v0, v1}, Lcom/mapquest/android/maps/MapQuestProjection;->fromGlobalPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method protected getGlobalFromScreen(II)Landroid/graphics/Point;
    .registers 8

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalFromScreenX(I)I

    move-result v1

    .line 120
    invoke-direct {p0, p2}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalFromScreenY(I)I

    move-result v2

    .line 121
    const-wide v3, 0x4056800000000000L    # 90.0

    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalY(DI)I

    move-result v0

    .line 122
    if-ltz v2, :cond_21

    if-gt v2, v0, :cond_21

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method protected getGlobalX(DI)I
    .registers 10

    .prologue
    .line 58
    const/4 v0, 0x1

    if-ge p3, v0, :cond_5

    .line 59
    const/16 p3, 0x9

    .line 62
    :cond_5
    :try_start_5
    sget-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    int-to-double v0, v0

    .line 63
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v2, p1

    sget-wide v4, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLNGDEGREE:D
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_19

    div-double v0, v4, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 68
    :goto_18
    return v0

    .line 65
    :catch_19
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected getGlobalY(DI)I
    .registers 10

    .prologue
    .line 74
    const/4 v0, 0x1

    if-ge p3, v0, :cond_5

    .line 75
    const/16 p3, 0x9

    .line 78
    :cond_5
    :try_start_5
    sget-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    int-to-double v0, v0

    .line 79
    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v2, p1

    sget-wide v4, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERLATDEGREE:D
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_19

    div-double v0, v4, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 83
    :goto_18
    return v0

    .line 81
    :catch_19
    move-exception v0

    .line 83
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getScaleFactor(I)I
    .registers 4

    .prologue
    .line 185
    sget-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getScreenFromGlobal(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 5

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapQuestProjection;->check()V

    .line 222
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v1}, Lcom/mapquest/android/maps/MapQuestProjection;->getScreenFromGlobalX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/mapquest/android/maps/MapQuestProjection;->getScreenFromGlobalY(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public metersToEquatorPixels(F)F
    .registers 6

    .prologue
    .line 161
    :try_start_0
    iget v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->zoomLevel:I

    if-gtz v0, :cond_8

    .line 162
    const/16 v0, 0x9

    iput v0, p0, Lcom/mapquest/android/maps/MapQuestProjection;->zoomLevel:I

    .line 165
    :cond_8
    sget-object v0, Lcom/mapquest/android/maps/MapQuestProjection;->SCALES:[I

    iget v1, p0, Lcom/mapquest/android/maps/MapQuestProjection;->zoomLevel:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-double v0, v0

    sget-wide v2, Lcom/mapquest/android/maps/MapQuestProjection;->PIXERSPERMETER:D
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_18

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 166
    div-float v0, p1, v0

    .line 168
    :goto_17
    return v0

    .line 167
    :catch_18
    move-exception v0

    .line 168
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 4

    .prologue
    .line 173
    if-nez p2, :cond_7

    .line 174
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 177
    :cond_7
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapQuestProjection;->check()V

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/MapQuestProjection;->toGlobalPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 179
    iget v0, p2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapQuestProjection;->getScreenFromGlobalX(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 180
    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapQuestProjection;->getScreenFromGlobalY(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 181
    return-object p2
.end method
