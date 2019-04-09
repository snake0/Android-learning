.class Lcom/iflytek/cloud/record/c$b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/record/c;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/iflytek/cloud/record/c;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->c(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/record/c$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/record/c$b;-><init>(Lcom/iflytek/cloud/record/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/c$b;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/record/c$b;->b:I

    return-void
.end method

.method public run()V
    .registers 10

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    :try_start_5
    const-string v0, "PcmPlayer"

    const-string v1, "start player"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PcmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioFocus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v2, v2, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bw;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_49
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_59} :catch_169
    .catchall {:try_start_5 .. :try_end_59} :catchall_1e8

    :try_start_59
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v6, :cond_6f

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v8, :cond_6f

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    :cond_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_239

    :try_start_70
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->f()V

    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->j(Lcom/iflytek/cloud/record/c;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v5, :cond_92

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v7, :cond_92

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_343

    :cond_92
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->g()Z

    move-result v0

    if-eqz v0, :cond_282

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;II)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "BUFFERING to PLAYING  fading "

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->f()V

    :cond_c0
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->d()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/record/b;->e()Lcom/iflytek/cloud/record/b$a;

    move-result-object v1

    if-eqz v1, :cond_ed

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget v3, v1, Lcom/iflytek/cloud/record/b$a;->d:I

    invoke-static {v2, v3}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;I)I

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget v1, v1, Lcom/iflytek/cloud/record/b$a;->c:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_ed
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v8, :cond_102

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_102
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->n(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->h()Z

    move-result v0

    if-nez v0, :cond_23c

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_23c

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->p(Lcom/iflytek/cloud/record/c;)F

    move-result v0

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_23c

    const-string v0, "no more size  fading "

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->g()V

    :cond_145
    :goto_145
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_152

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->h()V

    :cond_152
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/record/b;->a(Landroid/media/AudioTrack;I)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_167} :catch_169
    .catchall {:try_start_70 .. :try_end_167} :catchall_1e8

    goto/16 :goto_75

    :catch_169
    move-exception v0

    :try_start_16a
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x4e2b

    invoke-direct {v2, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_182
    .catchall {:try_start_16a .. :try_end_182} :catchall_1e8

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_189
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    monitor-exit v1
    :try_end_190
    .catchall {:try_start_189 .. :try_end_190} :catchall_39b

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_1a6
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_39e

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v2, v2, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_1c5
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$b;)Lcom/iflytek/cloud/record/c$b;

    const-string v0, "PcmPlayer"

    const-string v1, "player stopped"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d1
    return-void

    :cond_1d2
    :try_start_1d2
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bw;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1e6} :catch_169
    .catchall {:try_start_1d2 .. :try_end_1e6} :catchall_1e8

    goto/16 :goto_49

    :catchall_1e8
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1f0
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    monitor-exit v1
    :try_end_1f7
    .catchall {:try_start_1f0 .. :try_end_1f7} :catchall_3b3

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_20d

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_20d
    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    if-eqz v1, :cond_3b6

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v3, v3, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_22c
    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$b;)Lcom/iflytek/cloud/record/c$b;

    const-string v1, "PcmPlayer"

    const-string v2, "player stopped"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_239
    move-exception v0

    :try_start_23a
    monitor-exit v1
    :try_end_23b
    .catchall {:try_start_23a .. :try_end_23b} :catchall_239

    :try_start_23b
    throw v0

    :cond_23c
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-ne v5, v0, :cond_145

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->h()Z

    move-result v0

    if-nez v0, :cond_262

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_145

    :cond_262
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->p(Lcom/iflytek/cloud/record/c;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_145

    const-string v0, "has buffer  fading "

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->f()V

    goto/16 :goto_145

    :cond_282
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->f()Z

    move-result v0

    if-eqz v0, :cond_30f

    const-string v0, "play stoped"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;Z)Z

    :goto_2ad
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_2be

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_2be} :catch_169
    .catchall {:try_start_23b .. :try_end_2be} :catchall_1e8

    :cond_2be
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2c5
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    monitor-exit v1
    :try_end_2cc
    .catchall {:try_start_2c5 .. :try_end_2cc} :catchall_383

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_2e2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_2e2
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_386

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v2, v2, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_301
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$b;)Lcom/iflytek/cloud/record/c$b;

    const-string v0, "PcmPlayer"

    const-string v1, "player stopped"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d1

    :cond_30f
    :try_start_30f
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_31f

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;Z)Z

    goto/16 :goto_75

    :cond_31f
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;II)Z

    move-result v0

    if-eqz v0, :cond_33c

    const-string v0, "play onpaused!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_33c
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c$b;->sleep(J)V

    goto/16 :goto_75

    :cond_343
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-ne v0, v8, :cond_374

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v5, v0, :cond_36d

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_36d

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->i()V

    :cond_36d
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c$b;->sleep(J)V

    goto/16 :goto_75

    :cond_374
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-ne v6, v0, :cond_75

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->i()V
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_381} :catch_169
    .catchall {:try_start_30f .. :try_end_381} :catchall_1e8

    goto/16 :goto_2ad

    :catchall_383
    move-exception v0

    :try_start_384
    monitor-exit v1
    :try_end_385
    .catchall {:try_start_384 .. :try_end_385} :catchall_383

    throw v0

    :cond_386
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto/16 :goto_301

    :catchall_39b
    move-exception v0

    :try_start_39c
    monitor-exit v1
    :try_end_39d
    .catchall {:try_start_39c .. :try_end_39d} :catchall_39b

    throw v0

    :cond_39e
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto/16 :goto_1c5

    :catchall_3b3
    move-exception v0

    :try_start_3b4
    monitor-exit v1
    :try_end_3b5
    .catchall {:try_start_3b4 .. :try_end_3b5} :catchall_3b3

    throw v0

    :cond_3b6
    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto/16 :goto_22c
.end method
