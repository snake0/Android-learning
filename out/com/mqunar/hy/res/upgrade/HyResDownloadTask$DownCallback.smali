.class Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;


# direct methods
.method private constructor <init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)V
    .registers 2

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$1;)V
    .registers 3

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;-><init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)V

    return-void
.end method


# virtual methods
.method public onDownloadFail(Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 450
    const-string v0, "WTF"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # getter for: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;
    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$100(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 452
    :try_start_f
    new-instance v2, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v2}, Lcom/mqunar/hy/res/model/HybridInfo;-><init>()V

    .line 453
    iget-object v0, p1, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    iput-object v0, v2, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_41

    .line 455
    :try_start_18
    iget-object v0, p1, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/mqunar/hy/res/model/HybridInfo;->version:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_39
    .catchall {:try_start_18 .. :try_end_20} :catchall_41

    .line 461
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    const/16 v3, 0x6a

    const-string v4, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    # invokes: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$400(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    iget-object v2, p1, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mqunar/hy/res/utils/DownloadManager;->remove(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # invokes: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->runNext()V
    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$300(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)V

    .line 465
    monitor-exit v1

    .line 467
    return-void

    .line 456
    :catch_39
    move-exception v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    const/4 v0, 0x0

    iput v0, v2, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    goto :goto_20

    .line 465
    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public onDownloadSucc(Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 5

    .prologue
    .line 440
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # getter for: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;
    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$100(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 441
    :try_start_7
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # invokes: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->moveAtom(Lcom/mqunar/hy/res/utils/DownloadData;)V
    invoke-static {v0, p1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$200(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Lcom/mqunar/hy/res/utils/DownloadData;)V

    .line 442
    iget-object v0, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 443
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    iget-object v2, p1, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mqunar/hy/res/utils/DownloadManager;->remove(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # invokes: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->runNext()V
    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$300(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)V

    .line 445
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onDownloadUpdate(Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 2

    .prologue
    .line 472
    return-void
.end method
