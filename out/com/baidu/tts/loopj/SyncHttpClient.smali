.class public Lcom/baidu/tts/loopj/SyncHttpClient;
.super Lcom/baidu/tts/loopj/AsyncHttpClient;
.source "SourceFile"


# instance fields
.field private mRequestHandle:Lcom/baidu/tts/loopj/RequestHandle;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 38
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(ZII)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 47
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(ZII)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(ZII)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 78
    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(ZII)V

    .line 69
    return-void
.end method


# virtual methods
.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;
    .registers 9

    .prologue
    .line 83
    if-eqz p4, :cond_7

    .line 84
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_7
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->setUseSynchronousMode(Z)V

    .line 90
    invoke-virtual/range {p0 .. p6}, Lcom/baidu/tts/loopj/SyncHttpClient;->newAsyncHttpRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/AsyncHttpRequest;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/baidu/tts/loopj/RequestHandle;

    invoke-direct {v1, v0}, Lcom/baidu/tts/loopj/RequestHandle;-><init>(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    iput-object v1, p0, Lcom/baidu/tts/loopj/SyncHttpClient;->mRequestHandle:Lcom/baidu/tts/loopj/RequestHandle;

    .line 93
    invoke-virtual {v0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->run()V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/tts/loopj/SyncHttpClient;->mRequestHandle:Lcom/baidu/tts/loopj/RequestHandle;

    if-eqz v0, :cond_d

    .line 112
    iget-object v0, p0, Lcom/baidu/tts/loopj/SyncHttpClient;->mRequestHandle:Lcom/baidu/tts/loopj/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/RequestHandle;->cancel(Z)Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/loopj/SyncHttpClient;->mRequestHandle:Lcom/baidu/tts/loopj/RequestHandle;

    .line 115
    :cond_d
    return-void
.end method
