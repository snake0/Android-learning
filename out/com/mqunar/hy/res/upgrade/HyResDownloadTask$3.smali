.class Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

.field final synthetic val$hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

.field final synthetic val$taskResults:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    iput-object p2, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;->val$taskResults:Ljava/util/Set;

    iput-object p3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;->val$hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # getter for: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;
    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$100(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 427
    :try_start_7
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;->val$taskResults:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 428
    if-eqz v0, :cond_d

    .line 429
    iget-object v3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;->val$hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-interface {v0, v3}, Lcom/mqunar/hy/res/DownloadTaskResult;->sucess(Ljava/lang/Object;)V

    goto :goto_d

    .line 432
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 433
    return-void
.end method
