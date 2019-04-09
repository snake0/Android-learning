.class public Lcom/mqunar/hy/res/ManualDownloadControler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downloadTaskResult:Lcom/mqunar/hy/res/DownloadTaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

.field private infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

.field private qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->infoList:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    .line 23
    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 24
    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 25
    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->downloadTaskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mqunar/hy/res/ManualDownloadControler;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    return-object p1
.end method


# virtual methods
.method public forceReplace()V
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    if-nez v0, :cond_5

    .line 116
    :cond_4
    :goto_4
    return-void

    .line 107
    :cond_5
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getCacheHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_4

    .line 111
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/HybridManager;->moveToWorkspace(Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2a

    .line 113
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/hy/res/HybridManager;->addNewModule(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_2a
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deleteCacheHyInfo(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startDownload()V
    .registers 5

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    if-nez v0, :cond_f

    .line 51
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$1;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$1;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :goto_e
    return-void

    .line 63
    :cond_f
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getCacheHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_30

    iget v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-lt v0, v1, :cond_30

    .line 65
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$2;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$2;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 77
    :cond_30
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 79
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 80
    iget v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-lt v0, v1, :cond_61

    .line 81
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$3;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$3;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 96
    :cond_61
    new-instance v0, Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->infoList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/model/HybridParam;-><init>(Ljava/util/List;)V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v2, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/ManualDownloadControler$1;)V

    iput-object v2, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->downloadTaskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 100
    new-instance v2, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;-><init>(Landroid/content/Context;Lcom/mqunar/hy/res/model/HybridParam;)V

    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->downloadTaskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    invoke-virtual {v2, v1, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->run(Ljava/util/List;Lcom/mqunar/hy/res/DownloadTaskResult;)V

    goto :goto_e
.end method

.method public startUpdateRequest(Ljava/lang/String;Lcom/mqunar/hy/res/Listener/QpDownloadListener;)V
    .registers 9

    .prologue
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hybridId can not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_e
    iput-object p2, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    .line 33
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->infoList:Ljava/util/List;

    .line 34
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/HybridManager;->getCustomerHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 35
    invoke-static {}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->getInstance()Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->infoList:Ljava/util/List;

    new-instance v2, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;

    new-instance v3, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    iget-object v4, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v3, p0, v4}, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/model/HybridInfo;)V

    iget-object v4, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v2, v3, v4}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;-><init>(Lcom/mqunar/hy/res/TaskResult;Lcom/mqunar/hy/res/model/HybridInfo;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mqunar/hy/res/model/HybridInfo;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->run(Ljava/util/List;Lcom/mqunar/hy/res/TaskResult;[Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 37
    return-void
.end method

.method public unregister()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->downloadTaskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    if-nez v0, :cond_5

    .line 47
    :goto_4
    return-void

    .line 46
    :cond_5
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v2, p0, Lcom/mqunar/hy/res/ManualDownloadControler;->downloadTaskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/hy/res/utils/DownloadManager;->removeDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/DownloadTaskResult;)Z

    goto :goto_4
.end method
