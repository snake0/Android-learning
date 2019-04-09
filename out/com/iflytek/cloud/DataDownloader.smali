.class public Lcom/iflytek/cloud/DataDownloader;
.super Lcom/iflytek/cloud/thirdparty/bi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected b_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public downloadData(Lcom/iflytek/cloud/SpeechListener;)I
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/iflytek/cloud/thirdparty/bk;

    iget-object v2, p0, Lcom/iflytek/cloud/DataDownloader;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/DataDownloader;->c:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v4, "download"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/DataDownloader;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/bk;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/DataDownloader;->e:Lcom/iflytek/cloud/thirdparty/be;

    iget-object v0, p0, Lcom/iflytek/cloud/DataDownloader;->e:Lcom/iflytek/cloud/thirdparty/be;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/bk;

    new-instance v2, Lcom/iflytek/cloud/thirdparty/bi$a;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/thirdparty/bi$a;-><init>(Lcom/iflytek/cloud/thirdparty/bi;Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/bk;->a(Lcom/iflytek/cloud/SpeechListener;)V
    :try_end_1e
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1e} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_2a

    move v0, v1

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_2a
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method
