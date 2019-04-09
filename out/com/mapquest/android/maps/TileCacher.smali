.class Lcom/mapquest/android/maps/TileCacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/ITileCache;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private db:Lcom/mapquest/android/maps/ITileCache;

.field private memory:Lcom/mapquest/android/maps/ITileCache;

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/mapquest/android/maps/TileCacher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/TileCacher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/TileCacher;->total:I

    move-object v0, p1

    .line 19
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/mapquest/android/maps/TileCacher;->checkCacheSize(II)V

    .line 21
    new-instance v0, Lcom/mapquest/android/maps/FSTileCache;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/mapquest/android/maps/FSTileCache;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->db:Lcom/mapquest/android/maps/ITileCache;

    .line 22
    return-void
.end method


# virtual methods
.method public addTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->addTile(Lcom/mapquest/android/maps/Tile;)V

    .line 30
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->db:Lcom/mapquest/android/maps/ITileCache;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->addTile(Lcom/mapquest/android/maps/Tile;)V

    .line 31
    return-void
.end method

.method public checkCacheSize(II)V
    .registers 7

    .prologue
    const/16 v3, 0x32

    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    div-int/lit16 v1, p2, 0x100

    add-int/lit8 v1, v1, 0x2

    div-int/lit16 v2, p1, 0x100

    add-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    .line 74
    const/16 v2, 0x19

    if-le v1, v2, :cond_33

    if-ge v1, v3, :cond_33

    .line 75
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 80
    :cond_15
    :goto_15
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 82
    iget v1, p0, Lcom/mapquest/android/maps/TileCacher;->total:I

    if-le v0, v1, :cond_32

    .line 83
    monitor-enter p0

    .line 85
    :try_start_1d
    iput v0, p0, Lcom/mapquest/android/maps/TileCacher;->total:I

    .line 86
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    if-eqz v0, :cond_28

    .line 87
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->destroy()V

    .line 90
    :cond_28
    new-instance v0, Lcom/mapquest/android/maps/MemoryTileCache;

    iget v1, p0, Lcom/mapquest/android/maps/TileCacher;->total:I

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/MemoryTileCache;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    .line 91
    monitor-exit p0

    .line 94
    :cond_32
    return-void

    .line 76
    :cond_33
    if-le v1, v3, :cond_15

    .line 77
    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_15

    .line 91
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->clear()V

    .line 57
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->clear()V

    .line 58
    return-void
.end method

.method public contains(Lcom/mapquest/android/maps/Tile;)Z
    .registers 3

    .prologue
    .line 52
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->contains(Lcom/mapquest/android/maps/Tile;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->contains(Lcom/mapquest/android/maps/Tile;)Z

    move-result v0

    goto :goto_d
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->db:Lcom/mapquest/android/maps/ITileCache;

    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->destroy()V

    .line 66
    iput-object v1, p0, Lcom/mapquest/android/maps/TileCacher;->db:Lcom/mapquest/android/maps/ITileCache;

    .line 67
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->destroy()V

    .line 68
    iput-object v1, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    .line 69
    return-void
.end method

.method public getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    if-ne v0, p1, :cond_7

    iget-object p0, p0, Lcom/mapquest/android/maps/TileCacher;->db:Lcom/mapquest/android/maps/ITileCache;

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    if-ne v0, p1, :cond_e

    iget-object p0, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->ALL:Lcom/mapquest/android/maps/TileCacher$CacheType;

    if-eq v0, p1, :cond_6

    const/4 p0, 0x0

    goto :goto_6
.end method

.method public getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->memory:Lcom/mapquest/android/maps/ITileCache;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 35
    if-nez v0, :cond_e

    .line 36
    iget-object v0, p0, Lcom/mapquest/android/maps/TileCacher;->db:Lcom/mapquest/android/maps/ITileCache;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 39
    :cond_e
    return-object v0
.end method

.method public removeTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->removeTile(Lcom/mapquest/android/maps/Tile;)V

    .line 44
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->removeTile(Lcom/mapquest/android/maps/Tile;)V

    .line 45
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_29

    .line 46
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_29
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/mapquest/android/maps/ITileCache;->size()I

    move-result v0

    return v0
.end method
