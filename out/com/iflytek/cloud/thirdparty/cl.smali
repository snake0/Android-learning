.class public Lcom/iflytek/cloud/thirdparty/cl;
.super Lcom/iflytek/cloud/thirdparty/bi;


# instance fields
.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->g:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .registers 10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cl;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->g:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->v()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cl;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v4, "ise_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    :cond_29
    new-instance v0, Lcom/iflytek/cloud/thirdparty/av;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cl;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cl;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v5, "eva"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/cl;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/av;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/cl;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/bw;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/av;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/thirdparty/cl$a;-><init>(Lcom/iflytek/cloud/thirdparty/cl;Lcom/iflytek/cloud/EvaluatorListener;)V

    invoke-virtual {v0, p1, p2, v3}, Lcom/iflytek/cloud/thirdparty/av;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    :try_end_52
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_52} :catch_55
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_52} :catch_5f
    .catchall {:try_start_4 .. :try_end_52} :catchall_67

    move v0, v1

    :goto_53
    :try_start_53
    monitor-exit v2

    return v0

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catch_5f
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_53 .. :try_end_69} :catchall_67

    throw v0
.end method

.method public a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .registers 10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cl;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->g:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->v()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cl;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v4, "ise_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    :cond_29
    new-instance v0, Lcom/iflytek/cloud/thirdparty/av;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cl;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cl;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v5, "eva"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/cl;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/av;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/cl;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/bw;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/av;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/thirdparty/cl$a;-><init>(Lcom/iflytek/cloud/thirdparty/cl;Lcom/iflytek/cloud/EvaluatorListener;)V

    invoke-virtual {v0, p1, p2, v3}, Lcom/iflytek/cloud/thirdparty/av;->a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    :try_end_52
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_52} :catch_55
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_52} :catch_5f
    .catchall {:try_start_4 .. :try_end_52} :catchall_67

    move v0, v1

    :goto_53
    :try_start_53
    monitor-exit v2

    return v0

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catch_5f
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_53 .. :try_end_69} :catchall_67

    throw v0
.end method

.method public a([BII)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cl;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-nez v2, :cond_f

    const-string v2, "writeAudio error, no active session."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-exit v1

    :goto_e
    return v0

    :cond_f
    if-eqz p1, :cond_14

    array-length v2, p1

    if-gtz v2, :cond_1e

    :cond_14
    const-string v2, "writeAudio error,buffer is null."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_e

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_2a

    const-string v2, "writeAudio error,buffer length < length."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_e

    :cond_2a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/av;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/av;->onRecordBuffer([BII)V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_1b

    goto :goto_e
.end method

.method protected b_()Z
    .registers 2

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bi;->b_()Z

    move-result v0

    return v0
.end method

.method public cancel(Z)V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cl;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cl;->f()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;->cancel(Z)V

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public e()V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cl;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/av;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/av;->a(Z)Z

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected f()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "ise_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/av;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/av;->d()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/bv;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v2, "audio_format"

    invoke-virtual {v0, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v2

    const-string v3, "sample_rate"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cl;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget v4, v4, Lcom/iflytek/cloud/thirdparty/be;->s:I

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bv;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_44
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cl;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cl;->d()Z

    move-result v0

    return v0
.end method
