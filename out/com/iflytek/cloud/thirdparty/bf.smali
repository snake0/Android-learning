.class public abstract Lcom/iflytek/cloud/thirdparty/bf;
.super Ljava/lang/Object;


# instance fields
.field public a:[C

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bf;->a:[C

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bf;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bf;->a:[C

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bf;->a:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
