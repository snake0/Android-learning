.class final Lcom/iflytek/cloud/thirdparty/cj$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/IdentityListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cj;

.field private b:Lcom/iflytek/cloud/IdentityListener;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/cj;Lcom/iflytek/cloud/IdentityListener;)V
    .registers 5

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->a:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->b:Lcom/iflytek/cloud/IdentityListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->c:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cj$a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/cj$a$1;-><init>(Lcom/iflytek/cloud/thirdparty/cj$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->b:Lcom/iflytek/cloud/IdentityListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/cj$a;)Lcom/iflytek/cloud/IdentityListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->b:Lcom/iflytek/cloud/IdentityListener;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/cj$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/cj$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->c:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->a:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cj;->a(Lcom/iflytek/cloud/thirdparty/cj;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/bd;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bd;->a()Lcom/iflytek/cloud/thirdparty/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bs;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->a:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cj;->b(Lcom/iflytek/cloud/thirdparty/cj;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->a:Lcom/iflytek/cloud/thirdparty/cj;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cj;->c(Lcom/iflytek/cloud/thirdparty/cj;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bw;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cj$a;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 9

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->d:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/IdentityResult;Z)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cj$a;->a()V

    :cond_7
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->d:Landroid/os/Handler;

    const/4 v3, 0x4

    if-ne p2, v0, :cond_16

    :goto_c
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cj$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_16
    move v0, v1

    goto :goto_c
.end method
