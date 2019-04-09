.class public Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private final a:Lorg/apache/http/HttpEntity;

.field private final b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    .line 27
    iput-object p2, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 28
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, p1, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 111
    return-void
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-static {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 115
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 116
    if-eqz p2, :cond_18

    .line 117
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesSent(J)V

    .line 119
    :cond_18
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-static {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 121
    :cond_1d
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 37
    return-void

    .line 33
    :catch_6
    move-exception v0

    .line 34
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a(Ljava/lang/Exception;)V

    .line 35
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_17

    .line 42
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-virtual {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 46
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1c} :catch_23

    move-result-object v0

    goto :goto_16

    .line 48
    :catch_1e
    move-exception v0

    .line 49
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a(Ljava/lang/Exception;)V

    .line 50
    throw v0

    .line 51
    :catch_23
    move-exception v0

    .line 52
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a(Ljava/lang/Exception;)V

    .line 53
    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public streamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;

    .line 99
    invoke-interface {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 100
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesSent(J)V

    .line 101
    return-void
.end method

.method public streamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;

    .line 105
    invoke-interface {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 106
    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 107
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 84
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;

    invoke-direct {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 86
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesSent(J)V

    .line 95
    :goto_1b
    return-void

    .line 88
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_1b

    .line 91
    :catch_22
    move-exception v0

    .line 92
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpRequestEntityImpl;->a(Ljava/lang/Exception;)V

    .line 93
    throw v0
.end method
