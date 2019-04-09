.class Lcom/mapquest/android/maps/HttpConnectionPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/HttpConnectionPool;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/HttpConnectionPool;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapquest/android/maps/HttpConnectionPool$1;->this$0:Lcom/mapquest/android/maps/HttpConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .registers 7

    .prologue
    .line 61
    new-instance v0, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v1, "Keep-Alive"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 68
    :cond_b
    :goto_b
    invoke-virtual {v0}, Lorg/apache/http/message/BasicHeaderElementIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    .line 69
    const-wide/16 v0, 0x1388

    .line 79
    :goto_13
    return-wide v0

    .line 72
    :cond_14
    invoke-virtual {v0}, Lorg/apache/http/message/BasicHeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_b

    .line 76
    const-string v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 79
    :try_start_2a
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2d} :catch_32

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_13

    .line 80
    :catch_32
    move-exception v1

    goto :goto_b
.end method
