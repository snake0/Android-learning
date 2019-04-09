.class Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 3

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->n()I

    move-result v0

    if-eq v0, p1, :cond_e

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Z)Z

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->c(I)I

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->a(Z)Z

    goto :goto_d
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The order state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d$c;->a(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The order state is undefined"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    return-void

    :pswitch_30
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->l()V

    goto :goto_2f

    :pswitch_34
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/d;->m()V

    goto :goto_2f

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_30
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_30
    .end packed-switch
.end method
