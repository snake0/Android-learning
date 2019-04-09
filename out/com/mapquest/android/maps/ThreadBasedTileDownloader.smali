.class Lcom/mapquest/android/maps/ThreadBasedTileDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/TileDownloader;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

.field private listener:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private maxRunningDownloads:I

.field private networkAvailable:Z

.field private queue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mapquest/android/maps/Tile;",
            ">;"
        }
    .end annotation
.end field

.field runningDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private tileCacher:Lcom/mapquest/android/maps/TileCacher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/TileCacher;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->maxRunningDownloads:I

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->runningDownloads:Ljava/util/Set;

    .line 59
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

    .line 60
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->networkAvailable:Z

    .line 62
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;-><init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/ThreadBasedTileDownloader$1;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->listener:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;

    .line 65
    iput-object p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 66
    iput-object p2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->queue:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    .line 69
    invoke-static {}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->getLastKnownNetworkState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->networkAvailable:Z

    .line 70
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->listener:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->registerHandler(Landroid/os/Handler;)V

    .line 72
    const/4 v0, 0x0

    :goto_40
    iget v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->maxRunningDownloads:I

    if-ge v0, v1, :cond_54

    .line 73
    new-instance v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;-><init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)V

    .line 74
    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->start()V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 78
    :cond_54
    return-void
.end method

.method static synthetic access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/HttpConnectionPool;
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->getHttpConnectionPoolInstance()Lcom/mapquest/android/maps/HttpConnectionPool;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/MapView;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->addToRunning(Lcom/mapquest/android/maps/Tile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->networkAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Z)Z
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->networkAvailable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V

    return-void
.end method

.method private addToRunning(Lcom/mapquest/android/maps/Tile;)V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->runningDownloads:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method private getHttpConnectionPoolInstance()Lcom/mapquest/android/maps/HttpConnectionPool;
    .registers 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

    if-nez v0, :cond_19

    .line 94
    monitor-enter p0

    .line 95
    :try_start_5
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

    if-nez v0, :cond_18

    .line 96
    new-instance v0, Lcom/mapquest/android/maps/HttpConnectionPool;

    iget v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->maxRunningDownloads:I

    iget v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->maxRunningDownloads:I

    const/16 v3, 0xbb8

    const/16 v4, 0x1388

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/HttpConnectionPool;-><init>(IIII)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

    .line 98
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1c

    .line 101
    :cond_19
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

    return-object v0

    .line 98
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->runningDownloads:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method private setThreadPriority(I)V
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;

    .line 85
    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->setPriority(I)V

    goto :goto_6

    .line 90
    :cond_1c
    return-void
.end method


# virtual methods
.method public beginQueue()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->queue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    return-void
.end method

.method public clearQueue()V
    .registers 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->beginQueue()V

    .line 213
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->queue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->runningDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;

    .line 111
    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->shutdown()V

    goto :goto_11

    .line 114
    :cond_21
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->listener:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$NetworkListener;

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->removeHandler(Landroid/os/Handler;)V

    .line 116
    iput-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    .line 117
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

    if-eqz v0, :cond_36

    .line 118
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->httpConnectionPool:Lcom/mapquest/android/maps/HttpConnectionPool;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/HttpConnectionPool;->shutdown()V

    .line 121
    :cond_36
    iput-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 122
    return-void
.end method

.method public endQueue()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 138
    .line 139
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->runningDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    .line 140
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->queue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    .line 141
    if-eqz v4, :cond_ed

    .line 142
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->queue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    .line 144
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 145
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    .line 146
    iget-object v6, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->runningDownloads:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 147
    add-int/lit8 v0, v1, 0x1

    :goto_3a
    move v1, v0

    .line 149
    goto :goto_1a

    .line 151
    :cond_3c
    sub-int v0, v4, v1

    sub-int v1, v3, v1

    add-int/2addr v0, v1

    .line 152
    int-to-double v3, v4

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v3, v5

    double-to-int v1, v3

    if-le v0, v1, :cond_6c

    .line 153
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;

    .line 155
    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 156
    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->shutdown()V

    .line 153
    :cond_63
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4e

    .line 160
    :cond_67
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->runningDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 163
    :cond_6c
    iget v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->maxRunningDownloads:I

    .line 166
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;

    .line 168
    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 169
    add-int/lit8 v1, v1, -0x1

    .line 166
    :goto_89
    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->clearQueue()V

    goto :goto_75

    .line 171
    :cond_8d
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_89

    .line 176
    :cond_91
    if-lez v1, :cond_a6

    move v0, v2

    .line 177
    :goto_94
    if-ge v0, v1, :cond_a6

    .line 178
    new-instance v3, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-direct {v3, p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;-><init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)V

    .line 179
    iget-object v4, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v3}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->start()V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 187
    :cond_a6
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->queue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 188
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    .line 189
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->maxRunningDownloads:I

    rem-int v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->addToQueue(Lcom/mapquest/android/maps/Tile;)V

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 193
    :cond_d7
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 195
    :goto_dd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;

    .line 197
    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->endQueue()V

    goto :goto_dd

    .line 201
    :cond_ed
    return-void

    :cond_ee
    move v0, v1

    goto/16 :goto_3a
.end method

.method public finishedDownload(Lcom/mapquest/android/maps/Tile;)V
    .registers 3

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V

    .line 217
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 223
    :cond_9
    :goto_9
    return-void

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapView;->addTile(Lcom/mapquest/android/maps/Tile;)V

    goto :goto_9
.end method

.method public queueTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 4

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;

    if-nez v1, :cond_8

    .line 134
    :cond_8
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->queue:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method
