.class public Lcom/mqunar/cock/network/TaskCallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/libtask/TaskCallback;


# instance fields
.field b:Lcom/mqunar/cock/network/ServiceMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 47
    return-void
.end method

.method public onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5

    .prologue
    .line 42
    const-string v0, "onMsgCancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5

    .prologue
    .line 37
    const-string v0, "onMsgEnd"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5

    .prologue
    .line 23
    const-string v0, "onMsgError"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 28
    return-void
.end method

.method public onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 15
    return-void
.end method

.method public onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 19
    return-void
.end method

.method public onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5

    .prologue
    .line 32
    const-string v0, "onMsgStart"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method
