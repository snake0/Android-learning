.class Lcom/mqunar/cock/network/m;
.super Lcom/mqunar/cock/network/TaskCallbackWrapper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/cock/network/RemoteSvcProxy;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/RemoteSvcProxy;Lcom/mqunar/libtask/TaskCallback;)V
    .registers 3

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mqunar/cock/network/m;->a:Lcom/mqunar/cock/network/RemoteSvcProxy;

    invoke-direct {p0, p2}, Lcom/mqunar/cock/network/TaskCallbackWrapper;-><init>(Lcom/mqunar/libtask/TaskCallback;)V

    return-void
.end method


# virtual methods
.method public onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/mqunar/cock/network/TaskCallbackWrapper;->onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 256
    iget-object v0, p0, Lcom/mqunar/cock/network/m;->a:Lcom/mqunar/cock/network/RemoteSvcProxy;

    invoke-static {v0}, Lcom/mqunar/cock/network/RemoteSvcProxy;->a(Lcom/mqunar/cock/network/RemoteSvcProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/mqunar/cock/network/TaskCallbackWrapper;->onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 250
    iget-object v0, p0, Lcom/mqunar/cock/network/m;->a:Lcom/mqunar/cock/network/RemoteSvcProxy;

    invoke-static {v0}, Lcom/mqunar/cock/network/RemoteSvcProxy;->a(Lcom/mqunar/cock/network/RemoteSvcProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method
