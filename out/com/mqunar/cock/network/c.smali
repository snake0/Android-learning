.class Lcom/mqunar/cock/network/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/yacca/YaccaCallback;


# instance fields
.field final synthetic a:Lcom/mqunar/cock/network/CockHandler;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/CockHandler;)V
    .registers 2

    .prologue
    .line 371
    iput-object p1, p0, Lcom/mqunar/cock/network/c;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/mqunar/yacca/YaccaBridge;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-object v0, p0, Lcom/mqunar/cock/network/c;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0}, Lcom/mqunar/cock/network/CockHandler;->d(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/ImListener;

    .line 380
    invoke-interface {v0}, Lcom/mqunar/cock/network/ImListener;->onClosed()V

    goto :goto_b

    .line 382
    :cond_1b
    const-string v0, "CockHandler"

    const-string v1, "onClose"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/mqunar/cock/network/c;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0}, Lcom/mqunar/cock/network/CockHandler;->e(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnCockMessage;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 384
    iget-object v0, p0, Lcom/mqunar/cock/network/c;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0}, Lcom/mqunar/cock/network/CockHandler;->e(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnCockMessage;

    move-result-object v0

    check-cast p1, Lcom/mqunar/cock/network/d;

    iget-boolean v1, p1, Lcom/mqunar/cock/network/d;->a:Z

    invoke-interface {v0, v1}, Lcom/mqunar/cock/network/OnCockMessage;->onNetEnd(Z)V

    .line 386
    :cond_39
    iget-object v0, p0, Lcom/mqunar/cock/network/c;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0, v3}, Lcom/mqunar/cock/network/CockHandler;->a(Lcom/mqunar/cock/network/CockHandler;Z)Z

    .line 387
    return-void
.end method

.method public onOpen(Lcom/mqunar/yacca/YaccaBridge;)V
    .registers 5

    .prologue
    .line 374
    const-string v0, "CockHandler"

    const-string v1, "ONOPEN"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    return-void
.end method
