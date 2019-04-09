.class Lcom/mapquest/android/maps/MemoryTileCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/ITileCache;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bumped:Z

.field removeHandler:Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;

.field private synTileCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/mapquest/android/maps/MemoryTileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/MemoryTileCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->removeHandler:Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;

    .line 22
    new-instance v0, Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-direct {v0, p0, p1}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;-><init>(Lcom/mapquest/android/maps/MemoryTileCache;I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    .line 23
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->synTileCache:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;-><init>(Lcom/mapquest/android/maps/MemoryTileCache;ILandroid/os/Looper;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->removeHandler:Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;

    .line 25
    return-void
.end method


# virtual methods
.method public addTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 6

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 51
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 53
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 54
    iget-object v1, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    .line 55
    iget-object v1, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    monitor-enter v1

    .line 56
    :try_start_1d
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getTileType()Lcom/mapquest/android/maps/TileType;

    move-result-object v2

    sget-object v3, Lcom/mapquest/android/maps/TileType;->HYB:Lcom/mapquest/android/maps/TileType;

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->bumped:Z

    if-nez v2, :cond_34

    .line 57
    iget-object v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    iget v3, v2, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->capacity:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->capacity:I

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->bumped:Z

    .line 61
    :cond_34
    iget-object v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 62
    monitor-exit v1

    .line 71
    :cond_3d
    :goto_3d
    return-void

    .line 65
    :cond_3e
    iget-object v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v1

    goto :goto_3d

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_1d .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    .line 87
    iget-object v1, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    monitor-enter v1

    .line 88
    :try_start_5
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 92
    if-eqz v0, :cond_f

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_f

    .line 98
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0

    .line 97
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->clear()V

    .line 98
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    .line 99
    return-void
.end method

.method public contains(Lcom/mapquest/android/maps/Tile;)Z
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MemoryTileCache;->clear()V

    .line 107
    return-void
.end method

.method public getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p1, :cond_5

    move-object p1, v1

    .line 42
    :goto_4
    return-object p1

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 32
    if-nez v0, :cond_d

    move-object p1, v1

    .line 33
    goto :goto_4

    .line 35
    :cond_d
    iget-object v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    .line 36
    iget-object v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    monitor-enter v2

    .line 37
    :try_start_12
    iget-object v3, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {v3, v0}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 38
    if-nez v0, :cond_1f

    .line 39
    monitor-exit v2

    move-object p1, v1

    goto :goto_4

    .line 41
    :cond_1f
    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/Tile;->setBitMap(Landroid/graphics/Bitmap;)V

    .line 42
    monitor-exit v2

    goto :goto_4

    .line 44
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public removeTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    .line 79
    iget-object v1, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    monitor-enter v1

    .line 80
    :try_start_5
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 81
    iget-object v2, p0, Lcom/mapquest/android/maps/MemoryTileCache;->removeHandler:Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;

    invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->removeBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache;->tileCache:Lcom/mapquest/android/maps/MemoryTileCache$Cache;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    mul-int/lit16 v0, v0, 0x100

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
