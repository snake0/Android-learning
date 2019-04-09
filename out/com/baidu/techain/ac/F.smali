.class public Lcom/baidu/techain/ac/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/techain/ac/FI;


# static fields
.field private static instance:Lcom/baidu/techain/ac/F;

.field private static sAsc:Lcom/baidu/techain/jni/Asc;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/techain/ac/F;
    .registers 2

    .prologue
    .line 41
    const-class v1, Lcom/baidu/techain/ac/F;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/techain/ac/F;->instance:Lcom/baidu/techain/ac/F;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Lcom/baidu/techain/ac/F;

    invoke-direct {v0}, Lcom/baidu/techain/ac/F;-><init>()V

    sput-object v0, Lcom/baidu/techain/ac/F;->instance:Lcom/baidu/techain/ac/F;

    .line 44
    :cond_e
    sget-object v0, Lcom/baidu/techain/ac/F;->instance:Lcom/baidu/techain/ac/F;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public ad([B[B)[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 219
    if-eqz p2, :cond_b

    :try_start_3
    array-length v0, p2

    if-lez v0, :cond_b

    if-eqz p1, :cond_b

    array-length v0, p1

    if-gtz v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 244
    :cond_c
    :goto_c
    return-object v0

    .line 222
    :cond_d
    const-string v0, "3"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/baidu/techain/b/a;->a([B[BZ)[B

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1c

    array-length v2, v0

    if-gtz v2, :cond_c

    .line 227
    :cond_1c
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    if-nez v0, :cond_27

    .line 228
    new-instance v0, Lcom/baidu/techain/jni/Asc;

    invoke-direct {v0}, Lcom/baidu/techain/jni/Asc;-><init>()V

    sput-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    .line 230
    :cond_27
    const-string v0, "4"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2c} :catch_3d

    .line 232
    :try_start_2c
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/techain/jni/Asc;->dc([B[B)[B
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_43

    move-result-object v0

    .line 238
    if-eqz v0, :cond_37

    :try_start_34
    array-length v2, v0

    if-nez v2, :cond_c

    .line 239
    :cond_37
    const-string v2, "5"

    invoke-static {v2}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_c

    .line 243
    :catch_3d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move-object v0, v1

    .line 244
    goto :goto_c

    .line 234
    :catch_43
    move-exception v0

    :try_start_44
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 235
    const-string v0, "5"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4c} :catch_3d

    move-object v0, v1

    .line 236
    goto :goto_c
.end method

.method public ae([B[B)[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 186
    if-eqz p2, :cond_b

    :try_start_3
    array-length v0, p2

    if-lez v0, :cond_b

    if-eqz p1, :cond_b

    array-length v0, p1

    if-gtz v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 212
    :cond_c
    :goto_c
    return-object v0

    .line 189
    :cond_d
    const-string v0, "0"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V

    .line 190
    invoke-static {p2, p1}, Lcom/baidu/techain/b/a;->a([B[B)[B

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1b

    array-length v2, v0

    if-gtz v2, :cond_c

    .line 194
    :cond_1b
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    if-nez v0, :cond_26

    .line 195
    new-instance v0, Lcom/baidu/techain/jni/Asc;

    invoke-direct {v0}, Lcom/baidu/techain/jni/Asc;-><init>()V

    sput-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    .line 197
    :cond_26
    const-string v0, "1"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_3c

    .line 199
    :try_start_2b
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/techain/jni/Asc;->ac([B[B)[B
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_30} :catch_42

    move-result-object v0

    .line 205
    if-eqz v0, :cond_36

    :try_start_33
    array-length v2, v0

    if-nez v2, :cond_c

    .line 206
    :cond_36
    const-string v2, "2"

    invoke-static {v2}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3b} :catch_3c

    goto :goto_c

    .line 211
    :catch_3c
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move-object v0, v1

    .line 212
    goto :goto_c

    .line 201
    :catch_42
    move-exception v0

    :try_start_43
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 202
    const-string v0, "2"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4b} :catch_3c

    move-object v0, v1

    .line 203
    goto :goto_c
.end method

.method public chh(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 351
    :try_start_0
    invoke-static {p1, p2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 354
    :goto_4
    return v0

    .line 353
    :catch_5
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 354
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public varargs cm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/ac/Callback;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 115
    :cond_3b
    if-eqz p4, :cond_43

    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p4, v0}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_43
    :goto_43
    return-void

    .line 121
    :cond_44
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 122
    if-nez v0, :cond_58

    .line 123
    if-eqz p4, :cond_43

    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p4, v0}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_43

    .line 158
    :catch_53
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_43

    .line 129
    :cond_58
    :try_start_58
    invoke-virtual {v0, p2}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v1

    .line 130
    invoke-virtual {v0, p1}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    if-eqz v0, :cond_64

    if-nez v1, :cond_6d

    .line 132
    :cond_64
    if-eqz p4, :cond_43

    .line 133
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p4, v0}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_6c} :catch_53

    goto :goto_43

    .line 139
    :cond_6d
    :try_start_6d
    iget-object v0, v1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/baidu/techain/core/f;

    .line 140
    const-string v1, "com.baidu.techain.engine.EngineImpl"

    invoke-virtual {v0, v1}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    invoke-static {v0, p3, p5, p6}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 148
    if-eqz p4, :cond_43

    .line 149
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p4, v1}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_aa} :catch_ab

    goto :goto_43

    .line 152
    :catch_ab
    move-exception v0

    :try_start_ac
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 153
    if-eqz p4, :cond_43

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p4, v0}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_ba} :catch_53

    goto :goto_43
.end method

.method public varargs cmsi(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .registers 9
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

    .line 374
    :try_start_1
    invoke-static {}, Lcom/baidu/techain/core/d;->a()Lcom/baidu/techain/core/d;

    move-result-object v0

    .line 375
    if-nez v0, :cond_13

    .line 376
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 381
    :goto_12
    return-object v0

    .line 378
    :cond_13
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_12

    .line 380
    :catch_18
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 381
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public gpd()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7112
    :try_start_0
    sget-object v0, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    .line 362
    if-eqz v0, :cond_d

    .line 363
    invoke-virtual {v0}, Lcom/baidu/techain/a/a;->b()Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 368
    :goto_8
    return-object v0

    .line 366
    :catch_9
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 368
    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public gs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 333
    :try_start_0
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 334
    if-nez v0, :cond_9

    .line 335
    const-string v0, ""

    .line 344
    :goto_8
    return-object v0

    .line 337
    :cond_9
    invoke-virtual {v0, p1}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_12

    .line 339
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->libPath:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_15

    goto :goto_8

    .line 341
    :cond_12
    const-string v0, ""

    goto :goto_8

    .line 343
    :catch_15
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 344
    const-string v0, ""

    goto :goto_8
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 1826
    iget-object v0, v0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 1827
    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_f

    .line 52
    :catch_13
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 53
    const-string v0, ""

    goto :goto_f
.end method

.method public r(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p2, :cond_3d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 63
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2674
    :cond_3d
    :goto_3d
    return-void

    .line 67
    :cond_3e
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 69
    if-eqz v0, :cond_3d

    .line 70
    new-instance v1, Lcom/baidu/techain/core/h;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/baidu/techain/core/h;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/h;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 74
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2112
    sget-object v0, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "d="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 77
    if-eqz v0, :cond_3d

    .line 2664
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2665
    const-string v2, "r"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2666
    const-string v2, "b"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    const-string v2, "t"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9c} :catch_b1

    .line 2670
    :try_start_9c
    iget-object v0, v0, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgntechain"

    const-string v3, "p=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_ab} :catch_ac

    goto :goto_3d

    .line 2673
    :catch_ac
    move-exception v0

    :try_start_ad
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_3d

    .line 83
    :catch_b1
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3d
.end method

.method public rd([B[B)[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 284
    if-eqz p2, :cond_b

    :try_start_3
    array-length v0, p2

    if-lez v0, :cond_b

    if-eqz p1, :cond_b

    array-length v0, p1

    if-gtz v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 305
    :cond_c
    :goto_c
    return-object v0

    .line 5165
    :cond_d
    if-eqz p1, :cond_11

    if-nez p2, :cond_29

    :cond_11
    move-object v0, v1

    .line 288
    :goto_12
    if-eqz v0, :cond_17

    array-length v2, v0

    if-gtz v2, :cond_c

    .line 291
    :cond_17
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    if-nez v0, :cond_22

    .line 292
    new-instance v0, Lcom/baidu/techain/jni/Asc;

    invoke-direct {v0}, Lcom/baidu/techain/jni/Asc;-><init>()V

    sput-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_34

    .line 295
    :cond_22
    :try_start_22
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/techain/jni/Asc;->dr([B[B)[B
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_27} :catch_2e

    move-result-object v0

    goto :goto_c

    .line 5168
    :cond_29
    :try_start_29
    invoke-static {p1, p2}, Lcom/baidu/techain/b/h;->a([B[B)[B

    move-result-object v0

    goto :goto_12

    .line 297
    :catch_2e
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_34

    move-object v0, v1

    .line 298
    goto :goto_c

    .line 304
    :catch_34
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move-object v0, v1

    .line 305
    goto :goto_c
.end method

.method public re([B[B)[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 251
    if-eqz p2, :cond_b

    :try_start_3
    array-length v0, p2

    if-lez v0, :cond_b

    if-eqz p1, :cond_b

    array-length v0, p1

    if-gtz v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 277
    :cond_c
    :goto_c
    return-object v0

    .line 254
    :cond_d
    const-string v0, "6"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V

    .line 4172
    if-eqz p1, :cond_16

    if-nez p2, :cond_43

    :cond_16
    move-object v0, v1

    .line 256
    :goto_17
    if-eqz v0, :cond_1c

    array-length v2, v0

    if-gtz v2, :cond_c

    .line 260
    :cond_1c
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    if-nez v0, :cond_27

    .line 261
    new-instance v0, Lcom/baidu/techain/jni/Asc;

    invoke-direct {v0}, Lcom/baidu/techain/jni/Asc;-><init>()V

    sput-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    .line 263
    :cond_27
    const-string v0, "7"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2c} :catch_3d

    .line 265
    :try_start_2c
    sget-object v0, Lcom/baidu/techain/ac/F;->sAsc:Lcom/baidu/techain/jni/Asc;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/techain/jni/Asc;->ar([B[B)[B
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_48

    move-result-object v0

    .line 271
    if-eqz v0, :cond_37

    :try_start_34
    array-length v2, v0

    if-nez v2, :cond_c

    .line 272
    :cond_37
    const-string v2, "8"

    invoke-static {v2}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_c

    .line 276
    :catch_3d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move-object v0, v1

    .line 277
    goto :goto_c

    .line 4175
    :cond_43
    :try_start_43
    invoke-static {p1, p2}, Lcom/baidu/techain/b/h;->a([B[B)[B

    move-result-object v0

    goto :goto_17

    .line 267
    :catch_48
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 268
    const-string v0, "8"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_51} :catch_3d

    move-object v0, v1

    .line 269
    goto :goto_c
.end method

.method public rf(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 324
    :try_start_0
    new-instance v0, Lcom/baidu/techain/ac/U;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/techain/ac/U;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/baidu/techain/ac/U;->start()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 328
    :goto_e
    return-void

    .line 326
    :catch_f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_e
.end method

.method public s(IZ)V
    .registers 8

    .prologue
    .line 3112
    :try_start_0
    sget-object v1, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    .line 175
    if-eqz v1, :cond_32

    .line 176
    if-eqz p2, :cond_33

    const/4 v0, 0x1

    .line 3584
    :goto_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3585
    const-string v3, "s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_3a

    .line 3587
    :try_start_15
    iget-object v0, v1, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgntechain"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and n=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_32} :catch_35

    .line 3594
    :cond_32
    :goto_32
    return-void

    .line 176
    :cond_33
    const/4 v0, 0x0

    goto :goto_7

    .line 3593
    :catch_35
    move-exception v0

    :try_start_36
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_32

    .line 179
    :catch_3a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_32
.end method

.method public sp(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6112
    :try_start_2
    sget-object v2, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    .line 313
    if-eqz v2, :cond_25

    .line 314
    if-eqz p2, :cond_26

    .line 6749
    :goto_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6750
    const-string v3, "s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_16} :catch_2d

    .line 6752
    :try_start_16
    iget-object v0, v2, Lcom/baidu/techain/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgntechain"

    const-string v3, "p=? and n=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_25} :catch_28

    .line 6758
    :cond_25
    :goto_25
    return-void

    :cond_26
    move v0, v1

    .line 314
    goto :goto_8

    .line 6757
    :catch_28
    move-exception v0

    :try_start_29
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_25

    .line 317
    :catch_2d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_25
.end method

.method public u(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lcom/baidu/techain/core/d;->a()Lcom/baidu/techain/core/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/techain/core/d;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 169
    :goto_7
    return-void

    .line 167
    :catch_8
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_7
.end method

.method public ur(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 91
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 92
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 105
    :cond_12
    :goto_12
    return-void

    .line 96
    :cond_13
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_12

    .line 98
    new-instance v1, Lcom/baidu/techain/core/h;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/baidu/techain/core/h;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/techain/core/g;->b(Lcom/baidu/techain/core/h;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_12

    .line 103
    :catch_22
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_12
.end method
