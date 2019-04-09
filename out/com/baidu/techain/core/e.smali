.class public final Lcom/baidu/techain/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    .prologue
    .line 331
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 333
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 334
    const-string v0, "gzfi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 336
    if-eqz p2, :cond_1c6

    .line 337
    const/4 v4, 0x0

    .line 338
    const/4 v1, 0x0

    .line 339
    const/4 v2, 0x0

    .line 340
    new-instance v5, Lcom/baidu/techain/core/c;

    invoke-direct {v5}, Lcom/baidu/techain/core/c;-><init>()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_22} :catch_1c2

    .line 342
    :try_start_22
    const-class v0, Lcom/baidu/techain/TechainProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 343
    const-string v0, "args"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/c;

    .line 344
    if-eqz v0, :cond_1d9

    .line 345
    iget-object v6, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7a

    .line 346
    iget-object v1, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/String;

    .line 347
    iget-object v0, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "args "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    .line 355
    :goto_63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2, v0}, Lcom/baidu/techain/core/e;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 357
    const-string v0, "status"

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_78
    move-object v0, v3

    .line 478
    :goto_79
    return-object v0

    .line 349
    :cond_7a
    iget-object v6, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1d9

    .line 350
    iget-object v1, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    .line 351
    iget-object v2, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    .line 352
    iget-object v0, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    goto :goto_63

    .line 359
    :cond_96
    iput-object v0, v5, Lcom/baidu/techain/core/c;->f:Ljava/lang/Object;

    .line 360
    const-string v0, "result"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    const-string v0, "status"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_a3} :catch_a4

    goto :goto_78

    .line 366
    :catch_a4
    move-exception v0

    :try_start_a5
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 367
    const-string v0, "status"

    const/4 v1, 0x7

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v3

    .line 370
    goto :goto_79

    .line 372
    :cond_b0
    const-string v0, "invokeMethod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 373
    if-eqz p2, :cond_1c6

    .line 374
    new-instance v5, Lcom/baidu/techain/core/c;

    invoke-direct {v5}, Lcom/baidu/techain/core/c;-><init>()V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_bf} :catch_1c2

    .line 376
    :try_start_bf
    const-class v0, Lcom/baidu/techain/TechainProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 377
    const-string v0, "args"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/c;

    .line 378
    iget v6, v0, Lcom/baidu/techain/core/c;->a:I

    .line 379
    iget v7, v0, Lcom/baidu/techain/core/c;->b:I

    .line 380
    iget-object v8, v0, Lcom/baidu/techain/core/c;->c:Ljava/lang/String;

    .line 381
    iget-object v9, v0, Lcom/baidu/techain/core/c;->d:[Ljava/lang/Object;

    .line 382
    const/4 v1, 0x0

    .line 383
    if-eqz v9, :cond_130

    .line 384
    array-length v1, v9

    new-array v2, v1, [Ljava/lang/Class;

    .line 385
    const/4 v1, 0x0

    move v4, v1

    :goto_e0
    array-length v1, v9

    if-ge v4, v1, :cond_12f

    .line 386
    aget-object v1, v9, v4

    check-cast v1, Ljava/lang/String;

    .line 387
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_112

    const-string v10, "@@"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_112

    .line 388
    invoke-static {v1}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 389
    if-eqz v1, :cond_10e

    .line 390
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "convert back class name "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 392
    aput-object v1, v2, v4

    .line 385
    :cond_10e
    :goto_10e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_e0

    .line 396
    :cond_112
    aget-object v1, v9, v4

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v2, v4
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_11c} :catch_11d

    goto :goto_10e

    .line 452
    :catch_11d
    move-exception v0

    :try_start_11e
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 455
    const-string v0, "result"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 456
    const-string v0, "status"

    const/4 v1, 0x7

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_12c} :catch_1c2

    move-object v0, v3

    .line 457
    goto/16 :goto_79

    :cond_12f
    move-object v1, v2

    .line 399
    :cond_130
    :try_start_130
    iget-object v0, v0, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    .line 400
    const/4 v2, 0x1

    if-ne v7, v2, :cond_16f

    .line 402
    invoke-static {v6, v8, v1, v0}, Lcom/baidu/techain/core/e;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 403
    const-string v2, "status"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_154

    .line 405
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iput-object v0, v5, Lcom/baidu/techain/core/c;->f:Ljava/lang/Object;

    .line 448
    :cond_154
    :goto_154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "return bundle"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 449
    const-string v0, "result"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v0, v3

    .line 450
    goto/16 :goto_79

    .line 407
    :cond_16f
    if-nez v7, :cond_154

    .line 408
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 409
    new-instance v4, Lcom/baidu/techain/core/e$2;

    invoke-direct {v4, v3, v5, v2, v8}, Lcom/baidu/techain/core/e$2;-><init>(Landroid/os/Bundle;Lcom/baidu/techain/core/c;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    invoke-static {v6, v8, v4, v1, v0}, Lcom/baidu/techain/core/e;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_17f} :catch_11d

    .line 441
    const-wide/32 v0, 0x2bf20

    :try_start_182
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_187
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_187} :catch_188

    goto :goto_154

    .line 443
    :catch_188
    move-exception v0

    :try_start_189
    const-string v0, "status"

    const/4 v1, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_192
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_192} :catch_11d

    goto :goto_154

    .line 459
    :cond_193
    :try_start_193
    const-string v0, "gz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 460
    invoke-static {p0}, Lcom/baidu/techain/core/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 462
    const-string v0, "status"

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1ac
    move-object v0, v3

    .line 469
    goto/16 :goto_79

    .line 464
    :cond_1af
    new-instance v1, Lcom/baidu/techain/core/c;

    invoke-direct {v1}, Lcom/baidu/techain/core/c;-><init>()V

    .line 465
    iput-object v0, v1, Lcom/baidu/techain/core/c;->f:Ljava/lang/Object;

    .line 466
    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 467
    const-string v0, "status"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1c1
    .catch Ljava/lang/Throwable; {:try_start_193 .. :try_end_1c1} :catch_1c2

    goto :goto_1ac

    .line 475
    :catch_1c2
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 477
    :cond_1c6
    const-string v0, "status"

    const/16 v1, 0xa

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v3

    .line 478
    goto/16 :goto_79

    .line 471
    :cond_1d0
    :try_start_1d0
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1d6
    .catch Ljava/lang/Throwable; {:try_start_1d0 .. :try_end_1d6} :catch_1c2

    move-object v0, v3

    .line 472
    goto/16 :goto_79

    :cond_1d9
    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_63
.end method

.method public static varargs a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 81
    :try_start_1
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 82
    if-nez v0, :cond_11

    .line 83
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    :goto_10
    return-object v0

    .line 85
    :cond_11
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Z)Z

    move-result v1

    .line 86
    if-nez v1, :cond_39

    .line 87
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 88
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_10

    .line 122
    :catch_2a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 124
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    .line 90
    :cond_39
    :try_start_39
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 94
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 96
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    .line 100
    :cond_5d
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 101
    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_10

    .line 106
    :cond_69
    invoke-static {v1}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 108
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 109
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 110
    invoke-static {v0, p0, p1, p2, p3}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_10

    .line 115
    :cond_79
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 116
    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_83} :catch_2a

    move-result-object v0

    goto :goto_10
.end method

.method static varargs a(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 530
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 614
    :goto_10
    return-object v0

    .line 533
    :cond_11
    const-string v0, "gzfi"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "gz"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_21
    move-object v1, p3

    .line 538
    :goto_22
    new-instance v2, Lcom/baidu/techain/core/c;

    invoke-direct {v2}, Lcom/baidu/techain/core/c;-><init>()V

    .line 539
    iput p1, v2, Lcom/baidu/techain/core/c;->a:I

    .line 540
    iput-object p3, v2, Lcom/baidu/techain/core/c;->c:Ljava/lang/String;

    .line 541
    iput p2, v2, Lcom/baidu/techain/core/c;->b:I

    .line 542
    if-eqz p4, :cond_80

    .line 543
    array-length v0, p4

    new-array v3, v0, [Ljava/lang/Object;

    .line 544
    const/4 v0, 0x0

    :goto_33
    array-length v4, p4

    if-ge v0, v4, :cond_7e

    .line 545
    aget-object v4, p4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 547
    aget-object v4, p4, v0

    invoke-static {v4}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 548
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 544
    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 536
    :cond_62
    const-string v0, "invokeMethod"

    move-object v1, v0

    goto :goto_22

    .line 552
    :cond_66
    aget-object v4, p4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6e} :catch_6f

    goto :goto_5f

    .line 612
    :catch_6f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 614
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_10

    .line 555
    :cond_7e
    :try_start_7e
    iput-object v3, v2, Lcom/baidu/techain/core/c;->d:[Ljava/lang/Object;

    .line 557
    :cond_80
    iput-object p5, v2, Lcom/baidu/techain/core/c;->e:[Ljava/lang/Object;

    .line 558
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 559
    const-string v0, "args"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".techain.ac.provider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 564
    const/4 v0, 0x0

    .line 565
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_c7

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    .line 599
    :goto_b9
    if-nez v1, :cond_14e

    .line 600
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_10

    .line 570
    :cond_c7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 571
    if-nez v2, :cond_dd

    .line 572
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_da} :catch_6f

    move-result-object v0

    goto/16 :goto_10

    .line 575
    :cond_dd
    :try_start_dd
    const-class v4, Landroid/content/ContentProviderClient;

    const-string v5, "mContentProvider"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 576
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_ef

    .line 577
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 579
    :cond_ef
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 580
    if-eqz v4, :cond_130

    .line 581
    const-string v0, "android.content.IContentProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 582
    const-string v5, "call"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_11d

    .line 585
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 587
    :cond_11d
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/4 v6, 0x0

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    .line 588
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 590
    check-cast v0, Landroid/os/Bundle;
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_130} :catch_135
    .catchall {:try_start_dd .. :try_end_130} :catchall_149

    .line 596
    :cond_130
    :try_start_130
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_133} :catch_6f

    move-object v1, v0

    .line 597
    goto :goto_b9

    .line 593
    :catch_135
    move-exception v0

    :try_start_136
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 594
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_143
    .catchall {:try_start_136 .. :try_end_143} :catchall_149

    move-result-object v0

    .line 596
    :try_start_144
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_10

    :catchall_149
    move-exception v0

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v0

    .line 602
    :cond_14e
    const-class v0, Lcom/baidu/techain/core/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 603
    const-string v0, "status"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 604
    const/4 v0, 0x0

    .line 605
    if-nez v2, :cond_168

    .line 606
    const-string v0, "result"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/c;

    .line 609
    :cond_168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_175

    const/4 v0, 0x0

    :goto_16f
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_10

    :cond_175
    iget-object v0, v0, Lcom/baidu/techain/core/c;->f:Ljava/lang/Object;
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_177} :catch_6f

    goto :goto_16f
.end method

.method private static varargs a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 288
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Z)Z

    move-result v0

    .line 289
    if-nez v0, :cond_d

    .line 290
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 291
    const-string v0, ""

    .line 326
    :goto_c
    return-object v0

    .line 293
    :cond_d
    invoke-static {p0}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 297
    const-string v0, ""

    goto :goto_c

    .line 300
    :cond_24
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 301
    invoke-static {p0}, Lcom/baidu/techain/core/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 305
    :cond_2c
    invoke-static {v0}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 306
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 307
    const/4 v0, 0x0

    const-string v1, "gz"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_63

    .line 309
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_51

    .line 310
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    .line 312
    :cond_51
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 313
    const-string v0, ""

    goto :goto_c

    .line 318
    :cond_57
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 319
    invoke-static {p0}, Lcom/baidu/techain/core/e;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5d} :catch_5f

    move-result-object v0

    goto :goto_c

    .line 324
    :catch_5f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 326
    :cond_63
    const-string v0, ""

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 191
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Z)Z

    move-result v0

    .line 192
    if-nez v0, :cond_d

    .line 193
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 194
    const-string v0, ""

    .line 232
    :goto_c
    return-object v0

    .line 196
    :cond_d
    invoke-static {p0}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 201
    const-string v0, ""

    goto :goto_c

    .line 204
    :cond_24
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/techain/core/e;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 209
    :cond_2c
    invoke-static {v0}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 211
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 212
    const/4 v0, 0x0

    const-string v1, "gzfi"

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 213
    invoke-static {p0, v0, v1, v2, v3}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_6d

    .line 216
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5e

    .line 217
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5d} :catch_69

    goto :goto_c

    .line 219
    :cond_5e
    const-string v0, ""

    goto :goto_c

    .line 224
    :cond_61
    :try_start_61
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 225
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/techain/core/e;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_67} :catch_69

    move-result-object v0

    goto :goto_c

    .line 230
    :catch_69
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 232
    :cond_6d
    const-string v0, ""

    goto :goto_c
.end method

.method public static varargs a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V
    .registers 12

    .prologue
    .line 34
    :try_start_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/baidu/techain/core/e$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/techain/core/e$1;-><init>(Landroid/content/Context;I[ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 76
    :goto_12
    return-void

    .line 74
    :catch_13
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_12
.end method

.method public static varargs a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/ac/Callback;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    :try_start_2
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 134
    if-nez v0, :cond_1b

    .line 135
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 136
    if-eqz p2, :cond_19

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    move v0, v7

    .line 185
    :goto_1a
    return v0

    .line 141
    :cond_1b
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Z)Z

    move-result v1

    .line 142
    if-nez v1, :cond_3a

    .line 143
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 144
    if-eqz p2, :cond_38

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    move v0, v7

    .line 147
    goto :goto_1a

    .line 149
    :cond_3a
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 153
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 155
    if-eqz p2, :cond_62

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    move v0, v7

    .line 158
    goto :goto_1a

    .line 161
    :cond_64
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 162
    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V

    move v0, v8

    .line 164
    goto :goto_1a

    .line 168
    :cond_75
    invoke-static {v1}, Lcom/baidu/techain/b/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 170
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 171
    sget-object v2, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_80} :catch_bb

    .line 1486
    :try_start_80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1487
    if-eqz p2, :cond_96

    .line 1488
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    :goto_96
    move v0, v8

    .line 173
    goto :goto_1a

    .line 1492
    :cond_98
    new-instance v0, Lcom/baidu/techain/core/e$3;

    move-object v1, p2

    move v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/techain/core/e$3;-><init>(Lcom/baidu/techain/ac/Callback;Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1510
    invoke-virtual {v0}, Lcom/baidu/techain/core/e$3;->start()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_a5} :catch_a6

    goto :goto_96

    :catch_a6
    move-exception v0

    .line 1513
    if-eqz p2, :cond_b7

    .line 1514
    const/4 v0, 0x1

    :try_start_aa
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_b7} :catch_d4

    .line 1519
    :cond_b7
    :goto_b7
    :try_start_b7
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_96

    .line 183
    :catch_bb
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move v0, v7

    .line 185
    goto/16 :goto_1a

    .line 176
    :cond_c2
    :try_start_c2
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 177
    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_d1} :catch_bb

    move v0, v8

    .line 179
    goto/16 :goto_1a

    :catch_d4
    move-exception v0

    goto :goto_b7
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 250
    :try_start_1
    invoke-static {p0}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_18

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_12

    iget v0, v0, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    if-eq v0, v2, :cond_1b

    .line 254
    :cond_12
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 255
    const-string v0, ""
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_95

    .line 283
    :cond_17
    :goto_17
    return-object v0

    .line 258
    :cond_18
    const-string v0, ""

    goto :goto_17

    .line 260
    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 2302
    iget-object v0, v1, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v2, "xytk"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 265
    invoke-static {p0}, Lcom/baidu/techain/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 267
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_17

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 269
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 272
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/baidu/techain/ac/F;->re([B[B)[B

    move-result-object v0

    .line 273
    if-eqz v0, :cond_99

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/techain/b/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2306
    iget-object v2, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v3, "xytk"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2307
    iget-object v1, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_94} :catch_95

    goto :goto_17

    .line 281
    :catch_95
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 283
    :cond_99
    const-string v0, "74FFB5E615AA72E0B057EE43E3D5A23A|440049145074113"

    goto/16 :goto_17
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 237
    if-eqz p2, :cond_26

    .line 238
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 239
    const-string v0, "ice"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4, v0, v7, v1, v2}, Lcom/baidu/techain/core/e;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 245
    :cond_26
    :goto_26
    invoke-static {p0}, Lcom/baidu/techain/core/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_2b
    const-string v0, "ice"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    .line 241
    invoke-static {v4, v0, v7, v1, v2}, Lcom/baidu/techain/core/e;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto :goto_26
.end method
