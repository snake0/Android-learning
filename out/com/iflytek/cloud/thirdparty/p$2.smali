.class Lcom/iflytek/cloud/thirdparty/p$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/p;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/p;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/p$2;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p$2;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/p;->a(Lcom/iflytek/cloud/thirdparty/p;)Lcom/iflytek/aiui/AIUIListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/aiui/AIUIEvent;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/p$2;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/p;->a(Lcom/iflytek/cloud/thirdparty/p;)Lcom/iflytek/aiui/AIUIListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/aiui/AIUIListener;->onEvent(Lcom/iflytek/aiui/AIUIEvent;)V

    goto :goto_5

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
