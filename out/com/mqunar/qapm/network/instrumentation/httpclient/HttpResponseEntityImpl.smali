.class public Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final e:Lcom/mqunar/qapm/logging/AgentLog;


# instance fields
.field private final a:Lorg/apache/http/HttpEntity;

.field private final b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

.field private final c:J

.field private d:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->e:Lcom/mqunar/qapm/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/mqunar/qapm/network/instrumentation/TransactionState;J)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    .line 36
    iput-object p2, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 37
    iput-wide p3, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->c:J

    .line 38
    return-void
.end method

.method private a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 2

    .prologue
    .line 153
    invoke-static {p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 154
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 157
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, p1, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 158
    return-void
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-static {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 162
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 163
    if-eqz p2, :cond_18

    .line 164
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 166
    :cond_18
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-static {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 168
    :cond_1d
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 47
    return-void

    .line 43
    :catch_6
    move-exception v0

    .line 44
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a(Ljava/lang/Exception;)V

    .line 45
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->d:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    if-eqz v0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->d:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    .line 68
    :goto_8
    return-object v0

    .line 55
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    instance-of v0, v0, Lorg/apache/http/message/AbstractHttpMessage;

    if-eqz v0, :cond_3e

    .line 56
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    check-cast v0, Lorg/apache/http/message/AbstractHttpMessage;

    .line 57
    const-string v3, "Transfer-Encoding"

    invoke-virtual {v0, v3}, Lorg/apache/http/message/AbstractHttpMessage;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_55

    const-string v3, "chunked"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v1

    :goto_28
    move v2, v0

    .line 66
    :cond_29
    :goto_29
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->d:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    .line 67
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->d:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    invoke-virtual {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 68
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->d:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    goto :goto_8

    .line 61
    :cond_3e
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    instance-of v0, v0, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v0, :cond_29

    .line 62
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    check-cast v0, Lorg/apache/http/entity/HttpEntityWrapper;

    .line 63
    invoke-virtual {v0}, Lorg/apache/http/entity/HttpEntityWrapper;->isChunked()Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_4b} :catch_50

    move-result v0

    if-eqz v0, :cond_29

    move v2, v1

    goto :goto_29

    .line 69
    :catch_50
    move-exception v0

    .line 70
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a(Ljava/lang/Exception;)V

    .line 71
    throw v0

    :cond_55
    move v0, v2

    goto :goto_28
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public streamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 6

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;

    .line 129
    invoke-interface {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 130
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_25

    .line 131
    iget-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    .line 132
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    iget-wide v1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 137
    :goto_20
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 140
    :cond_25
    return-void

    .line 134
    :cond_26
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    goto :goto_20
.end method

.method public streamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;

    .line 144
    invoke-interface {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 145
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 146
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_23

    .line 147
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 150
    :cond_23
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_49

    .line 102
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;

    invoke-direct {v1, p1}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    :try_start_d
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2f

    .line 112
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 113
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3f

    .line 114
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    iget-wide v1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 119
    :goto_29
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 125
    :cond_2e
    :goto_2e
    return-void

    .line 106
    :catch_2f
    move-exception v0

    .line 107
    invoke-virtual {v1}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    throw v0

    .line 116
    :cond_3f
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    goto :goto_29

    .line 122
    :cond_49
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/HttpResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_2e
.end method
