.class public Lcom/iflytek/cloud/TextUnderstander;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field private static e:Lcom/iflytek/cloud/TextUnderstander;


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/cp;

.field private d:Lcom/iflytek/speech/TextUnderstanderAidl;

.field private f:Lcom/iflytek/cloud/TextUnderstander$a;

.field private g:Lcom/iflytek/cloud/InitListener;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/TextUnderstander;->e:Lcom/iflytek/cloud/TextUnderstander;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    iput-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->f:Lcom/iflytek/cloud/TextUnderstander$a;

    iput-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/TextUnderstander$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/TextUnderstander$1;-><init>(Lcom/iflytek/cloud/TextUnderstander;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->h:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/TextUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cp;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/cp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    :cond_27
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/bh$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    if-eq v0, v1, :cond_47

    new-instance v0, Lcom/iflytek/speech/TextUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/TextUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    :cond_46
    :goto_46
    return-void

    :cond_47
    if-eqz p2, :cond_46

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->h:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_46
.end method

.method static synthetic a(Lcom/iflytek/cloud/TextUnderstander;)Lcom/iflytek/cloud/InitListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    return-object v0
.end method

.method public static declared-synchronized createTextUnderstander(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/TextUnderstander;
    .registers 5

    const-class v1, Lcom/iflytek/cloud/TextUnderstander;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/TextUnderstander;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    :try_start_6
    sget-object v0, Lcom/iflytek/cloud/TextUnderstander;->e:Lcom/iflytek/cloud/TextUnderstander;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/iflytek/cloud/TextUnderstander;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/TextUnderstander;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/TextUnderstander;->e:Lcom/iflytek/cloud/TextUnderstander;

    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    :try_start_18
    sget-object v0, Lcom/iflytek/cloud/TextUnderstander;->e:Lcom/iflytek/cloud/TextUnderstander;
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

.method public static getTextUnderstander()Lcom/iflytek/cloud/TextUnderstander;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/TextUnderstander;->e:Lcom/iflytek/cloud/TextUnderstander;

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

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/TextUnderstanderAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/TextUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    :cond_28
    new-instance v0, Lcom/iflytek/speech/TextUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/TextUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->g:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/TextUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    goto :goto_35
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cp;->cancel(Z)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->f:Lcom/iflytek/cloud/TextUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/TextUnderstander$a;->a(Lcom/iflytek/cloud/TextUnderstander$a;)Lcom/iflytek/speech/TextUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/TextUnderstanderAidl;->cancel(Lcom/iflytek/speech/TextUnderstanderListener;)I

    goto :goto_a

    :cond_1b
    const-string v0, "TextUnderstander cancel failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public destroy()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/iflytek/speech/TextUnderstanderAidl;->destory()Z

    :cond_9
    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cp;->destroy()Z

    move-result v0

    :cond_11
    if-eqz v0, :cond_22

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_22

    iput-object v2, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    sget-object v1, Lcom/iflytek/cloud/TextUnderstander;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1f
    sput-object v2, Lcom/iflytek/cloud/TextUnderstander;->e:Lcom/iflytek/cloud/TextUnderstander;

    monitor-exit v1

    :cond_22
    return v0

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_23

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

    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cp;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/TextUnderstanderAidl;->isUnderstanding()Z

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

.method public understandText(Ljava/lang/String;Lcom/iflytek/cloud/TextUnderstanderListener;)I
    .registers 6

    const-string v0, "nlu"

    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->d:Lcom/iflytek/speech/TextUnderstanderAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/TextUnderstander;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/bh$a;

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

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    if-nez v0, :cond_29

    const/16 v0, 0x5209

    :goto_28
    return v0

    :cond_29
    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    iget-object v1, p0, Lcom/iflytek/cloud/TextUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cp;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander;->a:Lcom/iflytek/cloud/thirdparty/cp;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/cp;->a(Ljava/lang/String;Lcom/iflytek/cloud/TextUnderstanderListener;)I

    move-result v0

    goto :goto_28
.end method
