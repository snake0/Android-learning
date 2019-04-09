.class Lcom/iflytek/cloud/thirdparty/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/k;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/t;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v6

    if-eqz v6, :cond_1d

    const/16 v7, 0xa

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/16 v1, 0xb

    const-string v4, ""

    const/4 v5, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    const-string v0, "system"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/t;->b(Lcom/iflytek/cloud/thirdparty/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->g(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/ab;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->g(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->e()V

    :cond_3c
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/t;->a(Lcom/iflytek/cloud/thirdparty/t;ILjava/lang/String;)V

    return-void
.end method

.method public a([BILandroid/os/Bundle;)V
    .registers 12

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    const-string v1, "sdk"

    const-string v3, "data_type=audio"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/t;->a(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/j;->a()I

    move-result v7

    move-object v2, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/t;->a(Ljava/lang/String;[BLjava/lang/String;IIII)V

    return-void
.end method

.method public b()V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v6

    if-eqz v6, :cond_1d

    const/16 v7, 0xa

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/16 v1, 0xc

    const-string v4, ""

    const/4 v5, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t$1;->a:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/t;->a(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/thirdparty/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->a()I

    move-result v9

    new-array v4, v2, [B

    const-string v5, "data_type=audio"

    const/4 v6, 0x4

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v9}, Lcom/iflytek/cloud/thirdparty/t;->a([BLjava/lang/String;IIII)V

    return-void
.end method
