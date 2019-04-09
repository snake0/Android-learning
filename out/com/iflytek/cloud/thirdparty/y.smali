.class public Lcom/iflytek/cloud/thirdparty/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:I

.field public c:[B

.field public d:I

.field public e:Lcom/iflytek/cloud/thirdparty/ce;


# direct methods
.method public constructor <init>([BLcom/iflytek/cloud/thirdparty/ce;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    if-eqz p2, :cond_d

    :goto_a
    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    return-void

    :cond_d
    new-instance p2, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {p2}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    goto :goto_a
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    array-length v0, v0

    goto :goto_5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/y;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_26

    :try_start_7
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    iput v1, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/y;->a:I

    iput v1, v0, Lcom/iflytek/cloud/thirdparty/y;->a:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/y;->b:I

    iput v1, v0, Lcom/iflytek/cloud/thirdparty/y;->b:I
    :try_end_25
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_25} :catch_2e

    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_2a
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_25

    :catch_2e
    move-exception v1

    goto :goto_2a
.end method
