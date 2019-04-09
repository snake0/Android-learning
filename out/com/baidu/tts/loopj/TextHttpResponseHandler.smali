.class public abstract Lcom/baidu/tts/loopj/TextHttpResponseHandler;
.super Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextHttpRH"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p0, :cond_14

    move-object v1, v0

    .line 116
    :goto_4
    if-eqz v1, :cond_25

    :try_start_6
    const-string v2, "\ufeff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_13
    return-object v0

    .line 115
    :cond_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 120
    :catch_1a
    move-exception v1

    .line 121
    sget-object v2, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v3, "TextHttpRH"

    const-string v4, "Encoding response into string failed"

    invoke-interface {v2, v3, v4, v1}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_25
    move-object v0, v1

    .line 119
    goto :goto_13
.end method


# virtual methods
.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .registers 5

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 99
    return-void
.end method
