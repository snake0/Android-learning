.class Lcom/iflytek/cloud/thirdparty/t$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/t;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/t;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_138

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->h(Lcom/iflytek/cloud/thirdparty/t;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->f()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->i(Lcom/iflytek/cloud/thirdparty/t;)V

    goto :goto_5

    :pswitch_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->j(Lcom/iflytek/cloud/thirdparty/t;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->k(Lcom/iflytek/cloud/thirdparty/t;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->l(Lcom/iflytek/cloud/thirdparty/t;)V

    goto :goto_5

    :pswitch_29
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->m(Lcom/iflytek/cloud/thirdparty/t;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->c(Lcom/iflytek/cloud/thirdparty/t;)V

    goto :goto_5

    :pswitch_34
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/w;->a(I)V

    goto :goto_5

    :pswitch_48
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->i()V

    goto :goto_5

    :pswitch_5a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->j()V

    goto :goto_5

    :pswitch_6c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->e(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/v;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/t;->e(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/v;->a(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_82
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->f(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/t;->f(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/x;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_99
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->e(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/v;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/t;->e(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/v;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_b0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/w;->b(I)V

    goto/16 :goto_5

    :pswitch_c5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->k()V

    goto/16 :goto_5

    :pswitch_d8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    :try_start_de
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dev_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    const/4 v3, 0x1

    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/cloud/thirdparty/t;->a(Lcom/iflytek/cloud/thirdparty/t;I[B[B)V
    :try_end_108
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_de .. :try_end_108} :catch_10a
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_108} :catch_110

    goto/16 :goto_5

    :catch_10a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_5

    :catch_110
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    :pswitch_116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/iflytek/cloud/thirdparty/t;->a(Lcom/iflytek/cloud/thirdparty/t;I[B[B)V

    goto/16 :goto_5

    :pswitch_125
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->g(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/ab;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$a;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->g(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->b()V

    goto/16 :goto_5

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_19
        :pswitch_29
        :pswitch_34
        :pswitch_48
        :pswitch_5a
        :pswitch_6c
        :pswitch_82
        :pswitch_99
        :pswitch_b0
        :pswitch_c5
        :pswitch_d8
        :pswitch_116
        :pswitch_6
        :pswitch_125
    .end packed-switch
.end method
