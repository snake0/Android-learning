.class public Lcom/iflytek/cloud/thirdparty/ax;
.super Lcom/iflytek/cloud/thirdparty/be;

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# static fields
.field public static j:I

.field public static k:I


# instance fields
.field private A:Z

.field private B:I

.field protected volatile a:Lcom/iflytek/cloud/RecognizerListener;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:I

.field protected g:Z

.field protected h:Lcom/iflytek/cloud/thirdparty/aw;

.field protected i:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lcom/iflytek/cloud/thirdparty/bg;

.field protected p:I

.field private q:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/ax;->j:I

    sput v0, Lcom/iflytek/cloud/thirdparty/ax;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/be;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->b:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->c:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->d:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->e:Z

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->g:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aw;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/aw;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->n:Ljava/util/ArrayList;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bg;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bg;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->q:Z

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->z:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->A:Z

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->B:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->n:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->e:Z

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/ax;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    return-void
.end method

.method private a(Z[B)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->v:J

    if-eqz p2, :cond_92

    array-length v0, p2

    if-lez v0, :cond_92

    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v0

    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->x:Lcom/iflytek/cloud/thirdparty/cq;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/thirdparty/cq;->a(Ljava/lang/String;Z)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_d9

    :goto_1a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v0

    if-eqz v0, :cond_72

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v3, 0x4e21

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    if-eqz p1, :cond_63

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v2, "request_audio_url"

    invoke-virtual {v0, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "audio_url"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/aw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v3, 0x59d9

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_63
    new-instance v0, Lcom/iflytek/cloud/RecognizerResult;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/RecognizerResult;-><init>(Ljava/lang/String;)V

    const-string v1, "GetNotifyResult"

    invoke-static {v1, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v1, v0, p1}, Lcom/iflytek/cloud/RecognizerListener;->onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V

    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msc result time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_91

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/ax;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_91
    return-void

    :cond_92
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_d4

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "local_grammar"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    const-string v1, "sms.irf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e25

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_ba
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "asr_nomatch_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_cf

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2786

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_cf
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_15

    :cond_d4
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_15

    :catch_d9
    move-exception v0

    const-string v2, "DC exception:"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1a
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    return v0
.end method

.method public a([BII)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ax;->onRecordBuffer([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->h()V

    goto :goto_8

    :pswitch_d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->i()V

    goto :goto_8

    :pswitch_11
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->l()V

    goto :goto_8

    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ax;->b(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_19
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->j()V

    goto :goto_8

    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ax;->c(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_21
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->k()V

    goto :goto_8

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_8
        :pswitch_8
        :pswitch_21
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/RecognizerListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const-string v0, "startListening called"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->a_()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->n()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/aw;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/ax;->j:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/aw;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/ax;->k:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->f()Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3f

    if-nez p1, :cond_3f

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "asr_nomatch_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_3f
    if-eqz p1, :cond_8f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_ret"

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;JZ)V

    :goto_4d
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "rec_ustop"

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->e:Z

    if-eqz v0, :cond_99

    const-string v0, "1"

    :goto_57
    invoke-virtual {v1, v2, v0, v4}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    const-string v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/bg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/aw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "SessionEndBegin"

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->u:Z

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/aw;->a(Ljava/lang/String;)V

    :goto_77
    const-string v0, "SessionEndEnd"

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->u:Z

    if-eqz v0, :cond_c3

    const-string v0, "RecognizerListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    return-void

    :cond_8f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_ret"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;JZ)V

    goto :goto_4d

    :cond_99
    const-string v0, "0"

    goto :goto_57

    :cond_9c
    if-eqz p1, :cond_bb

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/aw;->a(Ljava/lang/String;)V

    goto :goto_77

    :cond_bb
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/aw;->a(Ljava/lang/String;)V

    goto :goto_77

    :cond_c3
    const-string v0, "RecognizerListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_8c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v2, 0x4e21

    invoke-interface {v1, v2, v4, v4, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/RecognizerListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_8c
.end method

.method public a([BI)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0, p2, p1}, Lcom/iflytek/cloud/RecognizerListener;->onVolumeChanged(I[B)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->q:Z

    if-eqz v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v2, 0x520b

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_25
    return-void
.end method

.method protected a([BZ)V
    .registers 7

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->c:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->c:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_fau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v1, 0x55f2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_1b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/aw;->a([BI)V

    if-eqz p2, :cond_42

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aw;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QISRAudioWrite volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/thirdparty/ax;->a([BI)V

    :cond_42
    return-void
.end method

.method public declared-synchronized a(Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecognize, current status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " usercancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_stop"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->n()V

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/ax;->e:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->a(I)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_38

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a_()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/be;->a_()V

    return-void
.end method

.method public b()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method protected b(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ax;->a([BZ)V

    goto :goto_b
.end method

.method public b(Z)V
    .registers 5

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/RecognizerListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_18
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->n()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->c:Lcom/iflytek/cloud/thirdparty/be$b;

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->e:Z

    :cond_26
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    return-void
.end method

.method protected c()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "cloud_grammar"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->g:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "filter_audio_time"

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "sample_rate"

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->s:I

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "speech_timeout"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->r:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->r:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "notify_record_data"

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->q:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/be;->c()V

    return-void
.end method

.method c(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    packed-switch v1, :pswitch_data_38

    :goto_c
    :pswitch_c
    return-void

    :pswitch_d
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->d:Z

    if-nez v1, :cond_1a

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->d:Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "app_frs"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/ax;->a(Z[B)V

    goto :goto_c

    :pswitch_1f
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->d:Z

    if-nez v1, :cond_2c

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->d:Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "app_frs"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    :cond_2c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "app_lrs"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/iflytek/cloud/thirdparty/ax;->a(Z[B)V

    goto :goto_c

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1f
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aw;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method errCb([CI[B)V
    .registers 5

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->onError(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aw;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->z:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->z:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v2

    if-eqz v2, :cond_46

    const-string v0, "local_grammar"

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "iat"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_37

    :goto_1d
    if-eqz v2, :cond_33

    :try_start_1f
    const-string v1, "sch"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "asr_sch"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_31
    const-string v0, "iat_sch"
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_33} :catch_44

    :cond_33
    :goto_33
    return-object v0

    :cond_34
    :try_start_34
    const-string v0, "asr"
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_36} :catch_37

    goto :goto_1d

    :catch_37
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3b
    const-string v2, "DC get sub type exception:"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_33

    :catch_44
    move-exception v1

    goto :goto_3b

    :cond_46
    move-object v0, v1

    goto :goto_d
.end method

.method protected h()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "net_check"

    invoke-virtual {v1, v2, v7}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "cloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->a(Landroid/content/Context;)V

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    if-eq v1, v5, :cond_7b

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string v1, "start  record"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_b9

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "asr_source_path"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/cloud/record/a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->t()I

    move-result v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/iflytek/cloud/record/a;-><init>(IIILjava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    :cond_62
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "rec_open"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->r:I

    if-eq v5, v0, :cond_7b

    const/16 v0, 0x9

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->r:I

    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/iflytek/cloud/thirdparty/ax;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :cond_7b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_88

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    if-le v0, v5, :cond_88

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onBeginOfSpeech()V

    :cond_88
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_ssb"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v7, v0, v6, v6}, Lcom/iflytek/cloud/thirdparty/ax;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    return-void

    :cond_95
    const-string v1, "mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    const-string v1, "mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_a5
    :try_start_a5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->a(Landroid/content/Context;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_ab

    goto :goto_2b

    :catch_ab
    move-exception v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "engine_type"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    :cond_b9
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "bluetooth"

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->A:Z

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->A:Z

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->A:Z

    if-eqz v1, :cond_ce

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->C()V

    :cond_ce
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->t()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->f:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2786

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method protected i()V
    .registers 6

    const/4 v4, 0x0

    const-string v0, "SDKSessionBegin"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/thirdparty/aw;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)I

    move-result v0

    if-nez v0, :cond_44

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    iget-object v1, v1, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/aw;->a:[C

    const-string v1, "rsltCb"

    const-string v2, "stusCb"

    const-string v3, "errCb"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/iflytek/msc/MSC;->QISRRegisterNotify([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->c:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "asr_net_perf"

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x7

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/ax;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->B:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->B:I

    const/16 v2, 0x28

    if-le v1, v2, :cond_56

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_56
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v0

    if-eqz v0, :cond_43

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/ax;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    goto :goto_43
.end method

.method protected j()V
    .registers 3

    const-string v0, "recording stop"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->n()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aw;->a()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->p()V

    return-void
.end method

.method public k()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->h:Lcom/iflytek/cloud/thirdparty/aw;

    const-string v1, "netperf"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/aw;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v2, 0x2711

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_1b
    const/4 v0, 0x7

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/iflytek/cloud/thirdparty/ax;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :cond_23
    return-void
.end method

.method public l()V
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->c:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    const-string v0, "Msc recognize vadEndCall"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onEndOfSpeech()V

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->a(Z)Z

    :cond_1a
    return-void
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->g:Z

    return v0
.end method

.method protected n()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "record_force_stop"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "rec_close"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v1, 0x55f3

    invoke-interface {v0, v1, v3, v3, v4}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_29
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->A:Z

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->D()V

    :cond_30
    return-void
.end method

.method public o()Lcom/iflytek/cloud/thirdparty/bg;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    return-object v0
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ax;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .registers 9

    const/4 v4, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    if-lez p3, :cond_9

    array-length v0, p1

    if-ge v0, p3, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-lez p3, :cond_9

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->v()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->b:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->b:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "rec_start"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    :cond_20
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    if-lez v0, :cond_48

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    if-lt v0, p3, :cond_2e

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    goto :goto_9

    :cond_2e
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    sub-int v0, p3, v0

    new-array v0, v0, [B

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    sub-int v2, p3, v2

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v0}, Lcom/iflytek/cloud/thirdparty/ax;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->d(Landroid/os/Message;)V

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/ax;->p:I

    goto :goto_9

    :cond_48
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v0}, Lcom/iflytek/cloud/thirdparty/ax;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->d(Landroid/os/Message;)V

    goto :goto_9
.end method

.method public onRecordReleased()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    instance-of v0, v0, Lcom/iflytek/cloud/record/a;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ax;->a(Z)Z

    :cond_e
    return-void
.end method

.method public onRecordStarted(Z)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ax;->o:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "rec_ready"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    return-void
.end method

.method rsltCb([C[BII)V
    .registers 10

    const/4 v4, 0x4

    const/4 v3, 0x0

    if-eqz p2, :cond_3b

    const-string v0, "MscRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rsltCb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    invoke-virtual {p0, v4, p4, v3, p2}, Lcom/iflytek/cloud/thirdparty/ax;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/ax;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/ax;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :goto_3a
    return-void

    :cond_3b
    const-string v0, "MscRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rsltCb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result:null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_5a
    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/ax;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V

    goto :goto_3a
.end method

.method stusCb([CIII[B)V
    .registers 9

    if-nez p2, :cond_2a

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2a

    const-string v0, "MscRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stusCb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ax;->l()V

    :cond_2a
    return-void
.end method
