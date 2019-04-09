.class public final Lcom/iflytek/cloud/SpeechRecognizer;
.super Lcom/iflytek/cloud/thirdparty/bh;


# static fields
.field private static a:Lcom/iflytek/cloud/SpeechRecognizer;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/cm;

.field private e:Lcom/iflytek/speech/SpeechRecognizerAidl;

.field private f:Lcom/iflytek/cloud/SpeechRecognizer$a;

.field private g:Lcom/iflytek/cloud/InitListener;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechRecognizer;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->f:Lcom/iflytek/cloud/SpeechRecognizer$a;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->g:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/SpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechRecognizer$1;-><init>(Lcom/iflytek/cloud/SpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->h:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->g:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cm;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

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

    new-instance v0, Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/SpeechRecognizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    :cond_40
    :goto_40
    return-void

    :cond_41
    if-eqz p2, :cond_40

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->h:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_40
.end method

.method static synthetic a(Lcom/iflytek/cloud/SpeechRecognizer;)Lcom/iflytek/cloud/InitListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->g:Lcom/iflytek/cloud/InitListener;

    return-object v0
.end method

.method public static declared-synchronized createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;
    .registers 5

    const-class v1, Lcom/iflytek/cloud/SpeechRecognizer;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/SpeechRecognizer;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    :try_start_6
    sget-object v0, Lcom/iflytek/cloud/SpeechRecognizer;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechRecognizer;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechRecognizer;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    :try_start_18
    sget-object v0, Lcom/iflytek/cloud/SpeechRecognizer;->a:Lcom/iflytek/cloud/SpeechRecognizer;
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

.method public static getRecognizer()Lcom/iflytek/cloud/SpeechRecognizer;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeechRecognizer;->a:Lcom/iflytek/cloud/SpeechRecognizer;

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

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizerAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    :cond_28
    new-instance v0, Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->g:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechRecognizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->g:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    goto :goto_35
.end method

.method public buildGrammar(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;)I
    .registers 7

    const-string v0, "asr"

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/bh$a;

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

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-nez v0, :cond_29

    const/16 v0, 0x5209

    :goto_28
    return v0

    :cond_29
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cm;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;)I

    move-result v0

    goto :goto_28
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cm;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cm;->cancel(Z)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizerAidl;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->f:Lcom/iflytek/cloud/SpeechRecognizer$a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->f:Lcom/iflytek/cloud/SpeechRecognizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechRecognizer$a;->a(Lcom/iflytek/cloud/SpeechRecognizer$a;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechRecognizerAidl;->cancel(Lcom/iflytek/speech/RecognizerListener;)I

    goto :goto_12

    :cond_2f
    const-string v0, "SpeechRecognizer cancel failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public destroy()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechRecognizerAidl;->destory()Z

    :cond_8
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_a
    iput-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_37

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cm;->destroy()Z

    move-result v0

    :cond_15
    if-eqz v0, :cond_36

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v1, Lcom/iflytek/cloud/SpeechRecognizer;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_21
    sput-object v2, Lcom/iflytek/cloud/SpeechRecognizer;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3a

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string v2, "Destory asr engine."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v2, "engine_destroy"

    const-string v3, "engine_destroy=asr"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_36
    return v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isListening()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cm;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechRecognizerAidl;->isListening()Z

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

.method public startListening(Lcom/iflytek/cloud/RecognizerListener;)I
    .registers 5

    const-string v0, "asr"

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/bh$a;

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

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-nez v0, :cond_29

    const/16 v0, 0x5209

    :goto_28
    return v0

    :cond_29
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cm;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/cm;->a(Lcom/iflytek/cloud/RecognizerListener;)I

    move-result v0

    goto :goto_28
.end method

.method public stopListening()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cm;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cm;->e()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizerAidl;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->f:Lcom/iflytek/cloud/SpeechRecognizer$a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->f:Lcom/iflytek/cloud/SpeechRecognizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechRecognizer$a;->a(Lcom/iflytek/cloud/SpeechRecognizer$a;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechRecognizerAidl;->stopListening(Lcom/iflytek/speech/RecognizerListener;)I

    goto :goto_11

    :cond_2e
    const-string v0, "SpeechRecognizer stopListening failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public updateLexicon(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I
    .registers 7

    const-string v0, "asr"

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/bh$a;

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

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-nez v0, :cond_29

    const/16 v0, 0x5209

    :goto_28
    return v0

    :cond_29
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cm;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I

    move-result v0

    goto :goto_28
.end method

.method public writeAudio([BII)I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cm;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->d:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cm;->a([BII)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizerAidl;->isListening()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer;->e:Lcom/iflytek/speech/SpeechRecognizerAidl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/speech/SpeechRecognizerAidl;->writeAudio([BII)I

    move-result v0

    goto :goto_12

    :cond_26
    const-string v0, "SpeechRecognizer writeAudio failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_12
.end method
