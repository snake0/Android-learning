.class Lcom/iflytek/cloud/thirdparty/z$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/z;

.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/z;I)V
    .registers 4

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/z$a;->a:Lcom/iflytek/cloud/thirdparty/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/iflytek/cloud/thirdparty/z$a;->d:I

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/z$a;->b:[B

    return-void
.end method


# virtual methods
.method public a([BI)I
    .registers 6

    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    array-length v0, p1

    if-lt p2, v0, :cond_9

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    array-length v0, p1

    sub-int v1, v0, p2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/z$a;->d()I

    move-result v0

    if-le v1, v0, :cond_20

    :goto_12
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/z$a;->b:[B

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/z$a;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/z$a;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/z$a;->c:I

    add-int/2addr v0, p2

    goto :goto_8

    :cond_20
    move v0, v1

    goto :goto_12
.end method

.method public a()V
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/z$a;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/z$a;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/z$a;->c:I

    return-void
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/z$a;->b:[B

    return-object v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/z$a;->c:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/z$a;->d:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()I
    .registers 3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/z$a;->d:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/z$a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method
