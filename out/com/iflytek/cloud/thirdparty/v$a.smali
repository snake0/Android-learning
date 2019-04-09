.class Lcom/iflytek/cloud/thirdparty/v$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/v;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/v;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .registers 7

    const/4 v5, 0x0

    const-string v0, "global"

    const-string v1, "scene"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/v;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/v;->g(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;Lcom/iflytek/cloud/SpeechRecognizer;)Lcom/iflytek/cloud/SpeechRecognizer;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v2

    const-string v3, "engine_type"

    const-string v4, "local"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v2

    const-string v3, "text_encoding"

    const-string v4, "utf-8"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v2

    const-string v3, "result_type"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v2

    const-string v3, "asr_res_path"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/v;->h(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v2

    const-string v3, "grm_build_path"

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v1

    const-string v2, "local_grammar"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    const-string v1, "vad_enable"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    const-string v1, "audio_source"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    const-string v1, "asr_threshold"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->i(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    const-string v1, "request_audio_focus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    const-string v1, "asr_audio_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/aj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "asr-audio/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_f2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->j(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    const-string v0, "AsrUnit"

    const-string v1, "start recognizing."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c6

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/y;

    iget v1, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    packed-switch v1, :pswitch_data_ce

    :cond_11
    :goto_11
    :pswitch_11
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->o(Lcom/iflytek/cloud/thirdparty/v;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1e

    :try_start_1b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_11

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11

    :pswitch_24
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    iget-object v1, v0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "stream_id"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_49
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2, v1}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;)Ljava/lang/String;

    :cond_4e
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$a;->a()V

    :pswitch_51
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechRecognizer;->isListening()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v1

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->writeAudio([BII)I

    goto :goto_11

    :pswitch_6d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->e(Lcom/iflytek/cloud/thirdparty/v;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->l(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_81
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->n(Lcom/iflytek/cloud/thirdparty/v;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    :goto_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_81 .. :try_end_96} :catchall_b0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    goto/16 :goto_11

    :cond_a9
    :try_start_a9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    goto :goto_95

    :catchall_b0
    move-exception v0

    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_b0

    throw v0

    :pswitch_b3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->cancel()V

    goto/16 :goto_7

    :pswitch_data_c6
    .packed-switch 0x3
        :pswitch_8
        :pswitch_b3
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_24
        :pswitch_51
        :pswitch_11
        :pswitch_6d
    .end packed-switch
.end method
