.class Lcom/iflytek/cloud/SpeechRecognizer$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/SpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/SpeechRecognizer;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/SpeechRecognizer$1;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer$1;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->a(Lcom/iflytek/cloud/SpeechRecognizer;)Lcom/iflytek/cloud/InitListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer$1;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->a(Lcom/iflytek/cloud/SpeechRecognizer;)Lcom/iflytek/cloud/InitListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/InitListener;->onInit(I)V

    goto :goto_8
.end method
