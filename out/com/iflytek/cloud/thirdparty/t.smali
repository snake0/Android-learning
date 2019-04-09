.class public Lcom/iflytek/cloud/thirdparty/t;
.super Lcom/iflytek/cloud/thirdparty/r;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/iflytek/cloud/thirdparty/v;

.field private g:Lcom/iflytek/cloud/thirdparty/j;

.field private h:Lcom/iflytek/cloud/thirdparty/k;

.field private i:Lcom/iflytek/cloud/thirdparty/w;

.field private j:Landroid/os/HandlerThread;

.field private k:Lcom/iflytek/cloud/thirdparty/x;

.field private l:Z

.field private m:Lcom/iflytek/cloud/thirdparty/t$a;

.field private n:Lcom/iflytek/cloud/thirdparty/ab;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/r;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V

    const-string v0, "sdk"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->p:Ljava/lang/String;

    const-string v0, "alsa"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    const-string v0, "cae"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    const-string v0, "cloud"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/t;->l:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/t$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/t$1;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->h:Lcom/iflytek/cloud/thirdparty/k;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIUI:SpeechModuleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->j:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/t$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/t$a;-><init>(Lcom/iflytek/cloud/thirdparty/t;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/j;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method private a(I[B[B)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/w;->a(I[B[B)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/t;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/t;I[B[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/t;->a(I[B[B)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/t;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->q()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/v;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/x;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/ab;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/cloud/thirdparty/t;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/t;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->m()V

    return-void
.end method

.method static synthetic j(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->p()V

    return-void
.end method

.method static synthetic k(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->o()V

    return-void
.end method

.method static synthetic l(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->n()V

    return-void
.end method

.method private m()V
    .registers 3

    const-string v0, "user"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->d()V

    :cond_f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->b()V

    :cond_20
    const-string v0, "cae"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->b()V

    :cond_37
    new-instance v0, Lcom/iflytek/cloud/thirdparty/w;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/w;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/w;->a(Lcom/iflytek/cloud/thirdparty/ab;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()I

    move-result v0

    if-eqz v0, :cond_52

    const-string v1, "start CaeUnit error."

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/t;->a(ILjava/lang/String;)V

    :cond_52
    :goto_52
    const-string v0, "cloud"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    if-nez v0, :cond_72

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/v;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/v;)V

    :cond_72
    :goto_72
    return-void

    :cond_73
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->a()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->b()V

    goto :goto_52

    :cond_81
    const-string v0, "ivw"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "off"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->h()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->b()V

    goto :goto_52

    :cond_a8
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->q()V

    goto :goto_72
.end method

.method static synthetic m(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->r()V

    return-void
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v;->c()I

    :cond_9
    return-void
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->c()I

    :cond_9
    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->c()I

    :cond_9
    return-void
.end method

.method private q()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v;->d()V

    :cond_9
    return-void
.end method

.method private r()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_9
    return-void
.end method

.method private s()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->d()V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/t;->o:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;IIII)V
    .registers 15

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/cloud/thirdparty/t;->a([BLjava/lang/String;IIII)V

    :cond_12
    return-void
.end method

.method public a([BLjava/lang/String;IIII)V
    .registers 13

    const-string v0, "cae"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/w;->a([BLjava/lang/String;III)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/ab;->a([BLjava/lang/String;III)V

    goto :goto_18
.end method

.method public b(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/16 v1, 0x9

    iget v2, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/t;->l:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/t;->j()V

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->f()V

    :cond_10
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->e()V

    :cond_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v;->f()V

    :cond_22
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2b
    return-void
.end method

.method public c(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()I
    .registers 5

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->f()I

    move-result v0

    :cond_b
    const-string v1, "SpeechModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public d(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->o:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public f()V
    .registers 4

    const-string v0, "iat"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v0, "speech"

    const-string v1, "audio_captor"

    const-string v2, "alsa"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    const-string v0, "speech"

    const-string v1, "data_source"

    const-string v2, "sdk"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->p:Ljava/lang/String;

    const-string v0, "speech"

    const-string v1, "wakeup_mode"

    const-string v2, "cae"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    const-string v0, "speech"

    const-string v1, "intent_engine_type"

    const-string v2, "cloud"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->e:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/aiui/Version;->isMobileVersion()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "system"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    const-string v0, "off"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    :cond_46
    return-void
.end method

.method public f(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->a()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->o:Ljava/lang/String;

    const-string v0, "system"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->d()V

    :cond_1a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->h()V

    :cond_23
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->s()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->r()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/t;->q()V

    return-void
.end method

.method public h()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/t;->f()V

    const-string v0, "alsa"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Lcom/iflytek/cloud/thirdparty/l;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->h:Lcom/iflytek/cloud/thirdparty/k;

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/thirdparty/l;-><init>(Lcom/iflytek/cloud/thirdparty/k;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    :cond_17
    :goto_17
    const-string v0, "sdk"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "alsa"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->c()I

    move-result v0

    :goto_31
    if-eqz v0, :cond_4f

    new-instance v1, Lcom/iflytek/cloud/thirdparty/n;

    const-string v2, "AlsaCaptor start error."

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/n;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3b
    const-string v0, "system"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/iflytek/cloud/thirdparty/m;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->h:Lcom/iflytek/cloud/thirdparty/k;

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/thirdparty/m;-><init>(Lcom/iflytek/cloud/thirdparty/k;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    goto :goto_17

    :cond_4f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-nez v0, :cond_80

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ab;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ab;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/x;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    const-string v0, "cloud"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/v;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    :cond_72
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/x;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->f:Lcom/iflytek/cloud/thirdparty/v;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/v;)V

    :cond_80
    const-string v0, "cae"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance v0, Lcom/iflytek/cloud/thirdparty/w;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/w;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/w;->a(Lcom/iflytek/cloud/thirdparty/ab;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()I

    move-result v0

    if-eqz v0, :cond_b2

    new-instance v1, Lcom/iflytek/cloud/thirdparty/n;

    const-string v2, "CaeUnit start error."

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/n;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_a8
    const-string v0, "ivw"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    :cond_b2
    :goto_b2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/t;->l:Z

    const-string v0, "SpeechModule"

    const-string v2, "SpeechModule started."

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_bd
    const-string v0, "off"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    goto :goto_b2

    :cond_c8
    move v0, v1

    goto/16 :goto_31
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->c()I

    move-result v0

    if-eqz v0, :cond_11

    const-string v1, "start audio captor error."

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/t;->a(ILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public j()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->d()V

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->i:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->d()V

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->d()V

    :cond_1b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->k:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/t;->l:Z

    const-string v0, "SpeechModule"

    const-string v1, "SpeechModule stopped."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->g:Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->d()V

    :cond_9
    return-void
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->m:Lcom/iflytek/cloud/thirdparty/t$a;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
