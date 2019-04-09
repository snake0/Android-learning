.class public final Lcom/baidu/techain/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 33
    :try_start_1
    invoke-static {p0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 35
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x186bc

    aput v7, v5, v6

    invoke-static {p0, v2, v3, v4, v5}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 39
    :cond_33
    :goto_33
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 44
    const/16 v2, 0x3c

    if-le v0, v2, :cond_9c

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v2, "0"

    const-string v3, "152"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "1"

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "1014115"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 67
    :goto_75
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 68
    const v0, 0x186bc

    const-string v1, "onReceiveAwakeMessage"

    new-instance v2, Lcom/baidu/techain/a$1;

    invoke-direct {v2}, Lcom/baidu/techain/a$1;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/techain/core/e;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 80
    :goto_9b
    return-void

    .line 54
    :cond_9c
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v2

    .line 55
    if-nez v2, :cond_ae

    .line 56
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a5} :catch_a6

    goto :goto_33

    .line 76
    :catch_a6
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 77
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9b

    .line 60
    :cond_ae
    :try_start_ae
    const-string v3, "com.baidu.techain.x24"

    invoke-virtual {v2, v3}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b3} :catch_a6

    move-result-object v2

    .line 62
    if-eqz v2, :cond_33

    goto :goto_75
.end method
