.class public abstract Lcom/iflytek/cloud/thirdparty/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/iflytek/cloud/thirdparty/k;

.field protected b:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/j;->a:Lcom/iflytek/cloud/thirdparty/k;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/j;->b:Z

    return v0
.end method

.method public abstract c()I
.end method

.method public abstract d()V
.end method
