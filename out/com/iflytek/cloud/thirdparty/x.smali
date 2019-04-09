.class public Lcom/iflytek/cloud/thirdparty/x;
.super Lcom/iflytek/cloud/thirdparty/u;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/ah;

.field private e:Lcom/iflytek/cloud/thirdparty/aj;

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/cloud/LexiconListener;

.field private h:Lcom/iflytek/cloud/thirdparty/ae;

.field private i:Lcom/iflytek/cloud/thirdparty/x$a;

.field private j:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 4

    const-string v0, "IatUnit"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/u;-><init>(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/t;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->f:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/x$1;-><init>(Lcom/iflytek/cloud/thirdparty/x;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->g:Lcom/iflytek/cloud/LexiconListener;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/x;->f()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aj;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/aj;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->e:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIUI:IAT-WriteAudioThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ae;->a()Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->h:Lcom/iflytek/cloud/thirdparty/ae;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/x;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/x;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/iflytek/cloud/thirdparty/n;)V
    .registers 10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v6

    if-eqz p1, :cond_22

    if-eqz v6, :cond_22

    const/4 v7, 0x7

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v7, v0}, Lcom/iflytek/cloud/thirdparty/af;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/iflytek/cloud/thirdparty/af;->sendMessage(Landroid/os/Message;)Z

    :cond_22
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/x;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/x;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/x;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/x;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/x;Lcom/iflytek/cloud/thirdparty/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/n;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/aj;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->e:Lcom/iflytek/cloud/thirdparty/aj;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ah;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->d:Lcom/iflytek/cloud/thirdparty/ah;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/x;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ae;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->h:Lcom/iflytek/cloud/thirdparty/ae;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Lcom/iflytek/cloud/thirdparty/x$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Lcom/iflytek/cloud/thirdparty/x$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/thirdparty/x$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v2

    const-string v3, "server_url"

    const-string v4, "http://open.xf-yun.com/index.htm"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "engine_type"

    const-string v4, "cloud"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "text_encoding"

    const-string v4, "utf-8"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "ent"

    const-string v4, "aiui-smsfar"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/x;->g:Lcom/iflytek/cloud/LexiconListener;

    invoke-virtual {v2, v1, v0, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->updateLexicon(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0x4e2c

    const-string v1, "Invalid upload lexicon json!"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/x;->a(ILjava/lang/String;)V

    goto :goto_3d
.end method

.method public c()I
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Z

    if-eqz v0, :cond_d

    const-string v0, "IatUnit"

    const-string v1, "IatUnit is already started."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return v2

    :cond_d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->c()Lcom/iflytek/cloud/thirdparty/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->d:Lcom/iflytek/cloud/thirdparty/ah;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/x$a;-><init>(Lcom/iflytek/cloud/thirdparty/x;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Lcom/iflytek/cloud/thirdparty/x$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Z

    const-string v0, "IatUnit"

    const-string v1, "IatUnit started."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public d()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/iflytek/cloud/thirdparty/y;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/y;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x4

    iput v1, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    const-string v1, "stream_id"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/y;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Lcom/iflytek/cloud/thirdparty/x$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Z

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_28

    const-string v0, "IatUnit"

    const-string v1, "IatUnit stopped."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public e()V
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_c
    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method
