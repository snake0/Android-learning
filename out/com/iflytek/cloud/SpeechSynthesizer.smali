.class public Lcom/iflytek/cloud/SpeechSynthesizer;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field private static d:Lcom/iflytek/cloud/SpeechSynthesizer;


# instance fields
.field a:Lcom/iflytek/cloud/InitListener;

.field private e:Lcom/iflytek/cloud/thirdparty/cn;

.field private f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

.field private g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer$1;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->h:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cn;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/cn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

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

    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->h:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_40
.end method

.method public static createSynthesizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechSynthesizer;
    .registers 4

    sget-object v1, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static getSynthesizer()Lcom/iflytek/cloud/SpeechSynthesizer;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer;

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

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :cond_28
    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    goto :goto_35
.end method

.method public destroy()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    :cond_8
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cn;->destroy()Z

    move-result v0

    :cond_10
    if-eqz v0, :cond_31

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v1, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1c
    sput-object v2, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer;

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_32

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_31

    const-string v2, "Destory tts engine."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v2, "engine_destroy"

    const-string v3, "engine_destroy=tts"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_31
    return v0

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "local_speakers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "tts_play_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cn;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_39
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public isSpeaking()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cn;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public pauseSpeaking()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cn;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cn;->e()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->pauseSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    goto :goto_11
.end method

.method public resumeSpeaking()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cn;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cn;->f()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->resumeSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    goto :goto_11
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/bh;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .registers 5

    const-string v0, "stop all current session in new session"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    const-string v0, "tts"

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/bh$a;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-nez v0, :cond_16

    const/16 v0, 0x5209

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cn;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "next_text"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/cn;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result v0

    goto :goto_15
.end method

.method public stopSpeaking()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cn;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cn;->a(Z)V

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->stopSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    :cond_2d
    return-void
.end method

.method public synthesizeToUri(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cn;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/thirdparty/cn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/16 v0, 0x5209

    goto :goto_11
.end method
