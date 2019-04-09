.class Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field gzippedStream:Ljava/util/zip/GZIPInputStream;

.field pushbackStream:Ljava/io/PushbackInputStream;

.field wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 2

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 1601
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1627
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1628
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1629
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 1630
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    .line 1610
    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    .line 1611
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1612
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    .line 1613
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    .line 1615
    :goto_25
    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    goto :goto_25
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_6
.end method
