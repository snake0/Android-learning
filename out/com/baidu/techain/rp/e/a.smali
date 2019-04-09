.class public final Lcom/baidu/techain/rp/e/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 23
    if-nez p2, :cond_3

    .line 56
    :cond_2
    :goto_2
    return-void

    .line 26
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 33
    invoke-static {p1}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/b/f;->a()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_2

    .line 53
    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2

    .line 34
    :cond_22
    :try_start_22
    const-string v1, "com.b.r.p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    if-eqz p2, :cond_2

    .line 1063
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p1}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1064
    invoke-virtual {v0}, Lcom/baidu/techain/e;->x()I

    move-result v1

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1066
    const v2, 0x36ee80

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;J)V

    .line 1067
    invoke-static {p1}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/techain/b/f;->c()V

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/techain/e;->d(J)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_56} :catch_1d

    goto :goto_2
.end method
