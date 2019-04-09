.class Lcom/mqunar/cock/network/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/yacca/Msg$OnMsg;


# instance fields
.field final synthetic a:Lcom/mqunar/cock/network/CockHandler;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/CockHandler;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0}, Lcom/mqunar/cock/network/CockHandler;->d(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/ImListener;

    .line 364
    invoke-interface {v0}, Lcom/mqunar/cock/network/ImListener;->onConnected()V

    goto :goto_a

    .line 366
    :cond_1a
    const-string v0, "CockHandler"

    const-string v1, "onconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0}, Lcom/mqunar/cock/network/CockHandler;->e(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnCockMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/cock/network/OnCockMessage;->onConnected()V

    .line 368
    return-void
.end method

.method public onMessage([BI[B)V
    .registers 6

    .prologue
    .line 209
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/cock/network/b;

    invoke-direct {v1, p0, p1, p3}, Lcom/mqunar/cock/network/b;-><init>(Lcom/mqunar/cock/network/a;[B[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
