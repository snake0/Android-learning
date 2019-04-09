.class Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/TileFactory;


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://vtiles01.mqcdn.com/tiles/std/vy/"

.field private static final LOG_TAG:Ljava/lang/String; = "com.mapquest.android.maps.legacymapquesttilefactory"

.field private static PIXELSPERLATDEGREE:D = 0.0

.field private static PIXELSPERLNGDEGREE:D = 0.0

.field private static SCALES:[I = null

.field private static final TILE_SIZE:I = 0x100

.field private static final ZOOM_MAX:B = 0x10t

.field private static final ZOOM_MIN:B = 0x1t

.field private static final provider:Ljava/lang/String; = "mq"


# instance fields
.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private projection:Lcom/mapquest/android/maps/MapQuestProjection;

.field private tileCacheVersion:Ljava/lang/String;

.field private type:Lcom/mapquest/android/maps/TileType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    const-wide v0, 0x41b2cef2cba97364L    # 3.15552459661917E8

    sput-wide v0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->PIXELSPERLATDEGREE:D

    .line 13
    const-wide v0, 0x41add7e92bd1de07L    # 2.5034459790989706E8

    sput-wide v0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->PIXELSPERLNGDEGREE:D

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->SCALES:[I

    return-void

    :array_18
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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    iput-object v0, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->type:Lcom/mapquest/android/maps/TileType;

    .line 23
    new-instance v0, Lcom/mapquest/android/maps/MapQuestProjection;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/MapQuestProjection;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->projection:Lcom/mapquest/android/maps/MapQuestProjection;

    .line 24
    iput-object p1, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 25
    return-void
.end method

.method private getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v1, "http://vtiles01.mqcdn.com/tiles/std/vy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/TileType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->SCALES:[I

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildTile(IIILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
    .registers 14

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->projection:Lcom/mapquest/android/maps/MapQuestProjection;

    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalFromScreen(II)Landroid/graphics/Point;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_3c

    .line 62
    iget v1, v0, Landroid/graphics/Point;->x:I

    shr-int/lit8 v1, v1, 0x8

    .line 63
    iget v2, v0, Landroid/graphics/Point;->y:I

    shr-int/lit8 v2, v2, 0x8

    .line 64
    shl-int/lit8 v3, v1, 0x8

    .line 65
    shl-int/lit8 v4, v2, 0x8

    add-int/lit16 v4, v4, 0x100

    .line 66
    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int v5, v3, v5

    add-int/2addr v5, p1

    .line 67
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    add-int/2addr v0, p2

    .line 68
    new-instance v8, Landroid/graphics/Rect;

    add-int/lit16 v6, v5, 0x100

    add-int/lit16 v7, v0, 0x100

    invoke-direct {v8, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    new-instance v0, Lcom/mapquest/android/maps/Tile;

    const-string v6, "mq"

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mapquest/android/maps/Tile;-><init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/TileType;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/Tile;->setUrl(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v8}, Lcom/mapquest/android/maps/Tile;->setRect(Landroid/graphics/Rect;)V

    .line 74
    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public buildTile(Lcom/mapquest/android/maps/GeoPoint;ILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
    .registers 12

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->projection:Lcom/mapquest/android/maps/MapQuestProjection;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalX(DI)I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    .line 53
    iget-object v0, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->projection:Lcom/mapquest/android/maps/MapQuestProjection;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->from1E6(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lcom/mapquest/android/maps/MapQuestProjection;->getGlobalY(DI)I

    move-result v0

    shr-int/lit8 v2, v0, 0x8

    .line 54
    new-instance v0, Lcom/mapquest/android/maps/Tile;

    mul-int/lit16 v3, v1, 0x100

    mul-int/lit16 v4, v2, 0x100

    add-int/lit16 v4, v4, 0x100

    const-string v6, "mq"

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/mapquest/android/maps/Tile;-><init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/TileType;)V

    .line 55
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/Tile;->setUrl(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method public buildTile(Lcom/mapquest/android/maps/Tile;ILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
    .registers 6

    .prologue
    .line 46
    invoke-virtual {p1, p3}, Lcom/mapquest/android/maps/Tile;->copy(Lcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/Tile;->setUrl(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public getMapProvider()Lcom/mapquest/android/maps/MapProvider;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .registers 2

    .prologue
    .line 79
    const/16 v0, 0x10

    return v0
.end method

.method public getMinZoomLevel()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public getProjection()Lcom/mapquest/android/maps/Projection;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->projection:Lcom/mapquest/android/maps/MapQuestProjection;

    return-object v0
.end method

.method public getTileSize()I
    .registers 2

    .prologue
    .line 91
    const/16 v0, 0x100

    return v0
.end method

.method public getTileType()Lcom/mapquest/android/maps/TileType;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->type:Lcom/mapquest/android/maps/TileType;

    return-object v0
.end method

.method public isSupportedTileType(Lcom/mapquest/android/maps/TileType;)Z
    .registers 3

    .prologue
    .line 99
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/mapquest/android/maps/TileType;->TRAFFIC:Lcom/mapquest/android/maps/TileType;

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setType(Lcom/mapquest/android/maps/TileType;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mapquest/android/maps/LegacyMapQuestTileFactory;->type:Lcom/mapquest/android/maps/TileType;

    .line 29
    return-void
.end method
