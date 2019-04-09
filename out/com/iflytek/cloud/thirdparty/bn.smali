.class public Lcom/iflytek/cloud/thirdparty/bn;
.super Lcom/iflytek/cloud/thirdparty/bi;


# instance fields
.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Lcom/iflytek/cloud/SpeechError;

.field final k:Landroid/os/Handler;

.field private l:Lcom/iflytek/cloud/record/c;

.field private m:Lcom/iflytek/cloud/record/b;

.field private n:Lcom/iflytek/cloud/SynthesizerListener;

.field private o:Lcom/iflytek/cloud/SynthesizerListener;

.field private p:Lcom/iflytek/cloud/thirdparty/bn$a;

.field private q:I

.field private r:Z

.field private s:Lcom/iflytek/cloud/thirdparty/bm;

.field private t:Lcom/iflytek/cloud/record/c$a;

.field private u:Landroid/os/Handler;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->p:Lcom/iflytek/cloud/thirdparty/bn$a;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->q:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->r:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->g:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->h:Z

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->j:Lcom/iflytek/cloud/SpeechError;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bn$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/bn$1;-><init>(Lcom/iflytek/cloud/thirdparty/bn;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->s:Lcom/iflytek/cloud/thirdparty/bm;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bn$2;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/bn$2;-><init>(Lcom/iflytek/cloud/thirdparty/bn;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->t:Lcom/iflytek/cloud/record/c$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bn$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/bn$3;-><init>(Lcom/iflytek/cloud/thirdparty/bn;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->u:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->v:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bn$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/bn$5;-><init>(Lcom/iflytek/cloud/thirdparty/bn;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/bn;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/b;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/bn;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bn;->j()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/bn$a;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->p:Lcom/iflytek/cloud/thirdparty/bn$a;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/c;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    return-object v0
.end method

.method private j()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->r:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->q:I

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/bn;->r:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bn;->t:Lcom/iflytek/cloud/record/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/b;Lcom/iflytek/cloud/record/c$a;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->u:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2b
    return-void
.end method

.method static synthetic k(Lcom/iflytek/cloud/thirdparty/bn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->v:Z

    return v0
.end method

.method static synthetic l(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic q(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic s(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method

.method static synthetic t(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I
    .registers 13

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn;->i:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/bn;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    const-string v0, "stream_type"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "request_audio_focus"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz p4, :cond_56

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "tts_buf_fading"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "tts_fading"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v0, Lcom/iflytek/cloud/record/c;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/cloud/record/c;-><init>(Landroid/content/Context;IZZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    :cond_56
    new-instance v0, Lcom/iflytek/cloud/thirdparty/bl;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->a:Landroid/content/Context;

    const-string v2, "tts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/bn;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/iflytek/cloud/thirdparty/bl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    const/4 v0, 0x1

    const-string v1, "tts_min_audio_len"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_d8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v0

    :goto_7a
    const-string v0, "tts_proc_scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v5

    new-instance v0, Lcom/iflytek/cloud/record/b;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/be;->t()I

    move-result v2

    add-int/2addr v3, v4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/cloud/record/b;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "end_with_null"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/record/b;->a(Z)V

    const-string v0, "tts_buffer_time"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->q:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minPlaySec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->r:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/bl;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->s:Lcom/iflytek/cloud/thirdparty/bm;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/bl;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/bm;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->g:Z
    :try_end_d5
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_2 .. :try_end_d5} :catch_da
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d5} :catch_e7
    .catchall {:try_start_2 .. :try_end_d5} :catchall_e4

    move v0, v6

    :goto_d6
    monitor-exit p0

    return v0

    :cond_d8
    move v3, v6

    goto :goto_7a

    :catch_da
    move-exception v0

    move-object v1, v0

    :try_start_dc
    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_e4

    goto :goto_d6

    :catchall_e4
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_e7
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    :try_start_eb
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_e4

    goto :goto_d6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;Lcom/iflytek/cloud/SynthesizerListener;)I
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "message_main_thread"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->v:Z

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bl;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->a:Landroid/content/Context;

    const-string v2, "tts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/bn;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Lcom/iflytek/cloud/thirdparty/bl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    const/4 v0, 0x1

    const-string v1, "tts_min_audio_len"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v0

    :goto_30
    const-string v0, "tts_proc_scale"

    const/16 v1, 0x64

    invoke-virtual {p3, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v5

    new-instance v0, Lcom/iflytek/cloud/record/b;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/be;->t()I

    move-result v2

    add-int/2addr v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/cloud/record/b;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/bn$4;

    invoke-direct {v1, p0, p2}, Lcom/iflytek/cloud/thirdparty/bn$4;-><init>(Lcom/iflytek/cloud/thirdparty/bn;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/bl;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/bl;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/bm;)V
    :try_end_55
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_55} :catch_59
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_55} :catch_63

    move v0, v6

    :goto_56
    return v0

    :cond_57
    move v3, v6

    goto :goto_30

    :catch_59
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_56

    :catch_63
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_56
.end method

.method public a(Lcom/iflytek/cloud/SynthesizerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/bn$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn;->p:Lcom/iflytek/cloud/thirdparty/bn$a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/bn;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn;->i:Ljava/lang/String;

    return-void
.end method

.method public cancel(Z)V
    .registers 8

    const/16 v5, 0x520a

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakSession cancel notifyError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bn;->h()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v0, v5, v2, v2, v3}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_2a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v0, v5, v2, v2, v3}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_33
    if-eqz p1, :cond_5f

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e31

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v1, :cond_4e

    const-string v1, "tts-onCompleted-cancel"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->u:Landroid/os/Handler;

    invoke-static {v1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_4e
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v1, :cond_5f

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->v:Z

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->k:Landroid/os/Handler;

    invoke-static {v1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5f
    :goto_5f
    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/bn;->n:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-super {p0, v2}, Lcom/iflytek/cloud/thirdparty/bi;->cancel(Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->e()V

    :cond_6f
    return-void

    :cond_70
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->o:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_5f
.end method

.method public d()Z
    .registers 2

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bi;->d()Z

    move-result v0

    return v0
.end method

.method public destroy()Z
    .registers 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public e()V
    .registers 7

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->h:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "tts_next_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bn;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/bn;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ce;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I

    goto :goto_4
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->a()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x4

    goto :goto_e
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->c()Z

    :cond_d
    return-void
.end method

.method public h()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bn;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bn;->f()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_15

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bn;->f()I

    move-result v1

    if-nez v1, :cond_7

    :cond_15
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->m:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->d()Z

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/iflytek/cloud/record/c;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/record/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn;->l:Lcom/iflytek/cloud/record/c;

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bn;->j()V

    goto :goto_d
.end method
