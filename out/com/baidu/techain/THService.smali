.class public Lcom/baidu/techain/THService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .prologue
    .line 16
    if-nez p1, :cond_7

    .line 17
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 40
    :goto_6
    return v0

    .line 19
    :cond_7
    invoke-static {}, Lcom/baidu/techain/b/r;->a()Lcom/baidu/techain/b/r;

    move-result-object v0

    new-instance v1, Lcom/baidu/techain/THService$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/techain/THService$1;-><init>(Lcom/baidu/techain/THService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/baidu/techain/b/r;->a(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_18

    .line 40
    :goto_13
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_6

    .line 38
    :catch_18
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_13
.end method
