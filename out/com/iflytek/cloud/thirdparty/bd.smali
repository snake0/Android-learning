.class public Lcom/iflytek/cloud/thirdparty/bd;
.super Lcom/iflytek/cloud/thirdparty/be;


# static fields
.field public static f:I

.field public static g:I

.field private static final k:Ljava/lang/String;


# instance fields
.field protected volatile a:Lcom/iflytek/cloud/IdentityListener;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/iflytek/cloud/thirdparty/bc;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/iflytek/cloud/thirdparty/bg;

.field j:J

.field private l:Z

.field private m:Lcom/iflytek/cloud/thirdparty/bs;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/cloud/thirdparty/ce;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/iflytek/cloud/thirdparty/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bd;->k:Ljava/lang/String;

    sput v1, Lcom/iflytek/cloud/thirdparty/bd;->f:I

    sput v1, Lcom/iflytek/cloud/thirdparty/bd;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/be;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->l:Z

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->b:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->c:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->d:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bc;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bc;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->h:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bg;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bg;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->n:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->o:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->q:Ljava/lang/String;

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->z:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->j:J

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bs;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bs;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->m:Lcom/iflytek/cloud/thirdparty/bs;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/bd;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    return-void
.end method

.method private a(Z[B)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->v:J

    if-eqz p2, :cond_6c

    array-length v0, p2

    if-lez v0, :cond_6c

    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "\"return\""

    const-string v2, "\"ret\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->v()Z

    move-result v1

    if-eqz v1, :cond_4c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const/16 v3, 0x4e21

    invoke-interface {v2, v3, v4, v4, v1}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    new-instance v1, Lcom/iflytek/cloud/IdentityResult;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/IdentityResult;-><init>(Ljava/lang/String;)V

    const-string v0, "GetNotifyResult"

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    invoke-interface {v0, v1, p1}, Lcom/iflytek/cloud/IdentityListener;->onResult(Lcom/iflytek/cloud/IdentityResult;Z)V

    :cond_4c
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

    if-eqz p1, :cond_6b

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/bd;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_6b
    return-void

    :cond_6c
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2786

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method private e(Landroid/os/Message;)V
    .registers 5

    const-string v0, "recording stop"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->p:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/bc;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->p()V

    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/cloud/thirdparty/bs;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->m:Lcom/iflytek/cloud/thirdparty/bs;

    return-object v0
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
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->b()V

    goto :goto_8

    :pswitch_d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->h()V

    goto :goto_8

    :pswitch_11
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->j()V

    goto :goto_8

    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/bd;->b(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_19
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/bd;->e(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/bd;->c(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_21
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->i()V

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

.method public declared-synchronized a(Lcom/iflytek/cloud/IdentityListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const-string v0, "startWorking called"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->a_()V
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

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bc;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/bd;->f:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bc;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/bd;->g:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->f()Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->h:Ljava/lang/String;

    if-nez v0, :cond_38

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "asr_nomatch_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_38
    if-eqz p1, :cond_8a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_ret"

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;JZ)V

    :goto_46
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "rec_ustop"

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->d:Z

    if-eqz v0, :cond_94

    const-string v0, "1"

    :goto_50
    invoke-virtual {v1, v2, v0, v4}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    const-string v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/bg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "SessionEndBegin"

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->u:Z

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bc;->a(Ljava/lang/String;)V

    :goto_70
    const-string v0, "SessionEndEnd"

    invoke-static {v0, v5}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->u:Z

    if-eqz v0, :cond_be

    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const/16 v1, 0x271b

    invoke-interface {v0, v1, v4, v4, v5}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_87
    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    return-void

    :cond_8a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_ret"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;JZ)V

    goto :goto_46

    :cond_94
    const-string v0, "0"

    goto :goto_50

    :cond_97
    if-eqz p1, :cond_b6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

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

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bc;->a(Ljava/lang/String;)V

    goto :goto_70

    :cond_b6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bc;->a(Ljava/lang/String;)V

    goto :goto_70

    :cond_be
    if-eqz p1, :cond_80

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/IdentityListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_80
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BII)V
    .registers 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    invoke-virtual {v0, p2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "sst"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sst"

    invoke-virtual {v0, v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "mver"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ssub"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vad_enable"

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->l:Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->o:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->v()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->b:Z

    if-nez v0, :cond_5b

    iput-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/bd;->b:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "rec_start"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    :cond_5b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ssub"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p3, :cond_6d

    new-array v0, p5, [B

    invoke-static {p3, p4, v0, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6d
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/bd;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bd;->d(Landroid/os/Message;)V

    :cond_7a
    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;[BZZ)V
    .registers 8

    if-nez p2, :cond_2a

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/iflytek/cloud/thirdparty/bc;->a(Ljava/lang/StringBuffer;[BIZ)V

    if-eqz p4, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bc;->a()I

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

    invoke-virtual {p0, p2, v0}, Lcom/iflytek/cloud/thirdparty/bd;->a([BI)V

    :cond_29
    return-void

    :cond_2a
    array-length v0, p2

    goto :goto_3
.end method

.method public a([BI)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->v()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const/16 v1, 0x271c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_13
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecognize, current status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " usercancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_stop"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/iflytek/cloud/thirdparty/bd;->d:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/bd;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bd;->d(Landroid/os/Message;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_39

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a_()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/be;->a_()V

    return-void
.end method

.method protected b()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/iflytek/cloud/thirdparty/bd;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    const-string v2, "ssub"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/thirdparty/ce;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bd;->o:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuffer;

    const-string v4, "mfv_data_path"

    invoke-virtual {v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    if-eqz v1, :cond_3b

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bd;->m:Lcom/iflytek/cloud/thirdparty/bs;

    invoke-virtual {v4, v2, v1}, Lcom/iflytek/cloud/thirdparty/bs;->a(Ljava/lang/String;[B)V

    :cond_3b
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_49

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_49
    const-string v4, "ivp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    iget-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/bd;->l:Z

    if-eqz v4, :cond_6c

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v3, v1, v4, v6}, Lcom/iflytek/cloud/thirdparty/bd;->a(Ljava/lang/StringBuffer;[BZZ)V

    :goto_5c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->p:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    return-void

    :cond_6c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/iflytek/cloud/thirdparty/bd;->a(Ljava/lang/StringBuffer;[BZZ)V

    goto :goto_5c
.end method

.method public b(Z)V
    .registers 5

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->v()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v0, :cond_1d

    const-string v0, "cancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/IdentityListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->c:Lcom/iflytek/cloud/thirdparty/be$b;

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->d:Z

    :cond_28
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    return-void
.end method

.method protected c()V
    .registers 4

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "speech_timeout"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->r:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->r:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->r:I

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
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->c:Z

    if-nez v1, :cond_1a

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/bd;->c:Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "app_frs"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/bd;->a(Z[B)V

    goto :goto_c

    :pswitch_1f
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->c:Z

    if-nez v1, :cond_2c

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/bd;->c:Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "app_frs"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    :cond_2c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v2, "app_lrs"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/iflytek/cloud/thirdparty/bd;->a(Z[B)V

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

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bc;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method errCb([CI[B)V
    .registers 8

    const/4 v3, 0x0

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bd;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientSessionID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const/16 v2, 0x4e21

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bd;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->q:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->q:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "mfv"

    return-object v0
.end method

.method protected h()V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "net_check"

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->a(Landroid/content/Context;)V

    :cond_14
    const-string v0, "SDKSessionBegin"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    const-string v1, "app_ssb"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->t:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/thirdparty/bc;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)I

    move-result v0

    if-nez v0, :cond_5b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    iget-object v1, v1, Lcom/iflytek/cloud/thirdparty/bc;->a:[C

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->v()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/bc;->a:[C

    const-string v1, "rsltCb"

    const-string v2, "stusCb"

    const-string v3, "errCb"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/iflytek/msc/MSC;->QMFVRegisterNotify([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->c:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bd;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "asr_net_perf"

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x7

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/bd;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->z:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->z:I

    const/16 v2, 0x28

    if-le v1, v2, :cond_6d

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_6d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->v()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v3, v0, v4, v4}, Lcom/iflytek/cloud/thirdparty/bd;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    goto :goto_5a
.end method

.method public i()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->v()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->e:Lcom/iflytek/cloud/thirdparty/bc;

    const-string v1, "netperf"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bc;->c(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const/16 v2, 0x2711

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_1b
    const/4 v0, 0x7

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/iflytek/cloud/thirdparty/bd;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :cond_23
    return-void
.end method

.method public j()V
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->c:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->w()Lcom/iflytek/cloud/thirdparty/be$b;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    const-string v0, "mfv msc vadEndCall"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const/16 v1, 0x271d

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_1a
    const-string v0, "ivp"

    invoke-virtual {p0, v0, v3}, Lcom/iflytek/cloud/thirdparty/bd;->a(Ljava/lang/String;Z)Z

    :cond_1f
    return-void
.end method

.method public k()Lcom/iflytek/cloud/thirdparty/bg;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->i:Lcom/iflytek/cloud/thirdparty/bg;

    return-object v0
.end method

.method rsltCb([C[BII)V
    .registers 10

    const/4 v4, 0x4

    const/4 v3, 0x0

    if-eqz p2, :cond_3b

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bd;->k:Ljava/lang/String;

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
    invoke-virtual {p0, v4, p4, v3, p2}, Lcom/iflytek/cloud/thirdparty/bd;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/bd;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/bd;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :goto_3a
    return-void

    :cond_3b
    sget-object v0, Lcom/iflytek/cloud/thirdparty/bd;->k:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/bd;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/be$a;ZI)V

    goto :goto_3a
.end method

.method stusCb([CII[BI)V
    .registers 10

    const/4 v3, 0x1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bd;->k:Ljava/lang/String;

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

    if-nez p2, :cond_2b

    const/4 v0, 0x3

    if-ne v0, p3, :cond_2b

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->j()V

    :cond_2b
    if-ne v3, p2, :cond_45

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bd;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "scenes"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_46

    :cond_45
    :goto_45
    return-void

    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "sub"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sret"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ret"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bd;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "sst"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sst"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v0, :cond_45

    new-instance v0, Lcom/iflytek/cloud/IdentityResult;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/IdentityResult;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bd;->a:Lcom/iflytek/cloud/IdentityListener;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/iflytek/cloud/IdentityListener;->onResult(Lcom/iflytek/cloud/IdentityResult;Z)V
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_87} :catch_88
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_87} :catch_8d

    goto :goto_45

    :catch_88
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_45

    :catch_8d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_45
.end method
