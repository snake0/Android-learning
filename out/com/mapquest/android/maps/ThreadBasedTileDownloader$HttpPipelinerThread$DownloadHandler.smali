.class Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final TAG:Ljava/lang/String;

.field final mapView:Lcom/mapquest/android/maps/MapView;

.field final synthetic this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;)V
    .registers 5

    .prologue
    .line 546
    iput-object p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mq.maps.downloader_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->TAG:Ljava/lang/String;

    .line 547
    iget-object v0, p1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$200(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 548
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v1, 0x2

    .line 551
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1ae

    .line 711
    :cond_6
    :goto_6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 712
    return-void

    .line 563
    :pswitch_a
    const/4 v1, 0x0

    .line 565
    :try_start_b
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->clear()V

    .line 568
    :goto_12
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_68

    .line 569
    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v2, v2, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->addToRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v2, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$300(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V

    .line 570
    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->fetchTileFromCache(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 572
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->constructTile(Lcom/mapquest/android/maps/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 573
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->addToMemoryCache(Lcom/mapquest/android/maps/Tile;)V

    .line 574
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->finishedDownload(Lcom/mapquest/android/maps/Tile;)V

    move v0, v1

    :goto_48
    move v1, v0

    .line 584
    goto :goto_12

    .line 576
    :cond_4a
    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v2, v2, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->networkAvailable:Z
    invoke-static {v2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$400(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 577
    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v2, v2, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->sendTileRequest(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v2, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->access$500(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;Lcom/mapquest/android/maps/Tile;)V

    .line 579
    if-nez v1, :cond_1ab

    .line 580
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->removeMessages(I)V

    .line 581
    const/4 v0, 0x1

    goto :goto_48

    .line 586
    :cond_68
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->flushSocket()V
    invoke-static {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->access$600(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;)V

    .line 588
    :goto_6d
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_d0

    .line 589
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v2, v2, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->responseParser:Lorg/apache/http/impl/io/HttpResponseParser;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->readTileResponse(Lorg/apache/http/impl/io/HttpResponseParser;)[B
    invoke-static {v1, v2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->access$700(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;Lorg/apache/http/impl/io/HttpResponseParser;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/Tile;->setBytes([B)V

    .line 590
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->constructTile(Lcom/mapquest/android/maps/Tile;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 591
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->addToMemoryCache(Lcom/mapquest/android/maps/Tile;)V

    .line 592
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->addToDiskCache(Lcom/mapquest/android/maps/Tile;)V

    .line 593
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v1, v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->finishedDownload(Lcom/mapquest/android/maps/Tile;)V

    .line 588
    :cond_9f
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;
    :try_end_a6
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_b .. :try_end_a6} :catch_a7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_a6} :catch_fc
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_a6} :catch_123
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_a6} :catch_14a
    .catchall {:try_start_b .. :try_end_a6} :catchall_171

    goto :goto_6d

    .line 601
    :catch_a7
    move-exception v0

    .line 602
    :try_start_a8
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->clear()V
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_171

    .line 650
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 654
    :goto_b9
    :try_start_b9
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_6

    .line 655
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v1, v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    :try_end_cc
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_b9 .. :try_end_cc} :catch_cd

    goto :goto_b9

    .line 657
    :catch_cd
    move-exception v0

    goto/16 :goto_6

    .line 597
    :cond_d0
    const/4 v0, 0x2

    :try_start_d1
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    # getter for: Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->keepAliveTimeout:I
    invoke-static {v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->access$800(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_db
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_d1 .. :try_end_db} :catch_a7
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_db} :catch_fc
    .catch Lorg/apache/http/HttpException; {:try_start_d1 .. :try_end_db} :catch_123
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_db} :catch_14a
    .catchall {:try_start_d1 .. :try_end_db} :catchall_171

    .line 692
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 696
    :goto_e5
    :try_start_e5
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_6

    .line 697
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v1, v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    :try_end_f8
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_e5 .. :try_end_f8} :catch_f9

    goto :goto_e5

    .line 699
    :catch_f9
    move-exception v0

    goto/16 :goto_6

    .line 605
    :catch_fc
    move-exception v0

    .line 607
    :try_start_fd
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->close()V
    :try_end_102
    .catchall {:try_start_fd .. :try_end_102} :catchall_171

    .line 678
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 682
    :goto_10c
    :try_start_10c
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_6

    .line 683
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v1, v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    :try_end_11f
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_10c .. :try_end_11f} :catch_120

    goto :goto_10c

    .line 685
    :catch_120
    move-exception v0

    goto/16 :goto_6

    .line 610
    :catch_123
    move-exception v0

    .line 612
    :try_start_124
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->close()V
    :try_end_129
    .catchall {:try_start_124 .. :try_end_129} :catchall_171

    .line 664
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 668
    :goto_133
    :try_start_133
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_6

    .line 669
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v1, v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    :try_end_146
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_133 .. :try_end_146} :catch_147

    goto :goto_133

    .line 671
    :catch_147
    move-exception v0

    goto/16 :goto_6

    .line 615
    :catch_14a
    move-exception v0

    .line 617
    :try_start_14b
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->close()V
    :try_end_150
    .catchall {:try_start_14b .. :try_end_150} :catchall_171

    .line 636
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 640
    :goto_15a
    :try_start_15a
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_6

    .line 641
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v1, v1, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    :try_end_16d
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_15a .. :try_end_16d} :catch_16e

    goto :goto_15a

    .line 643
    :catch_16e
    move-exception v0

    goto/16 :goto_6

    .line 620
    :catchall_171
    move-exception v0

    move-object v1, v0

    .line 621
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->size()I

    move-result v0

    if-lez v0, :cond_194

    .line 625
    :goto_17d
    :try_start_17d
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Tile;

    if-eqz v0, :cond_194

    .line 626
    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v2, v2, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    # invokes: Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->removeFromRunning(Lcom/mapquest/android/maps/Tile;)V
    invoke-static {v2, v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader;->access$900(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/Tile;)V
    :try_end_190
    .catch Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException; {:try_start_17d .. :try_end_190} :catch_191

    goto :goto_17d

    .line 628
    :catch_191
    move-exception v0

    goto/16 :goto_6

    .line 631
    :cond_194
    throw v1

    .line 706
    :pswitch_195
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    iget-object v0, v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 708
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;->this$1:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->close()V

    goto/16 :goto_6

    :cond_1ab
    move v0, v1

    goto/16 :goto_48

    .line 551
    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_a
        :pswitch_195
        :pswitch_195
    .end packed-switch
.end method
