.class public Lcom/mqunar/hy/res/utils/DownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile downloadItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile downloadTaskResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadTaskResultMap:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/utils/DownloadManager$1;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/DownloadManager;-><init>()V

    return-void
.end method

.method private declared-synchronized cancelDownloadItem(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)V
    .registers 5

    .prologue
    .line 108
    monitor-enter p0

    if-nez p1, :cond_5

    .line 118
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 111
    :cond_5
    :try_start_5
    # getter for: Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->downloadData:Lcom/mqunar/hy/res/utils/DownloadData;
    invoke-static {p1}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->access$300(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)Lcom/mqunar/hy/res/utils/DownloadData;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadData;->cancel()V

    .line 114
    invoke-virtual {p1}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->getUrl()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_2e

    move-result-object v0

    .line 116
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hyres \u6682\u505c\u4e0b\u8f7d\u7684qp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2b} :catch_2c
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2e

    goto :goto_3

    .line 117
    :catch_2c
    move-exception v0

    goto :goto_3

    .line 108
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDownloadItem(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;
    .registers 6

    .prologue
    .line 130
    monitor-enter p0

    const/4 v1, 0x0

    .line 131
    :try_start_2
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    .line 132
    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_20

    move-result v3

    if-eqz v3, :cond_8

    .line 137
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 130
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    move-object v0, v1

    goto :goto_1e
.end method

.method public static getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;
    .registers 1

    .prologue
    .line 34
    # getter for: Lcom/mqunar/hy/res/utils/DownloadManager$SingletonHolder;->instance:Lcom/mqunar/hy/res/utils/DownloadManager;
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager$SingletonHolder;->access$100()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)Lcom/mqunar/hy/res/utils/DownloadData;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadItem(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_18

    .line 64
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->isRun(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 65
    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->getDownloadData()Lcom/mqunar/hy/res/utils/DownloadData;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2d

    move-result-object v0

    .line 73
    :goto_11
    monitor-exit p0

    return-object v0

    .line 67
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 70
    :cond_18
    new-instance v0, Lcom/mqunar/hy/res/utils/DownloadData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/hy/res/utils/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 71
    new-instance v1, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    invoke-direct {v1, p0, p2, v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;-><init>(Lcom/mqunar/hy/res/utils/DownloadManager;Ljava/lang/String;Lcom/mqunar/hy/res/utils/DownloadData;)V

    .line 72
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    goto :goto_11

    .line 61
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;)Lcom/mqunar/hy/res/utils/DownloadData;
    .registers 12

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadItem(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_18

    .line 80
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->isRun(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 81
    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->getDownloadData()Lcom/mqunar/hy/res/utils/DownloadData;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2d

    move-result-object v0

    .line 89
    :goto_11
    monitor-exit p0

    return-object v0

    .line 83
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_18
    new-instance v0, Lcom/mqunar/hy/res/utils/DownloadData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/hy/res/utils/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;)V

    .line 87
    new-instance v1, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    invoke-direct {v1, p0, p2, v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;-><init>(Lcom/mqunar/hy/res/utils/DownloadManager;Ljava/lang/String;Lcom/mqunar/hy/res/utils/DownloadData;)V

    .line 88
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    goto :goto_11

    .line 77
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancel(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    move-result v0

    if-eqz v0, :cond_9

    .line 97
    :goto_7
    monitor-exit p0

    return-void

    .line 94
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadItem(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/utils/DownloadManager;->cancelDownloadItem(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)V

    .line 96
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_7

    .line 93
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelAll()V
    .registers 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/utils/DownloadManager;->cancelDownloadItem(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 100
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    .line 105
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clearDownloadTaskResult()V
    .registers 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadTaskResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadData(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadData;
    .registers 3

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadItem(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 164
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->getDownloadData()Lcom/mqunar/hy/res/utils/DownloadData;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result-object v0

    goto :goto_8

    .line 163
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    if-nez p1, :cond_9

    .line 214
    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    move-result-object v0

    .line 220
    :goto_7
    monitor-exit p0

    return-object v0

    .line 216
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadTaskResultMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 217
    if-nez v0, :cond_19

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 220
    :cond_19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1e

    move-result-object v0

    goto :goto_7

    .line 213
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasRun()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 44
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 45
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager>nowDownloadMap-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->access$200(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    # getter for: Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->access$200(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mqunar/hy/res/utils/DownloadManager;->isRun(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadManager>hasRun-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->access$200(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_2 .. :try_end_58} :catchall_5d

    .line 50
    const/4 v0, 0x1

    .line 53
    :goto_59
    monitor-exit p0

    return v0

    :cond_5b
    move v0, v1

    goto :goto_59

    .line 44
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRun(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadData(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadData;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    move-result-object v0

    .line 39
    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 40
    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    const-string v1, "download_start"

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadData;->getDownloadState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    move-result v0

    goto :goto_8

    .line 38
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadItem(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_28

    move-result-object v0

    .line 122
    if-nez v0, :cond_9

    .line 127
    :goto_7
    monitor-exit p0

    return-void

    .line 125
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed download ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    goto :goto_7

    .line 121
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/DownloadTaskResult;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    monitor-enter p0

    if-nez p1, :cond_7

    move v0, v1

    .line 235
    :goto_5
    monitor-exit p0

    return v0

    .line 231
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadTaskResultMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 232
    if-nez v0, :cond_15

    move v0, v1

    .line 233
    goto :goto_5

    .line 235
    :cond_15
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    move-result v0

    goto :goto_5

    .line 228
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runNext()Z
    .registers 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_45

    move-result v0

    if-eqz v0, :cond_c

    .line 145
    const/4 v0, 0x1

    .line 155
    :goto_a
    monitor-exit p0

    return v0

    .line 147
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;

    .line 150
    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hyres download url -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/utils/DownloadManager;->start(Ljava/lang/String;)V

    .line 155
    :cond_3e
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_45

    move-result v0

    goto :goto_a

    .line 144
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/DownloadTaskResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    if-nez p1, :cond_5

    .line 210
    :goto_3
    monitor-exit p0

    return-void

    .line 204
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadTaskResultMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 205
    if-nez v0, :cond_16

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 208
    :cond_16
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadTaskResultMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    goto :goto_3

    .line 201
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager;->downloadItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadData(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/DownloadData;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result-object v0

    .line 170
    if-nez v0, :cond_9

    .line 180
    :goto_7
    monitor-exit p0

    return-void

    .line 174
    :cond_9
    :try_start_9
    const-string v1, "download_none"

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadData;->getDownloadState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 175
    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadData;->run()V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 168
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres already started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_19

    goto :goto_7
.end method
