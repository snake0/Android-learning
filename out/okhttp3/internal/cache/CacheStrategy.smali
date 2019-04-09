.class public final Lokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cacheResponse:Lokhttp3/Response;

.field public final networkRequest:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    .line 58
    iput-object p2, p0, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    .line 59
    return-void
.end method

.method public static isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    .line 99
    :cond_8
    :goto_8
    return v0

    .line 85
    :sswitch_9
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    .line 86
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    .line 87
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->isPublic()Z

    move-result v1

    if-nez v1, :cond_30

    .line 88
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 99
    :cond_30
    :sswitch_30
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    .line 65
    :sswitch_data_46
    .sparse-switch
        0xc8 -> :sswitch_30
        0xcb -> :sswitch_30
        0xcc -> :sswitch_30
        0x12c -> :sswitch_30
        0x12d -> :sswitch_30
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_30
        0x194 -> :sswitch_30
        0x195 -> :sswitch_30
        0x19a -> :sswitch_30
        0x19e -> :sswitch_30
        0x1f5 -> :sswitch_30
    .end sparse-switch
.end method
