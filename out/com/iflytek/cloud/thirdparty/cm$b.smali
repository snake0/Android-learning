.class final Lcom/iflytek/cloud/thirdparty/cm$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/LexiconListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cm;

.field private b:Lcom/iflytek/cloud/LexiconListener;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/cm;Lcom/iflytek/cloud/LexiconListener;)V
    .registers 5

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->a:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->b:Lcom/iflytek/cloud/LexiconListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cm$b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/cm$b$1;-><init>(Lcom/iflytek/cloud/thirdparty/cm$b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->b:Lcom/iflytek/cloud/LexiconListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/cm$b;)Lcom/iflytek/cloud/LexiconListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->b:Lcom/iflytek/cloud/LexiconListener;

    return-object v0
.end method


# virtual methods
.method public onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cm$b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e
.end method
