.class public abstract Lcom/iflytek/cloud/thirdparty/bi;
.super Lcom/iflytek/cloud/thirdparty/bh;


# instance fields
.field protected a:Landroid/content/Context;

.field protected d:Ljava/lang/Object;

.field protected volatile e:Lcom/iflytek/cloud/thirdparty/be;

.field protected volatile f:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bi;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bi;->e:Lcom/iflytek/cloud/thirdparty/be;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->a:Landroid/content/Context;

    :try_start_20
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bi;->b()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_29
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bi;->a:Landroid/content/Context;

    goto :goto_23
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/HandlerThread;
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    return-object v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b_()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bi;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Z)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    :cond_9
    return-void
.end method

.method protected d()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public destroy()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bi;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bi;->d()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bi;->e:Lcom/iflytek/cloud/thirdparty/be;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    :goto_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_3b

    if-eqz v0, :cond_17

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    :cond_17
    return v0

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bi;->b_()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destory ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    goto :goto_10

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method protected finalize()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bi;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finalize called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSampleRate()I
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "sample_rate"

    const/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
