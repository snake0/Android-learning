.class final Lcom/baidu/techain/core/d$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/techain/core/d;


# direct methods
.method constructor <init>(Lcom/baidu/techain/core/d;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/baidu/techain/core/d$4;->b:Lcom/baidu/techain/core/d;

    iput-object p2, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 1413
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1415
    :try_start_3
    iget-object v0, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1854
    :cond_b
    :goto_b
    return-void

    .line 1419
    :cond_c
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 1421
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/core/g;->a(Landroid/content/Context;)Lcom/baidu/techain/core/g;

    move-result-object v1

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1424
    if-eqz v1, :cond_b

    .line 1428
    iget-object v0, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v2

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", i="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1430
    if-nez v2, :cond_c0

    .line 1431
    iget-object v0, p0, Lcom/baidu/techain/core/d$4;->b:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/a/a;->c(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcom/baidu/techain/core/d$4;->b:Lcom/baidu/techain/core/d;

    iget-object v2, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_60} :catch_b7

    .line 1843
    :try_start_60
    iget-object v1, v1, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v1, v2}, Lcom/baidu/techain/a/a;->a(Ljava/lang/String;)V

    .line 1844
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "f="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1847
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1848
    invoke-static {v1}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 1849
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_af} :catch_b1

    goto/16 :goto_b

    .line 1853
    :catch_b1
    move-exception v0

    :try_start_b2
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b5} :catch_b7

    goto/16 :goto_b

    .line 1498
    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto/16 :goto_b

    .line 1436
    :cond_c0
    :try_start_c0
    iget-object v0, v2, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/baidu/techain/core/f;

    .line 1438
    const-string v3, "com.baidu.techain.engine.EngineImpl"

    invoke-virtual {v0, v3}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1441
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1442
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1446
    if-eqz v0, :cond_b

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "t:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1451
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/baidu/techain/core/d$4$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/baidu/techain/core/d$4$1;-><init>(Lcom/baidu/techain/core/d$4;Lcom/baidu/techain/core/g;Lcom/baidu/techain/core/ApkInfo;)V

    const-wide/32 v5, 0x927c0

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1475
    const-string v3, "unload"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 1476
    invoke-static {v0, v3, v4, v5}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CommonMethods.callMethodOfClass result object="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1482
    iget-object v0, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/techain/core/g;->b(Ljava/lang/String;)Z

    .line 1485
    iget-object v0, p0, Lcom/baidu/techain/core/d$4;->b:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/core/d$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/a/a;->a(Ljava/lang/String;)V

    .line 1486
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->c(Landroid/content/Context;)V

    .line 1488
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "f="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1492
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1493
    invoke-static {v0}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 1494
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 1495
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "d: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_1a2
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_1a2} :catch_b7

    goto/16 :goto_b
.end method
