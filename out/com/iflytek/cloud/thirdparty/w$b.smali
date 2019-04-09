.class Lcom/iflytek/cloud/thirdparty/w$b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/w;

.field private b:Lcom/iflytek/cloud/thirdparty/w$a;

.field private c:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/w;)V
    .registers 4

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/w$b;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIUI:CAE-WriteRawAudioThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->c:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->b:Lcom/iflytek/cloud/thirdparty/w$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->b:Lcom/iflytek/cloud/thirdparty/w$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w$a;->a()V

    :cond_e
    return-void
.end method

.method public a([B)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->b:Lcom/iflytek/cloud/thirdparty/w$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->b:Lcom/iflytek/cloud/thirdparty/w$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/w$a;->a([B)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/w$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w$b;->a:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w$b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/w$a;-><init>(Lcom/iflytek/cloud/thirdparty/w;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$b;->b:Lcom/iflytek/cloud/thirdparty/w$a;

    return-void
.end method
