.class public abstract Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/loopj/ResponseHandlerInterface;


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpRH"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x0

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# instance fields
.field private TAG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private looper:Landroid/os/Looper;

.field private requestHeaders:[Lorg/apache/http/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private usePoolThread:Z

.field private useSynchronousMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 105
    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 123
    if-nez p1, :cond_1c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_1c
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 126
    invoke-virtual {p0, v2}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 130
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 105
    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 140
    invoke-virtual {p0, p1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->getUsePoolThread()Z

    move-result v0

    if-nez v0, :cond_28

    .line 145
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 150
    :cond_28
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "UTF-8"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_6
.end method

.method public getRequestHeaders()[Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .registers 14

    .prologue
    const/16 v0, 0x1000

    const-wide/16 v4, 0x0

    .line 482
    const/4 v1, 0x0

    .line 483
    if-eqz p1, :cond_73

    .line 484
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 485
    if-eqz v8, :cond_73

    .line 486
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 487
    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v2, v6

    if-lez v1, :cond_20

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_20
    cmp-long v1, v2, v4

    if-gtz v1, :cond_50

    .line 492
    :goto_24
    :try_start_24
    new-instance v9, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v9, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_29} :catch_67

    .line 494
    const/16 v0, 0x1000

    :try_start_2b
    new-array v10, v0, [B

    move-wide v0, v4

    .line 498
    :goto_2e
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v6, -0x1

    if-eq v11, v6, :cond_54

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_54

    .line 499
    int-to-long v6, v11

    add-long/2addr v6, v0

    .line 500
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0, v11}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 501
    cmp-long v0, v2, v4

    if-gtz v0, :cond_52

    const-wide/16 v0, 0x1

    :goto_4b
    invoke-virtual {p0, v6, v7, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_4e
    .catchall {:try_start_2b .. :try_end_4e} :catchall_5f

    move-wide v0, v6

    goto :goto_2e

    .line 490
    :cond_50
    long-to-int v0, v2

    goto :goto_24

    :cond_52
    move-wide v0, v2

    .line 501
    goto :goto_4b

    .line 504
    :cond_54
    :try_start_54
    invoke-static {v8}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 505
    invoke-static {p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 507
    invoke-virtual {v9}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    .line 514
    :goto_5e
    return-object v0

    .line 504
    :catchall_5f
    move-exception v0

    invoke-static {v8}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 505
    invoke-static {p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    throw v0
    :try_end_67
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_67} :catch_67

    .line 508
    :catch_67
    move-exception v0

    .line 509
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 510
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    move-object v0, v1

    goto :goto_5e
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUsePoolThread()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->usePoolThread:Z

    return v0
.end method

.method public getUseSynchronousMode()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->useSynchronousMode:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 367
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_de

    .line 417
    :goto_8
    return-void

    .line 369
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 370
    if-eqz v0, :cond_34

    array-length v1, v0

    if-lt v1, v4, :cond_34

    .line 371
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_8

    .line 414
    :catch_2f
    move-exception v0

    .line 415
    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onUserException(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 373
    :cond_34
    :try_start_34
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 377
    :pswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 378
    if-eqz v0, :cond_6a

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6a

    .line 379
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    const/4 v4, 0x3

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_8

    .line 381
    :cond_6a
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 385
    :pswitch_74
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onStart()V

    goto :goto_8

    .line 388
    :pswitch_78
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_8

    .line 391
    :pswitch_7c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 392
    if-eqz v0, :cond_aa

    array-length v1, v0
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_85} :catch_2f

    if-lt v1, v3, :cond_aa

    .line 394
    const/4 v1, 0x0

    :try_start_88
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onProgress(JJ)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_9c} :catch_9e

    goto/16 :goto_8

    .line 395
    :catch_9e
    move-exception v0

    .line 396
    :try_start_9f
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "AsyncHttpRH"

    const-string v3, "custom onProgress contains an error"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 399
    :cond_aa
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 403
    :pswitch_b5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 404
    if-eqz v0, :cond_ce

    array-length v1, v0

    if-ne v1, v2, :cond_ce

    .line 405
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_8

    .line 407
    :cond_ce
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "RETRY_MESSAGE didn\'t get enough params"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 411
    :pswitch_d9
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->onCancel()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_dc} :catch_2f

    goto/16 :goto_8

    .line 367
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3e
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_b5
        :pswitch_d9
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .registers 4

    .prologue
    .line 319
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Request got cancelled"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 278
    return-void
.end method

.method public onPostProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .registers 3

    .prologue
    .line 288
    return-void
.end method

.method public onPreProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .registers 3

    .prologue
    .line 283
    return-void
.end method

.method public onProgress(JJ)V
    .registers 14

    .prologue
    .line 262
    sget-object v2, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v3, "AsyncHttpRH"

    const-string v4, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_35

    long-to-double v0, p1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v7

    long-to-double v7, p3

    div-double/2addr v0, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v7

    :goto_27
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 262
    :cond_35
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_27
.end method

.method public onRetry(I)V
    .registers 8

    .prologue
    .line 315
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Request retry no. %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 270
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 323
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "User-space exception detected!"

    invoke-interface {v0, v1, v2, p1}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 434
    if-eqz p1, :cond_f

    .line 435
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 437
    :cond_c
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 443
    :cond_f
    :goto_f
    return-void

    .line 440
    :cond_10
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public final sendCancelMessage()V
    .registers 3

    .prologue
    .line 359
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method public final sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 339
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 340
    return-void
.end method

.method public final sendFinishMessage()V
    .registers 3

    .prologue
    .line 349
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 350
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 421
    :cond_a
    invoke-virtual {p0, p1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 426
    :cond_d
    :goto_d
    return-void

    .line 422
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 423
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_1d
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcom/baidu/tts/loopj/Utils;->asserts(ZLjava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 423
    :cond_28
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final sendProgressMessage(JJ)V
    .registers 9

    .prologue
    .line 329
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 330
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .registers 8

    .prologue
    .line 459
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_40

    .line 460
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 462
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->getResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_40

    .line 465
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_41

    .line 466
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 472
    :cond_40
    :goto_40
    return-void

    .line 468
    :cond_41
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_40
.end method

.method public final sendRetryMessage(I)V
    .registers 6

    .prologue
    .line 354
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 355
    return-void
.end method

.method public final sendStartMessage()V
    .registers 3

    .prologue
    .line 344
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 345
    return-void
.end method

.method public final sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 334
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 335
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setRequestHeaders([Lorg/apache/http/Header;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 180
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 175
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method public setUsePoolThread(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 233
    if-eqz p1, :cond_7

    .line 234
    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 235
    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 238
    :cond_7
    iput-boolean p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->usePoolThread:Z

    .line 239
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .registers 5

    .prologue
    .line 207
    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    if-nez v0, :cond_10

    .line 208
    const/4 p1, 0x1

    .line 209
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_10
    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_22

    .line 215
    new-instance v0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 221
    :cond_1f
    :goto_1f
    iput-boolean p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->useSynchronousMode:Z

    .line 222
    return-void

    .line 216
    :cond_22
    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1f

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    goto :goto_1f
.end method
