.class final Lcom/mqunar/dispatcher/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mqunar/dispatcher/f;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mqunar/dispatcher/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->splitParams(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    .line 166
    const-string v1, "true"

    const-string v2, "isTransferHome"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "0"

    const-string v2, "isNotClosePre"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 167
    :cond_26
    iget-object v0, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_4d

    .line 168
    iget-object v0, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_53

    .line 169
    iget-object v0, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/dispatcher/f;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/dispatcher/f;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->b(Ljava/lang/Object;)V

    .line 178
    :goto_52
    return-void

    .line 171
    :cond_53
    iget-object v0, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/dispatcher/f;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/dispatcher/f;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4d

    .line 177
    :cond_71
    iget-object v0, p0, Lcom/mqunar/dispatcher/f;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mqunar/dispatcher/f;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/mqunar/dispatcher/DispatcherLogic;->processIntentInner(Ljava/lang/Object;Landroid/content/Intent;)V

    goto :goto_52
.end method
