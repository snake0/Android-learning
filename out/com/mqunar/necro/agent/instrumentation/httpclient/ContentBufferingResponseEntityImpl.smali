.class public Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private contentStream:Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

.field final impl:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_d

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing wrapped entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_d
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    .line 24
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 28
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->contentStream:Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    if-eqz v0, :cond_7

    .line 32
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->contentStream:Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    .line 35
    :goto_6
    return-object v0

    .line 34
    :cond_7
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->contentStream:Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    .line 35
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->contentStream:Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    goto :goto_6
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 65
    return-void
.end method
