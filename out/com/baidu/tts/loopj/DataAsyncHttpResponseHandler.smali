.class public abstract Lcom/baidu/tts/loopj/DataAsyncHttpResponseHandler;
.super Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpRH"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;-><init>()V

    .line 40
    return-void
.end method

.method public static copyOfRange([BII)[B
    .registers 6

    .prologue
    .line 139
    if-le p1, p2, :cond_8

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :cond_8
    array-length v0, p0

    .line 143
    if-ltz p1, :cond_d

    if-le p1, v0, :cond_13

    .line 144
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 146
    :cond_13
    sub-int v1, p2, p1

    .line 147
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 148
    new-array v1, v1, [B

    .line 149
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    return-object v1
.end method


# virtual methods
.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    if-eqz p1, :cond_69

    .line 90
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_69

    .line 92
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 93
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-lez v3, :cond_1d

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1d
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_25

    .line 97
    const-wide/16 v0, 0x1000

    .line 100
    :cond_25
    :try_start_25
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    long-to-int v4, v0

    invoke-direct {v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_2b} :catch_56

    .line 102
    const/16 v4, 0x1000

    :try_start_2d
    new-array v4, v4, [B

    .line 105
    :goto_2f
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_62

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_62

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 107
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/baidu/tts/loopj/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/baidu/tts/loopj/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    .line 108
    int-to-long v5, v7

    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/baidu/tts/loopj/DataAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_50
    .catchall {:try_start_2d .. :try_end_50} :catchall_51

    goto :goto_2f

    .line 111
    :catchall_51
    move-exception v0

    :try_start_52
    invoke-static {v2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    throw v0
    :try_end_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_56} :catch_56

    .line 114
    :catch_56
    move-exception v0

    .line 115
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_62
    :try_start_62
    invoke-static {v2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 113
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_68} :catch_56

    move-result-object v0

    .line 120
    :cond_69
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 76
    :goto_8
    return-void

    .line 64
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 65
    if-eqz v0, :cond_2b

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2b

    .line 67
    const/4 v1, 0x0

    :try_start_16
    aget-object v0, v0, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_20

    goto :goto_8

    .line 68
    :catch_20
    move-exception v0

    .line 69
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "DataAsyncHttpRH"

    const-string v3, "custom onProgressData contains an error"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 72
    :cond_2b
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "DataAsyncHttpRH"

    const-string v2, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 62
    nop

    :pswitch_data_36
    .packed-switch 0x7
        :pswitch_9
    .end packed-switch
.end method

.method public onProgressData([B)V
    .registers 5

    .prologue
    .line 48
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "DataAsyncHttpRH"

    const-string v2, "onProgressData(byte[]) was not overriden, but callback was received"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .registers 5

    .prologue
    .line 53
    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/loopj/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/loopj/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 54
    return-void
.end method
