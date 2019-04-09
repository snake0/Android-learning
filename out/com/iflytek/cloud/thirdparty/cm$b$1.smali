.class Lcom/iflytek/cloud/thirdparty/cm$b$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cm$b;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/cm$b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cm$b$1;->a:Lcom/iflytek/cloud/thirdparty/cm$b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b$1;->a:Lcom/iflytek/cloud/thirdparty/cm$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$b;->a(Lcom/iflytek/cloud/thirdparty/cm$b;)Lcom/iflytek/cloud/LexiconListener;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    :goto_f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_9

    :pswitch_13
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b$1;->a:Lcom/iflytek/cloud/thirdparty/cm$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$b;->a(Lcom/iflytek/cloud/thirdparty/cm$b;)Lcom/iflytek/cloud/LexiconListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/LexiconListener;->onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_f

    :pswitch_21
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$b$1;->a:Lcom/iflytek/cloud/thirdparty/cm$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$b;->a(Lcom/iflytek/cloud/thirdparty/cm$b;)Lcom/iflytek/cloud/LexiconListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/iflytek/cloud/LexiconListener;->onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_f

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_13
        :pswitch_21
    .end packed-switch
.end method
