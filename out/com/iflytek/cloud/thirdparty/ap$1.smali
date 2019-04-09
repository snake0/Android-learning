.class Lcom/iflytek/cloud/thirdparty/ap$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ap;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/ap;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/thirdparty/ar;->a(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "audioData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "dataLen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "param1"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "param2"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/ar;->a([BIII)V

    goto :goto_5

    :pswitch_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/aq;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/thirdparty/ar;->a(Lcom/iflytek/cloud/thirdparty/aq;)V

    goto :goto_5

    :pswitch_60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "param1Array"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "param2Array"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "param3Array"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ap$1;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/ar;->a(I[B[B[B)V

    goto/16 :goto_5

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1c
        :pswitch_4a
        :pswitch_60
    .end packed-switch
.end method
