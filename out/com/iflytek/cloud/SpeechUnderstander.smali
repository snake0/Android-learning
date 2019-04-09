.class public Lcom/iflytek/cloud/SpeechUnderstander;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field protected static a:Lcom/iflytek/cloud/SpeechUnderstander;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/co;

.field private e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

.field private f:Lcom/iflytek/cloud/SpeechUnderstander$a;

.field private g:Lcom/iflytek/cloud/InitListener;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/SpeechUnderstander$a;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/SpeechUnderstander$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechUnderstander$1;-><init>(Lcom/iflytek/cloud/SpeechUnderstander;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->h:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/co;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/bh$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    if-eq v0, v1, :cond_41

    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_40
    :goto_40
    return-void

    :cond_41
    if-eqz p2, :cond_40

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->h:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_40
.end method

.method static synthetic a(Lcom/iflytek/cloud/SpeechUnderstander;)Lcom/iflytek/cloud/InitListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    return-object v0
.end method

.method public static declared-synchronized createUnderstander(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechUnderstander;
    .registers 5

    const-class v1, Lcom/iflytek/cloud/SpeechUnderstander;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/SpeechUnderstander;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    :try_start_6
    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/iflytek/cloud/SpeechUnderstander;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechUnderstander;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    :try_start_18
    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;
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

.method public static getUnderstander()Lcom/iflytek/cloud/SpeechUnderstander;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/bh$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_28
    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    goto :goto_35
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/co;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/co;->a(Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->cancel(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    goto :goto_12

    :cond_2b
    const-string v0, "SpeechUnderstander cancel failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public destroy()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    :cond_8
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_a
    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_25

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/co;->c()Z

    move-result v0

    :cond_15
    if-eqz v0, :cond_24

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v1, Lcom/iflytek/cloud/SpeechUnderstander;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_21
    sput-object v2, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    :cond_24
    return v0

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUnderstanding()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/co;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/bh;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startUnderstanding(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .registers 5

    const-string v0, "nlu"

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechUnderstander;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/bh$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start engine mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bh$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    if-nez v0, :cond_29

    const/16 v0, 0x5209

    :goto_28
    return v0

    :cond_29
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/co;->a(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/co;->a(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I

    move-result v0

    goto :goto_28
.end method

.method public stopUnderstanding()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/co;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/co;->b()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->stopUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    goto :goto_11

    :cond_2a
    const-string v0, "SpeechUnderstander stopUnderstanding, is not understanding"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public writeAudio([BII)I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/co;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/thirdparty/co;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/co;->a([BII)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->writeAudio([BII)I

    move-result v0

    goto :goto_12

    :cond_26
    const-string v0, "SpeechUnderstander writeAudio, is not understanding"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_12
.end method
