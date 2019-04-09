.class public final Lcom/iflytek/cloud/IdentityVerifier;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field private static a:Lcom/iflytek/cloud/IdentityVerifier;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/cj;

.field private e:Lcom/iflytek/cloud/InitListener;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    iput-object v3, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    iput-object v3, p0, Lcom/iflytek/cloud/IdentityVerifier;->e:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/IdentityVerifier$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/IdentityVerifier$1;-><init>(Lcom/iflytek/cloud/IdentityVerifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->f:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/IdentityVerifier;->e:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cj;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/cj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-eqz p2, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->f:Landroid/os/Handler;

    invoke-static {v0, v2, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_28
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/IdentityVerifier;)Lcom/iflytek/cloud/InitListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->e:Lcom/iflytek/cloud/InitListener;

    return-object v0
.end method

.method public static declared-synchronized createVerifier(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/IdentityVerifier;
    .registers 5

    const-class v1, Lcom/iflytek/cloud/IdentityVerifier;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/IdentityVerifier;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    :try_start_6
    sget-object v0, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/iflytek/cloud/IdentityVerifier;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/IdentityVerifier;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    :try_start_18
    sget-object v0, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1f

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVerifier()Lcom/iflytek/cloud/IdentityVerifier;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cj;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cj;->cancel(Z)V

    :goto_12
    return-void

    :cond_13
    const-string v0, "IdentityVerifier cancel failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public destroy()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cj;->destroy()Z

    move-result v0

    :cond_9
    if-eqz v0, :cond_18

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/iflytek/cloud/IdentityVerifier;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_15
    sput-object v2, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    monitor-exit v1

    :cond_18
    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/IdentityListener;)I
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    iget-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cj;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/cj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/IdentityListener;)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/16 v0, 0x4e2c

    goto :goto_14

    :cond_18
    const-string v0, "IdentityVerifier execute failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/16 v0, 0x5209

    goto :goto_14
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWorking()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cj;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/bh;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWorking(Lcom/iflytek/cloud/IdentityListener;)I
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-nez v0, :cond_7

    const/16 v0, 0x5209

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    iget-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cj;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/cj;->a(Lcom/iflytek/cloud/IdentityListener;)I

    move-result v0

    goto :goto_6
.end method

.method public stopWrite(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cj;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/cj;->c(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const-string v0, "IdentityVerifier stopListening failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .registers 12

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cj;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Lcom/iflytek/cloud/thirdparty/cj;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/cj;->a(Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    :goto_17
    return v0

    :cond_18
    const-string v0, "IdentityVerifier writeAudio failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_17
.end method
