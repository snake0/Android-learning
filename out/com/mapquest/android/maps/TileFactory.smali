.class interface abstract Lcom/mapquest/android/maps/TileFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buildTile(IIILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
.end method

.method public abstract buildTile(Lcom/mapquest/android/maps/GeoPoint;ILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
.end method

.method public abstract buildTile(Lcom/mapquest/android/maps/Tile;ILcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
.end method

.method public abstract getMapProvider()Lcom/mapquest/android/maps/MapProvider;
.end method

.method public abstract getMaxZoomLevel()I
.end method

.method public abstract getMinZoomLevel()I
.end method

.method public abstract getProjection()Lcom/mapquest/android/maps/Projection;
.end method

.method public abstract getTileSize()I
.end method

.method public abstract getTileType()Lcom/mapquest/android/maps/TileType;
.end method

.method public abstract isSupportedTileType(Lcom/mapquest/android/maps/TileType;)Z
.end method

.method public abstract setType(Lcom/mapquest/android/maps/TileType;)V
.end method
