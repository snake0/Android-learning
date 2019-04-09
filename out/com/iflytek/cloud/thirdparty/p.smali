.class public Lcom/iflytek/cloud/thirdparty/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/af;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/content/Context;

.field private e:Lcom/iflytek/aiui/AIUIListener;

.field private f:Lcom/iflytek/aiui/AIUIListener;

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIUI:AudioThrowThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->c:Landroid/os/HandlerThread;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/p$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/p$1;-><init>(Lcom/iflytek/cloud/thirdparty/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/p;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/p;)Lcom/iflytek/aiui/AIUIListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->f:Lcom/iflytek/aiui/AIUIListener;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/p;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/p;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/iflytek/aiui/AIUIListener;)I
    .registers 7

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/p;->f:Lcom/iflytek/aiui/AIUIListener;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/p$2;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/p;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/p$2;-><init>(Lcom/iflytek/cloud/thirdparty/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->b:Landroid/os/Handler;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/p$3;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/p$3;-><init>(Lcom/iflytek/cloud/thirdparty/p;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->e:Lcom/iflytek/aiui/AIUIListener;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIUI:SchedulerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/af;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/p;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/p;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/p;->e:Lcom/iflytek/aiui/AIUIListener;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/iflytek/cloud/thirdparty/af;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/iflytek/aiui/AIUIListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->a:Lcom/iflytek/cloud/thirdparty/af;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->a:Lcom/iflytek/cloud/thirdparty/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Z)I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->a:Lcom/iflytek/cloud/thirdparty/af;

    :cond_15
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public a(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/p;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/p;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/af;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method
