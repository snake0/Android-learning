.class Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Undefined message type"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void

    :pswitch_f
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parser response data is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_25
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    goto :goto_e

    :pswitch_35
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)V

    goto :goto_e

    nop

    :pswitch_data_3c
    .packed-switch 0x186a0
        :pswitch_f
        :pswitch_35
    .end packed-switch
.end method
