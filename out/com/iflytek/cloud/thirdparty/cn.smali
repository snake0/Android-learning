.class public Lcom/iflytek/cloud/thirdparty/cn;
.super Lcom/iflytek/cloud/thirdparty/bi;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/bn$a;


# instance fields
.field private g:Landroid/content/Context;

.field private h:Lcom/iflytek/cloud/thirdparty/bn;

.field private i:Lcom/iflytek/cloud/thirdparty/bn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->g:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->g:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I
    .registers 10

    const-string v0, "new Session Start"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn$a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "tts_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/bn;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I

    move-result v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    new-instance v1, Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/thirdparty/bn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v1, p0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn$a;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v1, p3, v2}, Lcom/iflytek/cloud/thirdparty/bn;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;)V

    :cond_41
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .registers 9

    const/4 v0, 0x0

    const-string v1, "startSpeaking enter"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "next_text"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/bn;->h()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v4, "tts_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    :cond_29
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    if-nez v2, :cond_38

    invoke-direct {p0, p1, p2, v1}, Lcom/iflytek/cloud/thirdparty/cn;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I

    move-result v0

    :cond_31
    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_a5

    const-string v1, "startSpeaking leave"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return v0

    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v2, v2, Lcom/iflytek/cloud/thirdparty/bn;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-direct {p0, p1, p2, v1}, Lcom/iflytek/cloud/thirdparty/cn;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :cond_50
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v2, v2, Lcom/iflytek/cloud/thirdparty/bn;->j:Lcom/iflytek/cloud/SpeechError;

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    iget-boolean v2, v2, Lcom/iflytek/cloud/thirdparty/bn;->g:Z

    if-nez v2, :cond_6a

    :cond_5c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-direct {p0, p1, p2, v1}, Lcom/iflytek/cloud/thirdparty/cn;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :cond_6a
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    new-instance v3, Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cn;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/cloud/thirdparty/bn;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v3, p0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn$a;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v3, v1, v4}, Lcom/iflytek/cloud/thirdparty/bn;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;)V

    :cond_8a
    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v1, p2}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/SynthesizerListener;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/bn;->i()V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-boolean v1, v1, Lcom/iflytek/cloud/thirdparty/bn;->h:Z

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cn;->a()V

    const-string v1, "startSpeaking NextSession pause"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_31

    :catchall_a5
    move-exception v0

    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_38 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .registers 8

    const-string v0, "synthesizeToUri enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bn;->h()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "tts_interrupt_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    :cond_20
    new-instance v0, Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iflytek/cloud/thirdparty/bn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_38

    const-string v1, "synthesizeToUri leave"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return v0

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bn;->e()V

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSpeaking enter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v0, :cond_28

    const-string v0, "-->stopSpeaking cur"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    :cond_28
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v0, :cond_3a

    const-string v0, "-->stopSpeaking cur next"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->i:Lcom/iflytek/cloud/thirdparty/bn;

    :cond_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_41

    const-string v0, "stopSpeaking leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return-void

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public destroy()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/cn;->a(Z)V

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bi;->destroy()Z

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .registers 2

    const-string v0, "pauseSpeaking enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bn;->g()V

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    const-string v0, "pauseSpeaking leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public f()V
    .registers 2

    const-string v0, "resumeSpeaking enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bn;->i()V

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    const-string v0, "resumeSpeaking leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public g()Z
    .registers 3

    const/4 v0, 0x0

    const-string v1, "isSpeaking enter"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bn;->h()Z

    move-result v0

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_18

    const-string v1, "isSpeaking leave"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public h()I
    .registers 3

    const/4 v0, 0x4

    const-string v1, "getState enter"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cn;->h:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bn;->f()I

    move-result v0

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_18

    const-string v1, "getState leave"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method
