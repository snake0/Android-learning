.class public Lcom/iflytek/cloud/thirdparty/co;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/iflytek/cloud/thirdparty/co;


# instance fields
.field private b:Lcom/iflytek/cloud/thirdparty/cm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/co;->a:Lcom/iflytek/cloud/thirdparty/co;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cm;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .registers 6

    new-instance v1, Lcom/iflytek/cloud/thirdparty/co$a;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/cloud/thirdparty/co$a;-><init>(Lcom/iflytek/cloud/thirdparty/co;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v2, "asr_sch"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/cm;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v2, "asr_sch"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/cm;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v2, "nlp_version"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/cm;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/iflytek/msc/MSC;->isIflyVersion()Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "3.0"

    :goto_32
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v3, "nlp_version"

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/cm;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_39
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v2, "result_type"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/cm;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v2, "result_type"

    const-string v3, "json"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/cm;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_50
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cm;->a(Lcom/iflytek/cloud/RecognizerListener;)I

    const/4 v0, 0x0

    return v0

    :cond_57
    const-string v0, "2.0"

    goto :goto_32
.end method

.method public a([BII)I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/cm;->a([BII)I

    move-result v0

    return v0
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/cm;->cancel(Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cm;->g()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/ce;)Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/cm;->setParameter(Lcom/iflytek/cloud/thirdparty/ce;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cm;->e()V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co;->b:Lcom/iflytek/cloud/thirdparty/cm;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cm;->destroy()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/thirdparty/co;->a:Lcom/iflytek/cloud/thirdparty/co;

    :cond_b
    return v0
.end method
