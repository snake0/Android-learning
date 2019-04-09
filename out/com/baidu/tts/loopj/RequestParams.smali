.class public Lcom/baidu/tts/loopj/RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field protected static final LOG_TAG:Ljava/lang/String; = "RequestParams"


# instance fields
.field protected autoCloseInputStreams:Z

.field protected contentEncoding:Ljava/lang/String;

.field protected elapsedFieldInJsonStreamer:Ljava/lang/String;

.field protected final fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/loopj/RequestParams$FileWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final fileParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/loopj/RequestParams$FileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected forceMultipartEntity:Z

.field protected isRepeatable:Z

.field protected final streamParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected useJsonStreamer:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/baidu/tts/loopj/RequestParams;-><init>(Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 169
    new-instance v0, Lcom/baidu/tts/loopj/RequestParams$1;

    invoke-direct {v0, p1, p2}, Lcom/baidu/tts/loopj/RequestParams$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/tts/loopj/RequestParams;-><init>(Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/loopj/RequestParams;->forceMultipartEntity:Z

    .line 105
    const-string v0, "_elapsed"

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 154
    if-eqz p1, :cond_57

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 159
    :cond_57
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/baidu/tts/loopj/RequestParams;->forceMultipartEntity:Z

    .line 105
    const-string v1, "_elapsed"

    iput-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 183
    array-length v1, p1

    .line 184
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3e

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied arguments must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_3e
    :goto_3e
    if-ge v0, v1, :cond_54

    .line 187
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {p0, v2, v3}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    add-int/lit8 v0, v0, 0x2

    goto :goto_3e

    .line 191
    :cond_54
    return-void
.end method

.method private createFormEntity()Lorg/apache/http/HttpEntity;
    .registers 5

    .prologue
    .line 566
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/loopj/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 569
    :goto_b
    return-object v0

    .line 567
    :catch_c
    move-exception v0

    .line 568
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "RequestParams"

    const-string v3, "createFormEntity failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private createJsonStreamerEntity(Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .registers 9

    .prologue
    .line 527
    new-instance v2, Lcom/baidu/tts/loopj/JsonStreamerEntity;

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_12
    const/4 v0, 0x1

    :goto_13
    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;-><init>(Lcom/baidu/tts/loopj/ResponseHandlerInterface;ZLjava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 527
    :cond_3c
    const/4 v0, 0x0

    goto :goto_13

    .line 538
    :cond_3e
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 539
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_48

    .line 543
    :cond_62
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 544
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6c

    .line 548
    :cond_86
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_90
    :goto_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    .line 550
    iget-object v4, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_90

    .line 551
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v5, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v6, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->autoClose:Z

    invoke-static {v4, v5, v6, v1}, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_90

    .line 561
    :cond_bc
    return-object v2
.end method

.method private createMultipartEntity(Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .registers 10

    .prologue
    .line 574
    new-instance v3, Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    invoke-direct {v3, p1}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;-><init>(Lcom/baidu/tts/loopj/ResponseHandlerInterface;)V

    .line 575
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/RequestParams;->isRepeatable:Z

    invoke-virtual {v3, v0}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->setIsRepeatable(Z)V

    .line 578
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/tts/loopj/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v3, v1, v0, v4}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 583
    :cond_32
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v1}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 584
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 585
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/tts/loopj/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 589
    :cond_57
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_61
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 590
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    .line 591
    iget-object v4, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_61

    .line 592
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v1, v1, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_61

    .line 598
    :cond_87
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 599
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    .line 600
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    iget-object v5, v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    iget-object v1, v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 604
    :cond_b3
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 605
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 606
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    .line 607
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    iget-object v7, v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    iget-object v1, v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v7, v1}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    .line 611
    :cond_ef
    return-object v3
.end method

.method private getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 627
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 628
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5b

    .line 629
    check-cast p2, Ljava/util/Map;

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 632
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Comparable;

    if-eqz v3, :cond_28

    .line 633
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 635
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 636
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2c

    .line 637
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 638
    if-eqz v4, :cond_2c

    .line 639
    if-nez p1, :cond_4c

    check-cast v0, Ljava/lang/String;

    :goto_44
    invoke-direct {p0, v0, v4}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    :cond_4c
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s[%s]"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v1

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 644
    :cond_5b
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_88

    .line 645
    check-cast p2, Ljava/util/List;

    .line 646
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v0, v1

    .line 647
    :goto_66
    if-ge v0, v3, :cond_da

    .line 648
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s[%d]"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 650
    :cond_88
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_b2

    .line 651
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 652
    array-length v3, p2

    move v0, v1

    .line 653
    :goto_92
    if-ge v0, v3, :cond_da

    .line 654
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s[%d]"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-direct {p0, v4, v5}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 656
    :cond_b2
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_ce

    .line 657
    check-cast p2, Ljava/util/Set;

    .line 658
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 659
    invoke-direct {p0, p1, v1}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_bc

    .line 662
    :cond_ce
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_da
    return-object v2
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 383
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 384
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 385
    if-nez v0, :cond_14

    .line 387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_14
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 391
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1d
    :goto_1d
    return-void

    .line 392
    :cond_1e
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1d

    .line 393
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method public getEntity(Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .registers 3

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/RequestParams;->useJsonStreamer:Z

    if-eqz v0, :cond_9

    .line 518
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/RequestParams;->createJsonStreamerEntity(Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 522
    :goto_8
    return-object v0

    .line 519
    :cond_9
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/RequestParams;->forceMultipartEntity:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 520
    invoke-direct {p0}, Lcom/baidu/tts/loopj/RequestParams;->createFormEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_8

    .line 522
    :cond_2a
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/RequestParams;->createMultipartEntity(Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_8
.end method

.method protected getParamString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParamsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 617
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 621
    :cond_30
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v1}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    return-object v2
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public put(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 359
    if-eqz p1, :cond_b

    .line 360
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_b
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 371
    if-eqz p1, :cond_b

    .line 372
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_b
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 284
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 285
    :cond_8
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 287
    :cond_e
    if-eqz p1, :cond_1a

    .line 288
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_1a
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 322
    iget-boolean v5, p0, Lcom/baidu/tts/loopj/RequestParams;->autoCloseInputStreams:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .prologue
    .line 335
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 336
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p5}, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_d
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 347
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 348
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_9
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 200
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 201
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_9
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/io/File;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/baidu/tts/loopj/RequestParams;->put(Ljava/lang/String;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 227
    if-eqz p1, :cond_2b

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    array-length v2, p2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_26

    aget-object v3, p2, v0

    .line 230
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 231
    :cond_15
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 233
    :cond_1b
    new-instance v4, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    invoke-direct {v4, v3, p3, p4}, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 235
    :cond_26
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2b
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method public setAutoCloseInputStreams(Z)V
    .registers 2

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/baidu/tts/loopj/RequestParams;->autoCloseInputStreams:Z

    .line 506
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 121
    if-eqz p1, :cond_5

    .line 122
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 126
    :goto_4
    return-void

    .line 124
    :cond_5
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "RequestParams"

    const-string v2, "setContentEncoding called with null attribute"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setElapsedFieldInJsonStreamer(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 495
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setForceMultipartEntityContentType(Z)V
    .registers 2

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/baidu/tts/loopj/RequestParams;->forceMultipartEntity:Z

    .line 138
    return-void
.end method

.method public setHttpEntityIsRepeatable(Z)V
    .registers 2

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/baidu/tts/loopj/RequestParams;->isRepeatable:Z

    .line 479
    return-void
.end method

.method public setUseJsonStreamer(Z)V
    .registers 2

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/baidu/tts/loopj/RequestParams;->useJsonStreamer:Z

    .line 483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_26

    .line 430
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 437
    :cond_3e
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 438
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5f

    .line 439
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_5f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v0, "STREAM"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 446
    :cond_73
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_94

    .line 448
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v0, "FILE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 455
    :cond_a8
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c9

    .line 457
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_c9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "FILES(SIZE="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    .line 464
    :cond_f1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v1}, Lcom/baidu/tts/loopj/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 465
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_113

    .line 467
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_113
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fc

    .line 474
    :cond_127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
