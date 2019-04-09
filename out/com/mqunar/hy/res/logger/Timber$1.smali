.class final Lcom/mqunar/hy/res/logger/Timber$1;
.super Lcom/mqunar/hy/res/logger/Timber$Tree;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/mqunar/hy/res/logger/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 226
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 228
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 229
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 231
    :cond_e
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 235
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 237
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 238
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 240
    :cond_e
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 280
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 282
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 283
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 285
    :cond_e
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 289
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 291
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 292
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 294
    :cond_e
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 244
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 246
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 247
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 249
    :cond_e
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 253
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 255
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 256
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 258
    :cond_e
    return-void
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 334
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 316
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 318
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 319
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 321
    :cond_e
    return-void
.end method

.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 325
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 327
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 328
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/mqunar/hy/res/logger/Timber$Tree;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 330
    :cond_e
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 208
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 210
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 211
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 213
    :cond_e
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 217
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 219
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 220
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 222
    :cond_e
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 262
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 264
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 265
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 267
    :cond_e
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 271
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 273
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 274
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 276
    :cond_e
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 298
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 300
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 301
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 303
    :cond_e
    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 307
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 309
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    .line 310
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 312
    :cond_e
    return-void
.end method
