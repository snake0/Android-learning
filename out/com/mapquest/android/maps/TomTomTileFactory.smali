.class Lcom/mapquest/android/maps/TomTomTileFactory;
.super Lcom/mapquest/android/maps/OSMTileFactory;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final USE_TILE_CACHE_SERVER:Z


# instance fields
.field private mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

.field sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    const-class v0, Lcom/mapquest/android/maps/TomTomTileFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/TomTomTileFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V
    .registers 5

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/OSMTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    .line 11
    iput-object p2, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    .line 12
    return-void
.end method

.method private getFallbackTileUrl(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/mapquest/android/maps/TomTomTileFactory;->getFallbackUrl()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46
    iget-object v1, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v0, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v0, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getFallbackUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapProvider;->getTileFallbackUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapProvider()Lcom/mapquest/android/maps/MapProvider;
    .registers 2

    .prologue
    .line 19
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    return-object v0
.end method

.method protected getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    const-string v0, "tt"

    return-object v0
.end method

.method protected getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TomTomTileFactory;->getURL(Lcom/mapquest/android/maps/TileType;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-nez v0, :cond_f

    .line 29
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TomTomTileFactory;->getFallbackTileUrl(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_e
    return-object v0

    .line 32
    :cond_f
    :try_start_f
    const-string v1, "{$z}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "{$x}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "{$y}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "{$ext}"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_6d} :catch_6f

    move-result-object v0

    goto :goto_e

    .line 37
    :catch_6f
    move-exception v0

    .line 38
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TomTomTileFactory;->getFallbackTileUrl(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method protected getURL(Lcom/mapquest/android/maps/TileType;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mapquest/android/maps/TomTomTileFactory;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    const-string v1, "commercial2"

    invoke-virtual {p1}, Lcom/mapquest/android/maps/TileType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/MapConfiguration;->getUrlPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedTileType(Lcom/mapquest/android/maps/TileType;)Z
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lcom/mapquest/android/maps/TileType;->MAP:Lcom/mapquest/android/maps/TileType;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/TileType;->SAT:Lcom/mapquest/android/maps/TileType;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/TileType;->SATHYB:Lcom/mapquest/android/maps/TileType;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/TileType;->TRAFFIC:Lcom/mapquest/android/maps/TileType;

    if-ne p1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
