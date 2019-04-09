.class Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Thread;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mapquest/android/maps/Tile;",
        ">;"
    }
.end annotation


# instance fields
.field queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue",
            "<",
            "Lcom/mapquest/android/maps/Tile;",
            ">;"
        }
    .end annotation
.end field

.field volatile stop:Z

.field final synthetic this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)V
    .registers 5

    .prologue
    .line 720
    iput-object p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 721
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0x32

    invoke-direct {v1, v2, p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;-><init>(Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->stop:Z

    .line 723
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/ThreadBasedTileDownloader$1;)V
    .registers 3

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;-><init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)V

    return-void
.end method


# virtual methods
.method addToDiskCache(Lcom/mapquest/android/maps/Tile;)V
    .registers 4

    .prologue
    .line 792
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 793
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_27

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->contains(Lcom/mapquest/android/maps/Tile;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 795
    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->addTile(Lcom/mapquest/android/maps/Tile;)V

    .line 798
    :cond_27
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/Tile;->setBytes([B)V

    .line 801
    :cond_2d
    return-void
.end method

.method addToMemoryCache(Lcom/mapquest/android/maps/Tile;)V
    .registers 4

    .prologue
    .line 782
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 783
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->MEMORY:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_1f

    .line 785
    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->addTile(Lcom/mapquest/android/maps/Tile;)V

    .line 789
    :cond_1f
    return-void
.end method

.method addToQueue(Lcom/mapquest/android/maps/Tile;)V
    .registers 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->add(Ljava/lang/Object;)Z

    .line 727
    return-void
.end method

.method public clearQueue()V
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->clear()V

    .line 731
    return-void
.end method

.method public compare(Lcom/mapquest/android/maps/Tile;Lcom/mapquest/android/maps/Tile;)I
    .registers 4

    .prologue
    .line 740
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    .line 741
    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/TileCacher;->contains(Lcom/mapquest/android/maps/Tile;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 716
    check-cast p1, Lcom/mapquest/android/maps/Tile;

    check-cast p2, Lcom/mapquest/android/maps/Tile;

    invoke-virtual {p0, p1, p2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->compare(Lcom/mapquest/android/maps/Tile;Lcom/mapquest/android/maps/Tile;)I

    move-result v0

    return v0
.end method

.method constructTile(Lcom/mapquest/android/maps/Tile;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 745
    .line 746
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_23

    .line 748
    :try_start_15
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v1

    .line 749
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 750
    invoke-virtual {p1, v1}, Lcom/mapquest/android/maps/Tile;->setBitMap(Landroid/graphics/Bitmap;)V
    :try_end_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_22} :catch_24

    .line 751
    const/4 v0, 0x1

    .line 757
    :cond_23
    :goto_23
    return v0

    .line 752
    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public endQueue()V
    .registers 1

    .prologue
    .line 849
    return-void
.end method

.method fetchTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;
    .registers 4

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->fetchTileFromCache(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v1

    if-nez v1, :cond_10

    .line 775
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->fetchTileFromNetwork(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 778
    :cond_10
    return-object v0
.end method

.method fetchTileFromCache(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;
    .registers 4

    .prologue
    .line 761
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;

    move-result-object v0

    sget-object v1, Lcom/mapquest/android/maps/TileCacher$CacheType;->ALL:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ITileCache;->getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v0

    .line 762
    return-object v0
.end method

.method fetchTileFromNetwork(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;
    .registers 4

    .prologue
    .line 766
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->getHttpConnectionPoolInstance()Lcom/mapquest/android/maps/HttpConnectionPool;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1100(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/HttpConnectionPool;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/HttpConnectionPool;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 767
    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/Tile;->setBytes([B)V

    .line 768
    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/Tile;->setBytes([B)V

    .line 769
    return-object p1
.end method

.method public processTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x1388

    .line 804
    if-eqz p1, :cond_25

    .line 805
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->addToRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$300(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V

    .line 808
    :try_start_9
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->tileCacher:Lcom/mapquest/android/maps/TileCacher;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$1000(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/TileCacher;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_e} :catch_65
    .catchall {:try_start_9 .. :try_end_e} :catchall_7b

    move-result-object v0

    if-nez v0, :cond_26

    .line 823
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v0

    if-nez v0, :cond_20

    .line 824
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$200(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/mapquest/android/maps/MapView;->preLoadDelayed(J)V

    .line 827
    :cond_20
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V

    .line 831
    :cond_25
    :goto_25
    return-void

    .line 812
    :cond_26
    :try_start_26
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->fetchTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    .line 813
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->constructTile(Lcom/mapquest/android/maps/Tile;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 814
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->addToMemoryCache(Lcom/mapquest/android/maps/Tile;)V

    .line 815
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->addToDiskCache(Lcom/mapquest/android/maps/Tile;)V

    .line 816
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->finishedDownload(Lcom/mapquest/android/maps/Tile;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_3a} :catch_65
    .catchall {:try_start_26 .. :try_end_3a} :catchall_7b

    .line 823
    :cond_3a
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v0

    if-nez v0, :cond_49

    .line 824
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$200(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/mapquest/android/maps/MapView;->preLoadDelayed(J)V

    .line 827
    :cond_49
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V

    goto :goto_25

    .line 818
    :catch_4f
    move-exception v0

    .line 823
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 824
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$200(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/mapquest/android/maps/MapView;->preLoadDelayed(J)V

    .line 827
    :cond_5f
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V

    goto :goto_25

    .line 820
    :catch_65
    move-exception v0

    .line 823
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v0

    if-nez v0, :cond_75

    .line 824
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$200(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/mapquest/android/maps/MapView;->preLoadDelayed(J)V

    .line 827
    :cond_75
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V

    goto :goto_25

    .line 823
    :catchall_7b
    move-exception v0

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 824
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$200(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/mapquest/android/maps/MapView;->preLoadDelayed(J)V

    .line 827
    :cond_8b
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v1, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V

    throw v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 834
    :goto_0
    iget-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->stop:Z

    if-nez v0, :cond_17

    .line 838
    :try_start_4
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    .line 839
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->processTile(Lcom/mapquest/android/maps/Tile;)V

    .line 840
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_0

    .line 841
    :catch_15
    move-exception v0

    goto :goto_0

    .line 846
    :cond_17
    return-void
.end method

.method shutdown()V
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->clear()V

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->stop:Z

    .line 736
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;->interrupt()V

    .line 737
    return-void
.end method
