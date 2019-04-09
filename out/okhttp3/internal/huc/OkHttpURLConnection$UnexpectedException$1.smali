.class final Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 4

    .prologue
    .line 564
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 565
    :catch_9
    move-exception v0

    .line 566
    :goto_a
    new-instance v1, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;

    invoke-direct {v1, v0}, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 565
    :catch_10
    move-exception v0

    goto :goto_a
.end method
