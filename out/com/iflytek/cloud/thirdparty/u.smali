.class public abstract Lcom/iflytek/cloud/thirdparty/u;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Lcom/iflytek/cloud/thirdparty/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/u;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/u;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/u;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/u;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/u;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/af;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 2

    return-void
.end method

.method public a([BLjava/lang/String;III)V
    .registers 6

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .registers 1

    return-void
.end method
