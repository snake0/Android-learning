.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 269
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 270
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/CacheControl;
    .registers 2

    .prologue
    .line 351
    new-instance v0, Lokhttp3/CacheControl;

    invoke-direct {v0, p0}, Lokhttp3/CacheControl;-><init>(Lokhttp3/CacheControl$Builder;)V

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .registers 7

    .prologue
    .line 294
    if-gez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxAge < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1b
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 296
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    const v0, 0x7fffffff

    :goto_2a
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 299
    return-object p0

    .line 296
    :cond_2d
    long-to-int v0, v0

    goto :goto_2a
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .registers 7

    .prologue
    .line 310
    if-gez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1b
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 312
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    const v0, 0x7fffffff

    :goto_2a
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 315
    return-object p0

    .line 312
    :cond_2d
    long-to-int v0, v0

    goto :goto_2a
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .registers 7

    .prologue
    .line 327
    if-gez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minFresh < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1b
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 329
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    const v0, 0x7fffffff

    :goto_2a
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 332
    return-object p0

    .line 329
    :cond_2d
    long-to-int v0, v0

    goto :goto_2a
.end method

.method public noCache()Lokhttp3/CacheControl$Builder;
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    .line 277
    return-object p0
.end method

.method public noStore()Lokhttp3/CacheControl$Builder;
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    .line 283
    return-object p0
.end method

.method public noTransform()Lokhttp3/CacheControl$Builder;
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    .line 347
    return-object p0
.end method

.method public onlyIfCached()Lokhttp3/CacheControl$Builder;
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    .line 341
    return-object p0
.end method