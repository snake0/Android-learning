.class Lcom/mapquest/android/maps/Tile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mapquest/android/maps/Tile;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bytes:[B

.field private createdOn:Ljava/util/Date;

.field private id:J

.field private key:Ljava/lang/String;

.field private final pixelX:I

.field private final pixelY:I

.field private priority:I

.field private final provider:Ljava/lang/String;

.field private rect:Landroid/graphics/Rect;

.field private tileType:Lcom/mapquest/android/maps/TileType;

.field private url:Ljava/lang/String;

.field private final x:I

.field private final y:I

.field private final zoomLevel:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/TileType;)V
    .registers 9

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/mapquest/android/maps/Tile;->x:I

    .line 26
    iput p2, p0, Lcom/mapquest/android/maps/Tile;->y:I

    .line 27
    iput p3, p0, Lcom/mapquest/android/maps/Tile;->pixelX:I

    .line 28
    iput p4, p0, Lcom/mapquest/android/maps/Tile;->pixelY:I

    .line 29
    iput p5, p0, Lcom/mapquest/android/maps/Tile;->zoomLevel:I

    .line 30
    iput-object p6, p0, Lcom/mapquest/android/maps/Tile;->provider:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/mapquest/android/maps/Tile;->tileType:Lcom/mapquest/android/maps/TileType;

    .line 32
    invoke-direct {p0}, Lcom/mapquest/android/maps/Tile;->cacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/Tile;->key:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private cacheKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildCacheKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->key:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lcom/mapquest/android/maps/Tile;)I
    .registers 4

    .prologue
    .line 68
    iget v0, p0, Lcom/mapquest/android/maps/Tile;->priority:I

    iget v1, p1, Lcom/mapquest/android/maps/Tile;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 7
    check-cast p1, Lcom/mapquest/android/maps/Tile;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/Tile;->compareTo(Lcom/mapquest/android/maps/Tile;)I

    move-result v0

    return v0
.end method

.method public copy(Lcom/mapquest/android/maps/TileType;)Lcom/mapquest/android/maps/Tile;
    .registers 10

    .prologue
    .line 134
    new-instance v0, Lcom/mapquest/android/maps/Tile;

    iget v1, p0, Lcom/mapquest/android/maps/Tile;->x:I

    iget v2, p0, Lcom/mapquest/android/maps/Tile;->y:I

    iget v3, p0, Lcom/mapquest/android/maps/Tile;->pixelX:I

    iget v4, p0, Lcom/mapquest/android/maps/Tile;->pixelY:I

    iget v5, p0, Lcom/mapquest/android/maps/Tile;->zoomLevel:I

    iget-object v6, p0, Lcom/mapquest/android/maps/Tile;->provider:Ljava/lang/String;

    if-nez p1, :cond_16

    iget-object v7, p0, Lcom/mapquest/android/maps/Tile;->tileType:Lcom/mapquest/android/maps/TileType;

    :goto_12
    invoke-direct/range {v0 .. v7}, Lcom/mapquest/android/maps/Tile;-><init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/TileType;)V

    return-object v0

    :cond_16
    move-object v7, p1

    goto :goto_12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 142
    if-ne p0, p1, :cond_5

    .line 143
    const/4 v0, 0x1

    .line 150
    :cond_4
    :goto_4
    return v0

    .line 144
    :cond_5
    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 149
    check-cast p1, Lcom/mapquest/android/maps/Tile;

    .line 150
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->bytes:[B

    return-object v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->createdOn:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/mapquest/android/maps/Tile;->id:J

    return-wide v0
.end method

.method public getPixelX()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/mapquest/android/maps/Tile;->pixelX:I

    return v0
.end method

.method public getPixelY()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/mapquest/android/maps/Tile;->pixelY:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTileType()Lcom/mapquest/android/maps/TileType;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->tileType:Lcom/mapquest/android/maps/TileType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mapquest/android/maps/Tile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/mapquest/android/maps/Tile;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/mapquest/android/maps/Tile;->y:I

    return v0
.end method

.method public getZoomLevel()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/mapquest/android/maps/Tile;->zoomLevel:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_11

    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setBitMap(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mapquest/android/maps/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 131
    return-void
.end method

.method public setBytes([B)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mapquest/android/maps/Tile;->bytes:[B

    .line 77
    return-void
.end method

.method public setCreatedOn(Ljava/util/Date;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mapquest/android/maps/Tile;->createdOn:Ljava/util/Date;

    .line 115
    return-void
.end method

.method public setId(J)V
    .registers 3

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/mapquest/android/maps/Tile;->id:J

    .line 107
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mapquest/android/maps/Tile;->rect:Landroid/graphics/Rect;

    .line 89
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mapquest/android/maps/Tile;->url:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mapquest/android/maps/Tile;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pixelX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/Tile;->pixelX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pixelY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/Tile;->pixelY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/Tile;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/Tile;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/Tile;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/Tile;->zoomLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
