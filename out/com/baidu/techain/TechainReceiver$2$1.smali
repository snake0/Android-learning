.class final Lcom/baidu/techain/TechainReceiver$2$1;
.super Lcom/baidu/techain/ac/Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/TechainReceiver$2;


# direct methods
.method constructor <init>(Lcom/baidu/techain/TechainReceiver$2;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/techain/TechainReceiver$2$1;->a:Lcom/baidu/techain/TechainReceiver$2;

    invoke-direct {p0}, Lcom/baidu/techain/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    .line 76
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 77
    if-nez v0, :cond_8

    .line 78
    const/4 v0, 0x0

    .line 107
    :goto_7
    return-object v0

    .line 81
    :cond_8
    invoke-virtual {v0}, Lcom/baidu/techain/core/g;->b()Ljava/util/List;

    move-result-object v0

    .line 82
    if-nez v0, :cond_13

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_13
    iget-object v1, p0, Lcom/baidu/techain/TechainReceiver$2$1;->a:Lcom/baidu/techain/TechainReceiver$2;

    iget-object v1, v1, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v1

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 88
    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v3}, Lcom/baidu/techain/a/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_23

    .line 92
    :try_start_37
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 95
    const/4 v5, 0x1

    aget-object v3, v3, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    .line 96
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/techain/TechainReceiver$2$1;->a:Lcom/baidu/techain/TechainReceiver$2;

    iget-object v6, v6, Lcom/baidu/techain/TechainReceiver$2;->b:Landroid/content/Context;

    .line 100
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/baidu/techain/TechainReceiver$2$1;->a:Lcom/baidu/techain/TechainReceiver$2;

    iget-object v6, v6, Lcom/baidu/techain/TechainReceiver$2;->a:Landroid/content/Intent;

    aput-object v6, v3, v5

    .line 99
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_70} :catch_71

    goto :goto_23

    .line 103
    :catch_71
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_23

    .line 107
    :cond_79
    invoke-super {p0, p1}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method
