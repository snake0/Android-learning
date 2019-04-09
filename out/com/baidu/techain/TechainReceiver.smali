.class public Lcom/baidu/techain/TechainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lcom/baidu/techain/ac/Callback;

.field private b:Z

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Lcom/baidu/techain/TechainReceiver$1;

    invoke-direct {v0, p0}, Lcom/baidu/techain/TechainReceiver$1;-><init>(Lcom/baidu/techain/TechainReceiver;)V

    iput-object v0, p0, Lcom/baidu/techain/TechainReceiver;->a:Lcom/baidu/techain/ac/Callback;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/TechainReceiver;->b:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/techain/TechainReceiver;->c:J

    return-void
.end method

.method static synthetic a(Ljava/lang/ClassLoader;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 1214
    :try_start_0
    const-string v0, "target_class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 1217
    const-string v2, "target_method"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1218
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1219
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_36

    .line 1222
    :goto_35
    return-void

    .line 1221
    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_35
.end method


# virtual methods
.method public final a()Lcom/baidu/techain/TechainReceiver;
    .registers 3

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/techain/TechainReceiver;->c:J

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/techain/TechainReceiver;->b:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 232
    :goto_9
    return-object p0

    .line 230
    :catch_a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 42
    if-nez p2, :cond_3

    .line 54
    :cond_2
    :goto_2
    return-void

    .line 46
    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcom/baidu/techain/TechainReceiver;->b:Z

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/techain/TechainReceiver;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 49
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 50
    iget-boolean v0, p0, Lcom/baidu/techain/TechainReceiver;->b:Z

    .line 1058
    invoke-static {}, Lcom/baidu/techain/b/r;->a()Lcom/baidu/techain/b/r;

    move-result-object v1

    new-instance v2, Lcom/baidu/techain/TechainReceiver$2;

    invoke-direct {v2, p2, p1, v0}, Lcom/baidu/techain/TechainReceiver$2;-><init>(Landroid/content/Intent;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Lcom/baidu/techain/b/r;->a(Ljava/lang/Runnable;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_32

    goto :goto_2

    .line 52
    :catch_32
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2
.end method
