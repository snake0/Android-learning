.class public abstract Lcom/mqunar/cock/network/GenericNetworkTaskCallback;
.super Lcom/mqunar/cock/network/TaskCallbackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mqunar/cock/model/BaseResult;",
        ">",
        "Lcom/mqunar/cock/network/TaskCallbackAdapter;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected final remoteSvcProxy:Lcom/mqunar/cock/network/RemoteSvcProxy;

.field protected responseClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/mqunar/cock/network/RemoteSvcProxy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/mqunar/cock/network/RemoteSvcProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mqunar/cock/network/TaskCallbackAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->responseClazz:Ljava/lang/Class;

    .line 18
    iput-object p2, p0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->remoteSvcProxy:Lcom/mqunar/cock/network/RemoteSvcProxy;

    .line 19
    return-void
.end method


# virtual methods
.method protected handleBizError(Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/cock/model/BaseResult;)Z
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected isBizError(Lcom/mqunar/cock/model/BaseResult;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 62
    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/mqunar/cock/model/BaseResult;->bstatus:Lcom/mqunar/cock/model/BaseResult$Bstatus;

    if-nez v1, :cond_8

    .line 69
    :cond_7
    :goto_7
    return v0

    .line 66
    :cond_8
    iget-object v1, p1, Lcom/mqunar/cock/model/BaseResult;->bstatus:Lcom/mqunar/cock/model/BaseResult$Bstatus;

    iget v1, v1, Lcom/mqunar/cock/model/BaseResult$Bstatus;->code:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1d

    .line 67
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v2

    iget-object v2, v2, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {v1, v2}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 69
    :cond_1d
    iget-object v1, p1, Lcom/mqunar/cock/model/BaseResult;->bstatus:Lcom/mqunar/cock/model/BaseResult$Bstatus;

    iget v1, v1, Lcom/mqunar/cock/model/BaseResult$Bstatus;->code:I

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract onDataArrive(Lcom/mqunar/cock/model/BaseResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 6

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/mqunar/cock/network/TaskCallbackAdapter;->onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 47
    iget-object v0, p0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->remoteSvcProxy:Lcom/mqunar/cock/network/RemoteSvcProxy;

    new-instance v1, Lcom/mqunar/cock/network/f;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/cock/network/f;-><init>(Lcom/mqunar/cock/network/GenericNetworkTaskCallback;Lcom/mqunar/libtask/AbsConductor;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/cock/network/RemoteSvcProxy;->postDelay(Ljava/lang/Runnable;I)V

    .line 53
    return-void
.end method

.method public onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 6

    .prologue
    .line 23
    iget-object v1, p0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->remoteSvcProxy:Lcom/mqunar/cock/network/RemoteSvcProxy;

    iget-object v2, p0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->responseClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/mqunar/libtask/AbsConductor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/cock/network/RemoteSvcProxy;->parseFrom(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/model/BaseResult;

    .line 24
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/mqunar/cock/model/BaseResult;->bstatus:Lcom/mqunar/cock/model/BaseResult$Bstatus;

    if-eqz v1, :cond_1f

    const/4 v1, -0x2

    iget-object v2, v0, Lcom/mqunar/cock/model/BaseResult;->bstatus:Lcom/mqunar/cock/model/BaseResult$Bstatus;

    iget v2, v2, Lcom/mqunar/cock/model/BaseResult$Bstatus;->code:I

    if-ne v1, v2, :cond_1f

    .line 31
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->isBizError(Lcom/mqunar/cock/model/BaseResult;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->handleBizError(Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/cock/model/BaseResult;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 42
    :cond_2b
    :goto_2b
    return-void

    .line 37
    :cond_2c
    iget-object v1, p0, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->remoteSvcProxy:Lcom/mqunar/cock/network/RemoteSvcProxy;

    new-instance v2, Lcom/mqunar/cock/network/e;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/cock/network/e;-><init>(Lcom/mqunar/cock/network/GenericNetworkTaskCallback;Lcom/mqunar/cock/model/BaseResult;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/cock/network/RemoteSvcProxy;->postDelay(Ljava/lang/Runnable;I)V

    goto :goto_2b
.end method

.method protected abstract onNetError(Lcom/mqunar/libtask/AbsConductor;)V
.end method
