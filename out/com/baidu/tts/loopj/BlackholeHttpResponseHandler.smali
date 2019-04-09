.class public Lcom/baidu/tts/loopj/BlackholeHttpResponseHandler;
.super Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 23
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public onPostProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .registers 3

    .prologue
    .line 43
    return-void
.end method

.method public onPreProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .registers 3

    .prologue
    .line 48
    return-void
.end method

.method public onProgress(JJ)V
    .registers 5

    .prologue
    .line 28
    return-void
.end method

.method public onRetry(I)V
    .registers 2

    .prologue
    .line 53
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .registers 4

    .prologue
    .line 18
    return-void
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 63
    return-void
.end method
