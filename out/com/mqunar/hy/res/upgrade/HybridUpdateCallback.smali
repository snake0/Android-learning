.class Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/libtask/TaskCallback;


# instance fields
.field private context:Landroid/content/Context;

.field private param:Lcom/mqunar/hy/res/model/HybridParam;

.field private task:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

.field private taskResult:Lcom/mqunar/hy/res/TaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mqunar/hy/res/TaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;Lcom/mqunar/hy/res/model/HybridParam;Lcom/mqunar/hy/res/TaskResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;",
            "Lcom/mqunar/hy/res/model/HybridParam;",
            "Lcom/mqunar/hy/res/TaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    .line 28
    iput-object p1, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->task:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    .line 30
    iput-object p3, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->param:Lcom/mqunar/hy/res/model/HybridParam;

    .line 31
    iput-object p4, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    .line 32
    return-void
.end method


# virtual methods
.method public onMsgCacheHit(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 117
    return-void
.end method

.method public onMsgCancel(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    if-eqz v0, :cond_d

    .line 110
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    const/16 v1, 0x65

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u53d6\u6d88"

    invoke-interface {v0, v1, v2}, Lcom/mqunar/hy/res/TaskResult;->error(ILjava/lang/String;)V

    .line 112
    :cond_d
    return-void
.end method

.method public onMsgEnd(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->param:Lcom/mqunar/hy/res/model/HybridParam;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridParam;->isSingleRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->param:Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridParam;->current:Lcom/mqunar/hy/res/model/HybridInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 105
    :cond_f
    return-void
.end method

.method public onMsgError(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->task:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->setStatus(B)V

    .line 83
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    if-eqz v0, :cond_13

    .line 84
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    const/16 v1, 0x64

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/mqunar/hy/res/TaskResult;->error(ILjava/lang/String;)V

    .line 89
    :cond_13
    return-void
.end method

.method public onMsgProgress(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 94
    return-void
.end method

.method public onMsgRequest(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 37
    return-void
.end method

.method public onMsgResult(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 7

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p1}, Lcom/mqunar/hy/res/libtask/AbsConductor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 44
    if-eqz v0, :cond_d

    array-length v1, v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_43

    if-nez v1, :cond_e

    .line 77
    :cond_d
    :goto_d
    return-void

    .line 48
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_2e} :catch_48
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_43

    .line 52
    :goto_2e
    :try_start_2e
    const-class v1, Lcom/mqunar/hy/res/model/HybridResult;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridResult;

    .line 53
    if-eqz v0, :cond_3f

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridResult;->status:I

    if-eqz v1, :cond_50

    .line 54
    :cond_3f
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->onMsgError(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_42} :catch_43

    goto :goto_d

    .line 74
    :catch_43
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 49
    :catch_48
    move-exception v1

    .line 50
    const/4 v2, 0x0

    :try_start_4a
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2e

    .line 56
    :cond_50
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->param:Lcom/mqunar/hy/res/model/HybridParam;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridParam;->isSingleRequest()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 57
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->task:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->setStatus(B)V

    .line 60
    :cond_5e
    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    if-eqz v1, :cond_d

    .line 64
    invoke-static {}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->getInstance()Lcom/mqunar/hy/res/utils/UpgradeInfoCache;

    move-result-object v1

    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v2, v2, Lcom/mqunar/hy/res/model/HybridResult$MgData;->hlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->addHybridInfos(Ljava/util/List;)V

    .line 66
    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridResult$MgData;->offline_hlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_88

    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridResult$MgData;->offline_hlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_88

    .line 67
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v1

    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v2, v2, Lcom/mqunar/hy/res/model/HybridResult$MgData;->offline_hlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->updateOfflineHybridInfo(Ljava/util/List;)V

    .line 70
    :cond_88
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    if-eqz v1, :cond_d

    .line 71
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    invoke-interface {v1, v0}, Lcom/mqunar/hy/res/TaskResult;->sucess(Ljava/lang/Object;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_91} :catch_43

    goto/16 :goto_d
.end method

.method public onMsgStart(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 98
    return-void
.end method
