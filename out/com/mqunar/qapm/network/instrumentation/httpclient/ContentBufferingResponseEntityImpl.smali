.class public Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field final a:Lorg/apache/http/HttpEntity;

.field private b:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_d

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing wrapped entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_d
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    .line 25
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 29
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    .line 36
    :goto_6
    return-object v0

    .line 35
    :cond_7
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    .line 36
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->b:Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    goto :goto_6
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ContentBufferingResponseEntityImpl;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 66
    return-void
.end method
