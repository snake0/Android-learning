.class public Lcom/iflytek/cloud/thirdparty/ab;
.super Lcom/iflytek/cloud/thirdparty/u;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/iflytek/cloud/thirdparty/ak$a;

.field private g:Lcom/iflytek/cloud/thirdparty/v;

.field private h:Lcom/iflytek/cloud/thirdparty/aa;

.field private i:Lcom/iflytek/cloud/thirdparty/z;

.field private j:J

.field private k:Lcom/iflytek/cloud/thirdparty/aj;

.field private l:Lcom/iflytek/cloud/thirdparty/ce;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Lcom/iflytek/cloud/thirdparty/x;

.field private p:Z

.field private q:Landroid/os/HandlerThread;

.field private r:Lcom/iflytek/cloud/util/AudioDetector;

.field private s:Lcom/iflytek/cloud/thirdparty/ab$a;

.field private t:Lcom/iflytek/cloud/thirdparty/aj;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 6

    const-wide/16 v2, 0x0

    const-string v0, "VadUnit"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/u;-><init>(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/t;)V

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->u:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->y:Z

    const-string v0, "meta"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->d:Ljava/lang/String;

    const-string v0, "0.6"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->w:Ljava/lang/String;

    const-string v0, "5000"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->x:Ljava/lang/String;

    const-string v0, "1000"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->z:Ljava/lang/String;

    const-string v0, "intent"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->v:Ljava/lang/String;

    const-string v0, "cloud"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->m:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aa;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/aa;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->h:Lcom/iflytek/cloud/thirdparty/aa;

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->n:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->j:J

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aj;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/aj;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->k:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aj;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/aj;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->t:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIUI:VAD-DetectThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->q:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->q:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method private a(Z)I
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->a:Z

    if-eqz v1, :cond_d

    const-string v1, "VadUnit"

    const-string v2, "VadUnit is already started."

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ab;->i()V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    if-nez v1, :cond_1d

    const-string v0, "VadUnit"

    const-string v1, "VadUnit start failed, VadDetector is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_c

    :cond_1d
    if-eqz p1, :cond_26

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->n:J

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ab;->h()V

    :cond_26
    new-instance v1, Lcom/iflytek/cloud/thirdparty/ab$a;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->q:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ab;->y:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ab$a;-><init>(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Looper;Z)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    const/16 v1, 0x3e80

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->u:I

    if-ne v1, v2, :cond_66

    new-instance v1, Lcom/iflytek/cloud/thirdparty/z;

    const/16 v2, 0x500

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/thirdparty/z;-><init>(I)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    const-wide/16 v1, 0x140

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->j:J

    :cond_48
    :goto_48
    const-string v1, "VadUnit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VadUnit started, vad_engine="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ab;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->a:Z

    goto :goto_c

    :cond_66
    const/16 v1, 0x1f40

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->u:I

    if-ne v1, v2, :cond_48

    new-instance v1, Lcom/iflytek/cloud/thirdparty/z;

    const/16 v2, 0x280

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/thirdparty/z;-><init>(I)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    const-wide/16 v1, 0xa0

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->j:J

    goto :goto_48
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ab;J)J
    .registers 3

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/ab;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ab;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ab;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_22
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->t:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_32
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ab;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/ab;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ab;JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/ab;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->l:Lcom/iflytek/cloud/thirdparty/ce;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->l:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->l:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "data_encoding"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->l:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v1, "data_encoding"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ico;-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b(Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->a:Z

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->a:Z

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->n:J

    const-string v2, "force_eos"

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ab;->a(JLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->k:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->d()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->t:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->d()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$a;->b()V

    :cond_26
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->b()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ab$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_39
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-virtual {v0}, Lcom/iflytek/cloud/util/AudioDetector;->destroy()Z

    :cond_42
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/z;->a()V

    :cond_4b
    const-string v0, "VadUnit"

    const-string v1, "VadUnit stopped."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_54

    throw v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ab;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->y:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/ab;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->n:J

    return-wide v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/ab;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->j:J

    return-wide v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method private h()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->k:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->e()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->k:Lcom/iflytek/cloud/thirdparty/aj;

    const-string v1, "all"

    const-string v2, ".pcm"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->t:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->e()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->t:Lcom/iflytek/cloud/thirdparty/aj;

    const-string v1, "vad_pos"

    const-string v2, ".txt"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "log"

    const-string v1, "allpcm_copy_path"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/aiui/AIUISetting;->getSaveDataLog()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ak$a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/aj;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pcm"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5d
    return-void
.end method

.method static synthetic i(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method private i()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ab;->g()V

    const-string v0, "vad"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    :cond_11
    const-string v1, "speech"

    const-string v2, "intent_engine_type"

    const-string v3, "cloud"

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->e:Ljava/lang/String;

    const-string v1, "engine_type"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->d:Ljava/lang/String;

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "iat"

    const-string v2, "sample_rate"

    const/16 v3, 0x3e80

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->u:I

    const-string v1, "vad"

    const-string v2, "threshold"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ab;->w:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->w:Ljava/lang/String;

    const-string v1, "sample_rate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/ab;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "vad_engine"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "vad_bos"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->x:Ljava/lang/String;

    const-string v1, "vad_eos"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->z:Ljava/lang/String;

    const-string v1, "res_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string v1, "res_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a1
    :goto_a1
    const-string v2, "res_path"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "vad_res_path"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_ac
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/util/AudioDetector;->createDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->l:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ab;->j()V

    return-void

    :cond_c7
    const-string v4, "assets"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->assets:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a1
.end method

.method private j()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v1, "vad_bos"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v1, "vad_eos"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v1, "threshold"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->r:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v1, "vad_reduce_flow"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method static synthetic j(Lcom/iflytek/cloud/thirdparty/ab;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->p:Z

    return v0
.end method

.method static synthetic k(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/aj;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->k:Lcom/iflytek/cloud/thirdparty/aj;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/ak$a;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/v;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->g:Lcom/iflytek/cloud/thirdparty/v;

    return-object v0
.end method

.method static synthetic q(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/x;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->o:Lcom/iflytek/cloud/thirdparty/x;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/cloud/thirdparty/ab;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->a:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/thirdparty/v;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ab;->g:Lcom/iflytek/cloud/thirdparty/v;

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/x;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ab;->o:Lcom/iflytek/cloud/thirdparty/x;

    return-void
.end method

.method public a([BLjava/lang/String;III)V
    .registers 11

    const/4 v4, 0x1

    if-nez p1, :cond_b

    const-string v0, "VadUnit"

    const-string v1, "audio is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->a:Z

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    if-eqz v0, :cond_c5

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/thirdparty/ab;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->p:Z

    const-string v0, "VadUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsIcoEncode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->p:Z

    if-nez v0, :cond_3f

    array-length v0, p1

    if-eqz v0, :cond_3f

    array-length v0, p1

    const/16 v1, 0x500

    if-ne v0, v1, :cond_63

    :cond_3f
    new-instance v0, Lcom/iflytek/cloud/thirdparty/y;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/y;-><init>([BLjava/lang/String;)V

    iput p3, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    invoke-static {v1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x4

    if-ne v0, p3, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/z;->a()V

    const-string v0, "VadUnit"

    const-string v1, "AudioFrameBuffer clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_63
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->h:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/aa;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a2

    const-string v0, "VadUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio before start, length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->h:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/aa;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->h:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aa;->d()Lcom/iflytek/cloud/thirdparty/y;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/z;->a([BI)V

    :cond_a2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/z;->a([BI)V

    :goto_ac
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->i:Lcom/iflytek/cloud/thirdparty/z;

    invoke-virtual {v0, v4}, Lcom/iflytek/cloud/thirdparty/z;->a(I)[B

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/iflytek/cloud/thirdparty/y;

    invoke-direct {v1, v0, p2}, Lcom/iflytek/cloud/thirdparty/y;-><init>([BLjava/lang/String;)V

    iput p3, v1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    invoke-static {v0, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_ac

    :cond_c5
    const-string v0, "VadUnit"

    const-string v1, "write before start."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/y;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/y;-><init>([BLjava/lang/String;)V

    iput p3, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab;->h:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/aa;->a(Lcom/iflytek/cloud/thirdparty/y;)V

    goto/16 :goto_a
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x1

    const-string v1, "vad"

    const-string v2, "vad_enable"

    invoke-static {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ab;->y:Z

    if-eq v2, v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab;->b(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab;->a(Z)I

    const-string v0, "VadUnit"

    const-string v1, "VadUnit reset."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab;->a(Z)I

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab;->b(Z)V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->s:Lcom/iflytek/cloud/thirdparty/ab$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->a()V

    :cond_9
    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab;->b(Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_d
    return-void
.end method

.method public g()V
    .registers 4

    const-string v0, "vad"

    const-string v1, "vad_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->y:Z

    const-string v0, "speech"

    const-string v1, "work_mode"

    const-string v2, "intent"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->v:Ljava/lang/String;

    const-string v0, "speech"

    const-string v1, "intent_engine_type"

    const-string v2, "cloud"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab;->e:Ljava/lang/String;

    return-void
.end method
