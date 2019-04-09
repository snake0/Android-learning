.class public Lcom/baidu/tts/loopj/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# instance fields
.field private cancelIsNotified:Z

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isFinished:Z

.field private isRequestPreProcessed:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)V
    .registers 6

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 49
    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 50
    const-string v0, "request"

    invoke-static {p3, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 51
    const-string v0, "responseHandler"

    invoke-static {p4, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    .line 52
    return-void
.end method

.method private makeRequest()V
    .registers 5

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    :cond_6
    :goto_6
    return-void

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 140
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1b
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    instance-of v0, v0, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;

    if-eqz v0, :cond_2a

    .line 144
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    check-cast v0, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;->updateRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 146
    :cond_2a
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    instance-of v3, v0, Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_5e

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 148
    :goto_38
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 153
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->onPreProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V

    .line 155
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 160
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 162
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 167
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->onPostProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V

    goto :goto_6

    .line 146
    :cond_5e
    check-cast v0, Lorg/apache/http/client/HttpClient;

    invoke-static {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_38
.end method

.method private makeRequestWithRetries()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v3

    move v2, v1

    .line 175
    :cond_9
    :goto_9
    if-eqz v2, :cond_73

    .line 177
    :try_start_b
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->makeRequest()V
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_e} :catch_76
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_4c

    .line 200
    :cond_e
    return-void

    .line 179
    :catch_f
    move-exception v0

    .line 185
    :try_start_10
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    iget v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    if-ltz v4, :cond_74

    iget v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_74

    move v0, v1

    :goto_3f
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 205
    :goto_42
    if-eqz v2, :cond_9

    .line 206
    iget-object v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iget v5, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    invoke-interface {v4, v5}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4b} :catch_4c

    goto :goto_9

    .line 209
    :catch_4c
    move-exception v0

    move-object v1, v0

    .line 211
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "Unhandled exception origin cause"

    invoke-interface {v0, v2, v3, v1}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 216
    :cond_73
    throw v0

    .line 189
    :cond_74
    const/4 v0, 0x0

    goto :goto_3f

    .line 191
    :catch_76
    move-exception v2

    .line 195
    :try_start_77
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE in HttpClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    iget v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_42

    .line 197
    :catch_a0
    move-exception v0

    .line 198
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 203
    iget v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_b2} :catch_4c

    move-result v2

    goto :goto_42
.end method

.method private declared-synchronized sendCancelNotification()V
    .registers 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_19

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancelIsNotified:Z

    .line 230
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 232
    :cond_19
    monitor-exit p0

    return-void

    .line 228
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 241
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 221
    if-eqz v0, :cond_b

    .line 222
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->sendCancelNotification()V

    .line 224
    :cond_b
    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onPostProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .registers 2

    .prologue
    .line 82
    return-void
.end method

.method public onPreProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .registers 2

    .prologue
    .line 67
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    :cond_8
    :goto_8
    return-void

    .line 91
    :cond_9
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isRequestPreProcessed:Z

    if-nez v0, :cond_12

    .line 92
    iput-boolean v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isRequestPreProcessed:Z

    .line 93
    invoke-virtual {p0, p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->onPreProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    .line 96
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 100
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendStartMessage()V

    .line 102
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 107
    :try_start_23
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3d

    .line 116
    :goto_26
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 120
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendFinishMessage()V

    .line 122
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 127
    invoke-virtual {p0, p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->onPostProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    .line 129
    iput-boolean v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    goto :goto_8

    .line 108
    :catch_3d
    move-exception v0

    .line 109
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 110
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_26

    .line 112
    :cond_4b
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "makeRequestWithRetries returned error"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public setRequestTag(Ljava/lang/Object;)Lcom/baidu/tts/loopj/AsyncHttpRequest;
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0, p1}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->setTag(Ljava/lang/Object;)V

    .line 252
    return-object p0
.end method
