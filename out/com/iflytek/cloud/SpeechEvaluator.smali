.class public Lcom/iflytek/cloud/SpeechEvaluator;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field private static a:Lcom/iflytek/cloud/SpeechEvaluator;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/cl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cl;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/cl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-eqz p2, :cond_f

    :cond_f
    return-void
.end method

.method public static createEvaluator(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechEvaluator;
    .registers 5

    sget-object v1, Lcom/iflytek/cloud/SpeechEvaluator;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/iflytek/cloud/SpeechEvaluator;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/iflytek/cloud/SpeechEvaluator;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getEvaluator()Lcom/iflytek/cloud/SpeechEvaluator;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cl;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cl;->cancel(Z)V

    :cond_12
    return-void
.end method

.method public destroy()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cl;->destroy()Z

    move-result v0

    :cond_9
    if-eqz v0, :cond_18

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/iflytek/cloud/SpeechEvaluator;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_15
    sput-object v2, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

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

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEvaluating()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cl;->g()Z

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

.method public startEvaluating(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-nez v0, :cond_7

    const/16 v0, 0x5209

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cl;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cl;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I

    move-result v0

    goto :goto_6
.end method

.method public startEvaluating([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-nez v0, :cond_7

    const/16 v0, 0x5209

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cl;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cl;->a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I

    move-result v0

    goto :goto_6
.end method

.method public stopEvaluating()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cl;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cl;->e()V

    :goto_11
    return-void

    :cond_12
    const-string v0, "SpeechEvaluator stopEvaluating failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public writeAudio([BII)Z
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cl;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->d:Lcom/iflytek/cloud/thirdparty/cl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cl;->a([BII)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const-string v0, "SpeechEvaluator writeAudio failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_12
.end method
