.class Lcom/iflytek/cloud/thirdparty/ci$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/by$a;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ci;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ci$1;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    if-eqz p1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload error. please check net state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    :goto_1c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ci$1;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ci;->a(Lcom/iflytek/cloud/thirdparty/ci;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ci$1;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ci;->a(Lcom/iflytek/cloud/thirdparty/ci;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/RequestListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_2d
    return-void

    :cond_2e
    const-string v0, "upload succeed"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/by;[B)V
    .registers 6

    if-eqz p2, :cond_27

    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ret"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const-string v2, "wfr"

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/ci$1;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ci$1;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ci;->a(Lcom/iflytek/cloud/thirdparty/ci;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v0, "GetNotifyResult"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ci$1;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ci;->a(Lcom/iflytek/cloud/thirdparty/ci;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/iflytek/cloud/RequestListener;->onBufferReceived([B)V

    :cond_3f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ci$1;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_44

    goto :goto_27

    :catch_44
    move-exception v0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e24

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ci$1;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_27
.end method
