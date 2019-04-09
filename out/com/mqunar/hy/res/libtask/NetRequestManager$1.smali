.class Lcom/mqunar/hy/res/libtask/NetRequestManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$1;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 8

    .prologue
    .line 262
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_2c

    .line 265
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_2c

    aget-object v3, v1, v0

    .line 266
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 267
    new-instance v0, Lcom/mqunar/hy/res/libtask/GzipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/libtask/GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 272
    :cond_2c
    return-void

    .line 265
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method
