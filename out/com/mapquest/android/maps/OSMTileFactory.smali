.class Lcom/mapquest/android/maps/OSMTileFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/TileFactory;


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "http://c.tile.openstreetmap.org/"

.field private static final TILE_SIZE:I = 0x100

.field private static final ZOOM_MAX:B = 0x12t

.field private static final ZOOM_MIN:B = 0x1t


# instance fields
.field mapView:Lcom/mapquest/android/maps/MapView;

.field projection:Lcom/mapquest/android/maps/MercatorProjection;

.field reuse:Landroid/graphics/Point;

.field private type:Lcom/mapquest/android/maps/TileType;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    iput-object v0, p0, Lcom/mapquest/android/maps/OSMTileFactory;->type:Lcom/mapquest/android/maps/TileType;

    .line 18
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/OSMTileFactory;->reuse:Landroid/graphics/Point;

    .line 19
    new-instance v0, Lcom/mapquest/android/maps/MercatorProjection;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/MercatorProjection;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/OSMTileFactory;->projection:Lcom/mapquest/android/maps/MercatorProjection;

    .line 20
    iput-object p1, p0, Lcom/mapquest/android/maps/OSMTileFactory;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 21
    return-void
.end method


# virtual methods
.method public buildTile(IIILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
    .registers 14

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mapquest/android/maps/OSMTileFactory;->projection:Lcom/mapquest/android/maps/MercatorProjection;

    iget-object v1, p0, Lcom/mapquest/android/maps/OSMTileFactory;->reuse:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mapquest/android/maps/MercatorProjection;->getGlobalFromScreen(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_3f

    .line 44
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit16 v1, v1, 0x100

    .line 45
    iget v2, v0, Landroid/graphics/Point;->y:I

    div-int/lit16 v2, v2, 0x100

    .line 46
    mul-int/lit16 v3, v1, 0x100

    .line 47
    mul-int/lit16 v4, v2, 0x100

    .line 48
    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int v5, v3, v5

    add-int/2addr v5, p1

    .line 49
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v4, v0

    add-int/2addr v0, p2

    .line 50
    new-instance v8, Landroid/graphics/Rect;

    add-int/lit16 v6, v5, 0x100

    add-int/lit16 v7, v0, 0x100

    invoke-direct {v8, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    new-instance v0, Lcom/mapquest/android/maps/Tile;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/OSMTileFactory;->getProvider()Ljava/lang/String;

    move-result-object v6

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mapquest/android/maps/Tile;-><init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/TileType;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/OSMTileFactory;->getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/Tile;->setUrl(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v8}, Lcom/mapquest/android/maps/Tile;->setRect(Landroid/graphics/Rect;)V

    .line 56
    :goto_3e
    return-object v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public buildTile(Lcom/mapquest/android/maps/GeoPoint;ILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
    .registers 12

    .prologue
    .line 61
    iget-object v1, p0, Lcom/mapquest/android/maps/OSMTileFactory;->projection:Lcom/mapquest/android/maps/MercatorProjection;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v1, p1, v0}, Lcom/mapquest/android/maps/MercatorProjection;->toGlobalPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 62
    iget v1, v0, Landroid/graphics/Point;->x:I

    shr-int/lit8 v1, v1, 0x8

    .line 63
    iget v0, v0, Landroid/graphics/Point;->y:I

    shr-int/lit8 v2, v0, 0x8

    .line 64
    new-instance v0, Lcom/mapquest/android/maps/Tile;

    mul-int/lit16 v3, v1, 0x100

    mul-int/lit16 v4, v2, 0x100

    invoke-virtual {p0}, Lcom/mapquest/android/maps/OSMTileFactory;->getProvider()Ljava/lang/String;

    move-result-object v6

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/mapquest/android/maps/Tile;-><init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/TileType;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/OSMTileFactory;->getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/Tile;->setUrl(Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method public buildTile(Lcom/mapquest/android/maps/Tile;ILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
    .registers 6

    .prologue
    .line 36
    invoke-virtual {p1, p3}, Lcom/mapquest/android/maps/Tile;->copy(Lcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/OSMTileFactory;->getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/Tile;->setUrl(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public getMapProvider()Lcom/mapquest/android/maps/MapProvider;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .registers 2

    .prologue
    .line 82
    const/16 v0, 0x12

    return v0
.end method

.method public getMinZoomLevel()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public getProjection()Lcom/mapquest/android/maps/Projection;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mapquest/android/maps/OSMTileFactory;->projection:Lcom/mapquest/android/maps/MercatorProjection;

    return-object v0
.end method

.method protected getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "osm"

    return-object v0
.end method

.method public getTileSize()I
    .registers 2

    .prologue
    .line 28
    const/16 v0, 0x100

    return v0
.end method

.method public getTileType()Lcom/mapquest/android/maps/TileType;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mapquest/android/maps/OSMTileFactory;->type:Lcom/mapquest/android/maps/TileType;

    return-object v0
.end method

.method protected getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/OSMTileFactory;->getURL(Lcom/mapquest/android/maps/TileType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getURL(Lcom/mapquest/android/maps/TileType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    const-string v0, "http://c.tile.openstreetmap.org/"

    return-object v0
.end method

.method public isSupportedTileType(Lcom/mapquest/android/maps/TileType;)Z
    .registers 3

    .prologue
    .line 98
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setType(Lcom/mapquest/android/maps/TileType;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mapquest/android/maps/OSMTileFactory;->type:Lcom/mapquest/android/maps/TileType;

    .line 95
    return-void
.end method
