.class Lcom/mapquest/android/maps/MapQuestOSMTileFactory;
.super Lcom/mapquest/android/maps/OSMTileFactory;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "mq.maps.mapquestosmtilefactory"


# instance fields
.field protected mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapConfiguration;)V
    .registers 5

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/OSMTileFactory;-><init>(Lcom/mapquest/android/maps/MapView;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    .line 10
    iput-object p2, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    .line 11
    return-void
.end method

.method private getFallbackTileUrl(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->getFallbackUrl()Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 37
    iget-object v1, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getFallbackUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapProvider;->getTileFallbackUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapProvider()Lcom/mapquest/android/maps/MapProvider;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    return-object v0
.end method

.method protected getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "mqosm"

    return-object v0
.end method

.method protected getTileURL(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->getURL(Lcom/mapquest/android/maps/TileType;)Ljava/lang/String;

    move-result-object v0

    .line 19
    if-nez v0, :cond_f

    .line 20
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->getFallbackTileUrl(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_e
    return-object v0

    .line 23
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

    .line 24
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

    .line 25
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

    .line 26
    const-string v1, "{$ext}"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_6d} :catch_6f

    move-result-object v0

    goto :goto_e

    .line 28
    :catch_6f
    move-exception v0

    .line 29
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->getFallbackTileUrl(Lcom/mapquest/android/maps/Tile;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method protected getURL(Lcom/mapquest/android/maps/TileType;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mapquest/android/maps/MapQuestOSMTileFactory;->mapConfiguration:Lcom/mapquest/android/maps/MapConfiguration;

    const-string v1, "open"

    invoke-virtual {p1}, Lcom/mapquest/android/maps/TileType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/MapConfiguration;->getUrlPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedTileType(Lcom/mapquest/android/maps/TileType;)Z
    .registers 3

    .prologue
    .line 58
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
