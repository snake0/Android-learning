.class Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;
.super Lcom/baidu/mapsdkplatform/comapi/synchronization/b/e;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapsdkplatform/comapi/synchronization/b/c$a;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const v1, 0x186a1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->sendMessage(Landroid/os/Message;)Z

    :cond_22
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const v1, 0x186a0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->sendMessage(Landroid/os/Message;)Z

    :cond_22
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;I)I

    return-void
.end method
