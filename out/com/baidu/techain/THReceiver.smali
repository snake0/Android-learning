.class public Lcom/baidu/techain/THReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 17
    if-nez p2, :cond_3

    .line 26
    :goto_2
    return-void

    .line 21
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1029
    invoke-static {}, Lcom/baidu/techain/b/r;->a()Lcom/baidu/techain/b/r;

    move-result-object v0

    new-instance v1, Lcom/baidu/techain/THReceiver$1;

    invoke-direct {v1, p2, p1}, Lcom/baidu/techain/THReceiver$1;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/baidu/techain/b/r;->a(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1e} :catch_1f

    goto :goto_2

    .line 24
    :catch_1f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2
.end method
