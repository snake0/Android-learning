.class public abstract Lcom/iflytek/cloud/thirdparty/r;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/iflytek/cloud/thirdparty/af;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/iflytek/cloud/thirdparty/ce;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/r;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/r;->a:Lcom/iflytek/cloud/thirdparty/af;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/r;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b()Lcom/iflytek/cloud/thirdparty/af;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/r;->a:Lcom/iflytek/cloud/thirdparty/af;

    return-object v0
.end method
