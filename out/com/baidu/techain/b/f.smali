.class public final Lcom/baidu/techain/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/concurrent/locks/Lock;

.field private static c:Lcom/baidu/techain/b/f;


# instance fields
.field public a:Lcom/baidu/techain/rp/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/baidu/techain/b/f;->b:Ljava/util/concurrent/locks/Lock;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/techain/b/f;->c:Lcom/baidu/techain/b/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/baidu/techain/rp/f/a;

    invoke-direct {v0, p1}, Lcom/baidu/techain/rp/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/techain/b/f;
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/techain/b/f;->c:Lcom/baidu/techain/b/f;

    if-eqz v0, :cond_7

    .line 25
    sget-object v0, Lcom/baidu/techain/b/f;->c:Lcom/baidu/techain/b/f;

    .line 32
    :goto_6
    return-object v0

    .line 28
    :cond_7
    :try_start_7
    sget-object v0, Lcom/baidu/techain/b/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 29
    sget-object v0, Lcom/baidu/techain/b/f;->c:Lcom/baidu/techain/b/f;

    if-nez v0, :cond_17

    .line 30
    new-instance v0, Lcom/baidu/techain/b/f;

    invoke-direct {v0, p0}, Lcom/baidu/techain/b/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/techain/b/f;->c:Lcom/baidu/techain/b/f;

    .line 32
    :cond_17
    sget-object v0, Lcom/baidu/techain/b/f;->c:Lcom/baidu/techain/b/f;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    .line 34
    sget-object v1, Lcom/baidu/techain/b/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6

    :catchall_1f
    move-exception v0

    sget-object v1, Lcom/baidu/techain/b/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    .line 1077
    iget-object v1, v0, Lcom/baidu/techain/rp/f/a;->d:Lcom/baidu/techain/rp/e/a;

    if-nez v1, :cond_d

    .line 1078
    new-instance v1, Lcom/baidu/techain/rp/e/a;

    invoke-direct {v1}, Lcom/baidu/techain/rp/e/a;-><init>()V

    iput-object v1, v0, Lcom/baidu/techain/rp/f/a;->d:Lcom/baidu/techain/rp/e/a;

    .line 1080
    :cond_d
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1081
    const-string v2, "com.b.r.p"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1085
    iget-object v2, v0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/techain/rp/f/a;->d:Lcom/baidu/techain/rp/e/a;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1065
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1066
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1067
    invoke-virtual {v0, v1}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V

    .line 40
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    .line 2071
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2072
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2073
    invoke-virtual {v0, v1}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V

    .line 44
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 56
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 58
    iget-object v1, p0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    invoke-virtual {v1, v0}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V

    .line 59
    return-void
.end method
