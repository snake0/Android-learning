.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 33
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6

    .prologue
    .line 36
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 37
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 42
    :goto_17
    iget-object v3, p0, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v3, v0}, Lokhttp3/internal/connection/StreamAllocation;->newStream(Lokhttp3/OkHttpClient;Z)Lokhttp3/internal/http/HttpCodec;

    move-result-object v0

    .line 43
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    .line 45
    invoke-virtual {p1, v1, v2, v0, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 41
    :cond_26
    const/4 v0, 0x0

    goto :goto_17
.end method
