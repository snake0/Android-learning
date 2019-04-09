.class Lcom/iflytek/cloud/thirdparty/cj$a$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cj$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/cj$a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cj$a;->a(Lcom/iflytek/cloud/thirdparty/cj$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_72

    :cond_f
    :goto_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_9

    :pswitch_13
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cj$a;->a(Lcom/iflytek/cloud/thirdparty/cj$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/IdentityListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_f

    :pswitch_21
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cj$a;->a(Lcom/iflytek/cloud/thirdparty/cj$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/IdentityResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_57

    move v1, v2

    :goto_30
    invoke-interface {v3, v0, v1}, Lcom/iflytek/cloud/IdentityListener;->onResult(Lcom/iflytek/cloud/IdentityResult;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cj$a;->b(Lcom/iflytek/cloud/thirdparty/cj$a;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/cj$a;->a:Lcom/iflytek/cloud/thirdparty/cj;

    const-string v1, "ui_frs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cj;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cj$a;->a(Lcom/iflytek/cloud/thirdparty/cj$a;Z)Z

    :cond_49
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/cj$a;->a:Lcom/iflytek/cloud/thirdparty/cj;

    const-string v1, "ui_lrs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cj;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_57
    const/4 v1, 0x0

    goto :goto_30

    :pswitch_59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cj$a$1;->a:Lcom/iflytek/cloud/thirdparty/cj$a;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cj$a;->a(Lcom/iflytek/cloud/thirdparty/cj$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_f

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_21
        :pswitch_f
        :pswitch_59
    .end packed-switch
.end method
