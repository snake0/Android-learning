.class Lcom/mqunar/cock/network/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/cock/network/OneKeyCremation;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/OneKeyCremation;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_7

    .line 152
    :cond_6
    :goto_6
    return-void

    .line 134
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_33

    .line 135
    iget-object v0, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->a(Lcom/mqunar/cock/network/OneKeyCremation;I)V

    .line 136
    iget-object v0, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->a(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 137
    iget-object v0, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    goto :goto_6

    .line 139
    :cond_29
    iget-object v0, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaDisconnectState:Lcom/mqunar/cock/network/state/YaccaDisconnectState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    goto :goto_6

    .line 141
    :cond_33
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x103

    if-ne v0, v1, :cond_6

    .line 143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mqunar/cock/model/TcpResult;

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/cock/model/TcpRequest;

    iget v0, v0, Lcom/mqunar/cock/model/TcpRequest;->reqid:I

    .line 145
    iget-object v1, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v1}, Lcom/mqunar/cock/network/OneKeyCremation;->b(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 146
    iget-object v1, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v1}, Lcom/mqunar/cock/network/OneKeyCremation;->b(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/callback/TcpMessageCallBack;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v0, v1}, Lcom/mqunar/cock/network/callback/TcpMessageCallBack;->onTimeOut([B)V

    .line 148
    :cond_72
    iget-object v0, p0, Lcom/mqunar/cock/network/g;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->c(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method
