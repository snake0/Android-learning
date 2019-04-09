.class public final Lokhttp3/OkUrlFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private urlFilter:Lokhttp3/internal/URLFilter;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lokhttp3/OkUrlFactory;->client:Lokhttp3/OkHttpClient;

    .line 39
    return-void
.end method


# virtual methods
.method public client()Lokhttp3/OkHttpClient;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/OkUrlFactory;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lokhttp3/OkUrlFactory;->clone()Lokhttp3/OkUrlFactory;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/OkUrlFactory;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Lokhttp3/OkUrlFactory;

    iget-object v1, p0, Lokhttp3/OkUrlFactory;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lokhttp3/OkUrlFactory;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 3

    .prologue
    .line 88
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 90
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lokhttp3/OkUrlFactory$1;

    invoke-direct {v0, p0, p1}, Lokhttp3/OkUrlFactory$1;-><init>(Lokhttp3/OkUrlFactory;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lokhttp3/OkUrlFactory;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lokhttp3/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 7

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lokhttp3/OkUrlFactory;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, p2}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 72
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v0, Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v2, p0, Lokhttp3/OkUrlFactory;->urlFilter:Lokhttp3/internal/URLFilter;

    invoke-direct {v0, p1, v1, v2}, Lokhttp3/internal/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;Lokhttp3/internal/URLFilter;)V

    .line 73
    :goto_21
    return-object v0

    :cond_22
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v0, Lokhttp3/internal/huc/OkHttpsURLConnection;

    iget-object v2, p0, Lokhttp3/OkUrlFactory;->urlFilter:Lokhttp3/internal/URLFilter;

    invoke-direct {v0, p1, v1, v2}, Lokhttp3/internal/huc/OkHttpsURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;Lokhttp3/internal/URLFilter;)V

    goto :goto_21

    .line 74
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setClient(Lokhttp3/OkHttpClient;)Lokhttp3/OkUrlFactory;
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lokhttp3/OkUrlFactory;->client:Lokhttp3/OkHttpClient;

    .line 47
    return-object p0
.end method

.method setUrlFilter(Lokhttp3/internal/URLFilter;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lokhttp3/OkUrlFactory;->urlFilter:Lokhttp3/internal/URLFilter;

    .line 52
    return-void
.end method
