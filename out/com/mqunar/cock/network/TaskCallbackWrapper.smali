.class public Lcom/mqunar/cock/network/TaskCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/libtask/TaskCallback;


# instance fields
.field private final a:Lcom/mqunar/libtask/TaskCallback;


# direct methods
.method public constructor <init>(Lcom/mqunar/libtask/TaskCallback;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 54
    return-void
.end method

.method public onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 49
    return-void
.end method

.method public onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 44
    return-void
.end method

.method public onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 29
    return-void
.end method

.method public onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 34
    return-void
.end method

.method public onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 19
    return-void
.end method

.method public onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 24
    return-void
.end method

.method public onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/cock/network/TaskCallbackWrapper;->a:Lcom/mqunar/libtask/TaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/libtask/TaskCallback;->onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 39
    return-void
.end method
