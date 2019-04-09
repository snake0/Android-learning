.class Lcom/mqunar/cock/network/i;
.super Lcom/mqunar/cock/network/GenericNetworkTaskCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/cock/network/GenericNetworkTaskCallback",
        "<",
        "Lcom/mqunar/cock/model/YaccaListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mqunar/cock/network/OneKeyCremation;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/OneKeyCremation;Ljava/lang/Class;Lcom/mqunar/cock/network/RemoteSvcProxy;)V
    .registers 4

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-direct {p0, p2, p3}, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;-><init>(Ljava/lang/Class;Lcom/mqunar/cock/network/RemoteSvcProxy;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mqunar/cock/model/YaccaListResult;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 338
    const-string v0, "OneKeyCremation loadYacaAsync onDataArrive"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    if-eqz p1, :cond_69

    iget-object v0, p1, Lcom/mqunar/cock/model/YaccaListResult;->data:Lcom/mqunar/cock/model/YaccaListResult$YaccaListResultData;

    if-eqz v0, :cond_69

    .line 340
    iget-object v0, p1, Lcom/mqunar/cock/model/YaccaListResult;->data:Lcom/mqunar/cock/model/YaccaListResult$YaccaListResultData;

    iget-object v0, v0, Lcom/mqunar/cock/model/YaccaListResult$YaccaListResultData;->servers:Ljava/util/List;

    .line 341
    iget-object v1, p1, Lcom/mqunar/cock/model/YaccaListResult;->data:Lcom/mqunar/cock/model/YaccaListResult$YaccaListResultData;

    iget v1, v1, Lcom/mqunar/cock/model/YaccaListResult$YaccaListResultData;->delay:I

    if-eqz v1, :cond_41

    .line 342
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->d(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 343
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 344
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->e(Lcom/mqunar/cock/network/OneKeyCremation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/cock/network/j;

    invoke-direct {v1, p0}, Lcom/mqunar/cock/network/j;-><init>(Lcom/mqunar/cock/network/i;)V

    iget-object v2, p1, Lcom/mqunar/cock/model/YaccaListResult;->data:Lcom/mqunar/cock/model/YaccaListResult$YaccaListResultData;

    iget v2, v2, Lcom/mqunar/cock/model/YaccaListResult$YaccaListResultData;->delay:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    :goto_40
    return-void

    .line 352
    :cond_41
    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 353
    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mqunar/cock/network/OneKeyCremation;->a(Lcom/mqunar/cock/network/OneKeyCremation;Ljava/util/List;)Ljava/util/List;

    .line 354
    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v1, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->b(Lcom/mqunar/cock/network/OneKeyCremation;Ljava/util/List;)V

    .line 355
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaConnectingState:Lcom/mqunar/cock/network/state/YaccaConnectingState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    goto :goto_40

    .line 357
    :cond_5f
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    goto :goto_40

    .line 362
    :cond_69
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    goto :goto_40
.end method

.method protected handleBizError(Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/cock/model/BaseResult;)Z
    .registers 5

    .prologue
    .line 369
    const-string v0, "OneKeyCremation loadYacaAsync handlebizerror"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 372
    invoke-super {p0, p1, p2}, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->handleBizError(Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/cock/model/BaseResult;)Z

    move-result v0

    return v0
.end method

.method protected synthetic onDataArrive(Lcom/mqunar/cock/model/BaseResult;)V
    .registers 2

    .prologue
    .line 326
    check-cast p1, Lcom/mqunar/cock/model/YaccaListResult;

    invoke-virtual {p0, p1}, Lcom/mqunar/cock/network/i;->a(Lcom/mqunar/cock/model/YaccaListResult;)V

    return-void
.end method

.method protected onNetError(Lcom/mqunar/libtask/AbsConductor;)V
    .registers 4

    .prologue
    .line 331
    const-string v0, "OneKeyCremation loadYacaAsync failure"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 334
    return-void
.end method
