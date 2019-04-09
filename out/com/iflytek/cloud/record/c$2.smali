.class Lcom/iflytek/cloud/record/c$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/record/c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/record/c;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/record/c$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$a;)Lcom/iflytek/cloud/record/c$a;

    goto :goto_6

    :pswitch_22
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/record/c$a;->a()V

    goto :goto_6

    :pswitch_34
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/record/c$a;->b()V

    goto :goto_6

    :pswitch_46
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->r(Lcom/iflytek/cloud/record/c;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/iflytek/cloud/record/c$a;->a(III)V

    goto :goto_6

    :pswitch_62
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/record/c$a;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$2;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$a;)Lcom/iflytek/cloud/record/c$a;

    goto :goto_6

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_22
        :pswitch_34
        :pswitch_46
        :pswitch_62
    .end packed-switch
.end method
