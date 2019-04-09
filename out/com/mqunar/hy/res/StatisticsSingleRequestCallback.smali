.class public Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/TaskResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mqunar/hy/res/TaskResult",
        "<",
        "Lcom/mqunar/hy/res/model/HybridResult;",
        ">;"
    }
.end annotation


# instance fields
.field private newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

.field private oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

.field private start:J

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
.method public constructor <init>(Lcom/mqunar/hy/res/TaskResult;Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/TaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridResult;",
            ">;",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    .line 23
    iput-object p2, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->start:J

    .line 25
    return-void
.end method

.method private getStatusByNewInfo()I
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget-object v1, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ne v0, v1, :cond_10

    .line 55
    :cond_e
    const/4 v0, 0x1

    .line 58
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->isForce()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    goto :goto_f

    :cond_1a
    const/4 v0, 0x2

    goto :goto_f
.end method

.method private parseHybridInfo(Lcom/mqunar/hy/res/model/HybridResult;)V
    .registers 4

    .prologue
    .line 45
    if-eqz p1, :cond_16

    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->hlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->hlist:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 50
    :cond_16
    :goto_16
    return-void

    .line 49
    :cond_17
    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->hlist:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridResult$MgData;->hlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    iput-object v0, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    goto :goto_16
.end method

.method private parseOffline(Lcom/mqunar/hy/res/model/HybridResult;)I
    .registers 7

    .prologue
    const/4 v1, 0x2

    .line 63
    if-eqz p1, :cond_17

    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->offline_hlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->offline_hlist:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    move v0, v1

    .line 75
    :goto_18
    return v0

    .line 67
    :cond_19
    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->offline_hlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 68
    iget-object v3, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v3, v3, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 69
    iget-object v2, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v2, v2, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ne v2, v0, :cond_43

    .line 70
    const/4 v0, 0x1

    goto :goto_18

    :cond_43
    move v0, v1

    .line 75
    goto :goto_18
.end method

.method private qpSingleUpdateTime(II)V
    .registers 8

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->start:J

    sub-long v1, v0, v2

    .line 84
    if-eqz p1, :cond_71

    const/4 v0, 0x1

    :goto_b
    iget-object v3, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v4, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mqunar/hy/res/logger/DevQPLog;->onUpdateLog(ZJLcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 86
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 87
    const-string v0, "time"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "oldver"

    invoke-virtual {v3, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "newver"

    iget-object v2, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    if-nez v2, :cond_73

    :goto_42
    invoke-virtual {v3, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "hybridid"

    iget-object v1, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->oldInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "offline"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "network"

    invoke-static {}, Lcom/mqunar/hy/res/utils/NetworkUtil;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v3}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpSingleUpdateTime(Lcom/alibaba/fastjson/JSONObject;)V

    .line 96
    return-void

    .line 84
    :cond_71
    const/4 v0, 0x0

    goto :goto_b

    .line 90
    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->newInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v2, v2, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method


# virtual methods
.method public error(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->qpSingleUpdateTime(II)V

    .line 41
    iget-object v0, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/hy/res/TaskResult;->error(ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public sucess(Lcom/mqunar/hy/res/model/HybridResult;)V
    .registers 4

    .prologue
    .line 30
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->parseHybridInfo(Lcom/mqunar/hy/res/model/HybridResult;)V

    .line 31
    invoke-direct {p0}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->getStatusByNewInfo()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->parseOffline(Lcom/mqunar/hy/res/model/HybridResult;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->qpSingleUpdateTime(II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_14

    .line 35
    :goto_e
    iget-object v0, p0, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->taskResult:Lcom/mqunar/hy/res/TaskResult;

    invoke-interface {v0, p1}, Lcom/mqunar/hy/res/TaskResult;->sucess(Ljava/lang/Object;)V

    .line 36
    return-void

    .line 32
    :catch_14
    move-exception v0

    .line 33
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public bridge synthetic sucess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Lcom/mqunar/hy/res/model/HybridResult;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/StatisticsSingleRequestCallback;->sucess(Lcom/mqunar/hy/res/model/HybridResult;)V

    return-void
.end method
