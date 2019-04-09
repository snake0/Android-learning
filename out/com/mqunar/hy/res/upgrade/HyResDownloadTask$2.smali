.class Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

.field final synthetic val$errCode:I

.field final synthetic val$errMsg:Ljava/lang/String;

.field final synthetic val$hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

.field final synthetic val$taskResults:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 404
    iput-object p1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    iput-object p2, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$taskResults:Ljava/util/Set;

    iput-object p3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iput p4, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$errCode:I

    iput-object p5, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # getter for: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;
    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$100(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 408
    :try_start_7
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$taskResults:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 409
    if-eqz v0, :cond_d

    .line 410
    iget-object v3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v4, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$errCode:I

    iget-object v5, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;->val$errMsg:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5}, Lcom/mqunar/hy/res/DownloadTaskResult;->error(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    goto :goto_d

    .line 413
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v0

    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 414
    return-void
.end method
