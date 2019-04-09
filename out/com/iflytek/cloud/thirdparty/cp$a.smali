.class Lcom/iflytek/cloud/thirdparty/cp$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/SpeechListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cp;

.field private b:Lcom/iflytek/cloud/TextUnderstanderListener;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/cp;Lcom/iflytek/cloud/TextUnderstanderListener;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cp$a;->a:Lcom/iflytek/cloud/thirdparty/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/cp$a;->b:Lcom/iflytek/cloud/TextUnderstanderListener;

    return-void
.end method


# virtual methods
.method public onBufferReceived([B)V
    .registers 5

    if-eqz p1, :cond_13

    :try_start_2
    new-instance v0, Lcom/iflytek/cloud/UnderstanderResult;

    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/UnderstanderResult;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cp$a;->b:Lcom/iflytek/cloud/TextUnderstanderListener;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/TextUnderstanderListener;->onResult(Lcom/iflytek/cloud/UnderstanderResult;)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_13} :catch_19

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cp$a;->b:Lcom/iflytek/cloud/TextUnderstanderListener;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cp$a;->b:Lcom/iflytek/cloud/TextUnderstanderListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/TextUnderstanderListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_b
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method
