.class public Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private final impl:Lorg/apache/http/HttpEntity;

.field private final transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    .line 22
    iput-object p2, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 23
    return-void
.end method

.method private handleException(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 105
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, p1, v0}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->handleException(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 106
    return-void
.end method

.method private handleException(Ljava/lang/Exception;Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-static {v0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 110
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 111
    if-eqz p2, :cond_18

    .line 112
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesSent(J)V

    .line 114
    :cond_18
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 116
    :cond_1d
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 32
    return-void

    .line 28
    :catch_6
    move-exception v0

    .line 29
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->handleException(Ljava/lang/Exception;)V

    .line 30
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_17

    .line 37
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {v0, p0}, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;)V

    .line 41
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1c} :catch_23

    move-result-object v0

    goto :goto_16

    .line 43
    :catch_1e
    move-exception v0

    .line 44
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->handleException(Ljava/lang/Exception;)V

    .line 45
    throw v0

    .line 46
    :catch_23
    move-exception v0

    .line 47
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->handleException(Ljava/lang/Exception;)V

    .line 48
    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public streamComplete(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListenerSource;

    .line 94
    invoke-interface {v0, p0}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;)V

    .line 95
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesSent(J)V

    .line 96
    return-void
.end method

.method public streamError(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListenerSource;

    .line 100
    invoke-interface {v0, p0}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;)V

    .line 101
    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->handleException(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 102
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 79
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/io/CountingOutputStream;

    invoke-direct {v0, p1}, Lcom/mqunar/necro/agent/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 81
    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesSent(J)V

    .line 90
    :goto_1b
    return-void

    .line 83
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_1b

    .line 86
    :catch_22
    move-exception v0

    .line 87
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;->handleException(Ljava/lang/Exception;)V

    .line 88
    throw v0
.end method
