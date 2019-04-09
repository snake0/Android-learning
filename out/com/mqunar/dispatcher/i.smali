.class final Lcom/mqunar/dispatcher/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 599
    iput-object p1, p0, Lcom/mqunar/dispatcher/i;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mqunar/dispatcher/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mqunar/dispatcher/i;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcom/mqunar/dispatcher/i;->d:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/dispatcher/i;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mqunar/dispatcher/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mqunar/dispatcher/i;->c:Landroid/content/Intent;

    iget-object v3, p0, Lcom/mqunar/dispatcher/i;->d:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 607
    :goto_b
    return-void

    .line 604
    :catch_c
    move-exception v0

    .line 605
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
