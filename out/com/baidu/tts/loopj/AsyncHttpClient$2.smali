.class Lcom/baidu/tts/loopj/AsyncHttpClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpClient;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$2;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 9

    .prologue
    .line 275
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 276
    if-nez v1, :cond_7

    .line 288
    :cond_6
    :goto_6
    return-void

    .line 279
    :cond_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_6

    .line 281
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 282
    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 283
    new-instance v0, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;

    invoke-direct {v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6

    .line 281
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
