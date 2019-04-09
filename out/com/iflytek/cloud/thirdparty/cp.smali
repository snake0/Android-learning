.class public Lcom/iflytek/cloud/thirdparty/cp;
.super Lcom/iflytek/cloud/thirdparty/bi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/iflytek/cloud/TextUnderstanderListener;)I
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "asr_sch"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/cp;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "asr_sch"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/thirdparty/cp;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14
    const-string v0, "nlp_version"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/cp;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/iflytek/msc/MSC;->isIflyVersion()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "3.0"

    :goto_28
    const-string v2, "nlp_version"

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/thirdparty/cp;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2d
    const-string v0, "result_type"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/cp;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "result_type"

    const-string v2, "json"

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/thirdparty/cp;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_40
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cp;->d()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v0, 0x520d

    :goto_48
    return v0

    :cond_49
    const-string v0, "2.0"

    goto :goto_28

    :cond_4c
    new-instance v0, Lcom/iflytek/cloud/thirdparty/bk;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cp;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cp;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v4, "textunderstand"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/cp;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/bk;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cp;->e:Lcom/iflytek/cloud/thirdparty/be;

    new-instance v2, Lcom/iflytek/cloud/thirdparty/cp$a;

    invoke-direct {v2, p0, p2}, Lcom/iflytek/cloud/thirdparty/cp$a;-><init>(Lcom/iflytek/cloud/thirdparty/cp;Lcom/iflytek/cloud/TextUnderstanderListener;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cp;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/bk;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/bi$a;

    invoke-direct {v3, p0, v2}, Lcom/iflytek/cloud/thirdparty/bi$a;-><init>(Lcom/iflytek/cloud/thirdparty/bi;Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v0, v3, p1}, Lcom/iflytek/cloud/thirdparty/bk;->a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;)V
    :try_end_6e
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_6e} :catch_70
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6e} :catch_7a

    move v0, v1

    goto :goto_48

    :catch_70
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_48

    :catch_7a
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_48
.end method

.method public cancel(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;->cancel(Z)V

    return-void
.end method

.method public destroy()Z
    .registers 2

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bi;->destroy()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cp;->d()Z

    move-result v0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/bi;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
