.class public Lcom/baidu/techain/b/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:I

.field private static volatile c:Lcom/baidu/techain/b/r;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/baidu/techain/b/r;->b:I

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/techain/b/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    sget v0, Lcom/baidu/techain/b/r;->b:I

    if-gtz v0, :cond_1d

    const/4 v1, 0x1

    .line 15
    :goto_b
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/baidu/techain/b/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    return-void

    .line 14
    :cond_1d
    sget v1, Lcom/baidu/techain/b/r;->b:I

    goto :goto_b
.end method

.method public static a()Lcom/baidu/techain/b/r;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/techain/b/r;->c:Lcom/baidu/techain/b/r;

    if-nez v0, :cond_13

    .line 35
    :try_start_4
    const-class v1, Lcom/baidu/techain/b/r;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_19

    .line 36
    :try_start_7
    sget-object v0, Lcom/baidu/techain/b/r;->c:Lcom/baidu/techain/b/r;

    if-nez v0, :cond_12

    .line 37
    new-instance v0, Lcom/baidu/techain/b/r;

    invoke-direct {v0}, Lcom/baidu/techain/b/r;-><init>()V

    sput-object v0, Lcom/baidu/techain/b/r;->c:Lcom/baidu/techain/b/r;

    .line 39
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 44
    :cond_13
    :goto_13
    sget-object v0, Lcom/baidu/techain/b/r;->c:Lcom/baidu/techain/b/r;

    return-object v0

    .line 39
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19

    .line 41
    :catch_19
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_13
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/b/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 30
    :goto_5
    return-void

    .line 27
    :catch_6
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5
.end method
