.class public Lcom/mqunar/hy/res/AutoDownloadControler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/AutoDownloadControler;->infoList:Ljava/util/List;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/hy/res/AutoDownloadControler;)Ljava/util/List;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mqunar/hy/res/AutoDownloadControler;->infoList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public startUpdateRequest()V
    .registers 2

    .prologue
    .line 22
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/HybridManager;->addCacheList()V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/AutoDownloadControler;->startUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 24
    return-void
.end method

.method public startUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 7

    .prologue
    .line 27
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/AutoDownloadControler;->infoList:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;-><init>(Lcom/mqunar/hy/res/AutoDownloadControler;Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 30
    if-nez p1, :cond_21

    .line 35
    :goto_11
    invoke-static {}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->getInstance()Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/hy/res/AutoDownloadControler;->infoList:Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mqunar/hy/res/model/HybridInfo;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->run(Ljava/util/List;Lcom/mqunar/hy/res/TaskResult;[Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 36
    return-void

    .line 33
    :cond_21
    new-instance v1, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;

    invoke-direct {v1, v0, p1}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;-><init>(Lcom/mqunar/hy/res/TaskResult;Lcom/mqunar/hy/res/model/HybridInfo;)V

    move-object v0, v1

    goto :goto_11
.end method
