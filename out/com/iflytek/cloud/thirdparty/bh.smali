.class public abstract Lcom/iflytek/cloud/thirdparty/bh;
.super Ljava/lang/Object;


# static fields
.field protected static final b:Ljava/lang/Object;


# instance fields
.field protected c:Lcom/iflytek/cloud/thirdparty/ce;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bh;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/bh$a;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    return-object v0
.end method

.method public destroy()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const/4 v0, 0x1

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const-string v1, "params"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ce;->a()V

    goto :goto_8

    :cond_1d
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v1, p2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ce;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8

    :cond_34
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bh;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method
