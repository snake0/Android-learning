.class public Lcom/baidu/tts/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/j/b;


# static fields
.field private static volatile a:Lcom/baidu/tts/d/c;


# instance fields
.field private b:Lcom/baidu/tts/l/a;

.field private c:Lcom/baidu/tts/d/b/a;

.field private d:Lcom/baidu/tts/d/a/b;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    .line 52
    new-instance v0, Lcom/baidu/tts/d/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    .line 53
    return-void
.end method

.method public static a()Lcom/baidu/tts/d/c;
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    if-nez v0, :cond_13

    .line 57
    const-class v1, Lcom/baidu/tts/d/c;

    monitor-enter v1

    .line 58
    :try_start_7
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    if-nez v0, :cond_12

    .line 59
    new-instance v0, Lcom/baidu/tts/d/c;

    invoke-direct {v0}, Lcom/baidu/tts/d/c;-><init>()V

    sput-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    .line 61
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 63
    :cond_13
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    return-object v0

    .line 61
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/l/a;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a/b;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    return-object v0
.end method

.method private declared-synchronized h()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_b

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 70
    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 67
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/baidu/tts/client/model/DownloadHandler;)Lcom/baidu/tts/client/model/DownloadHandler;
    .registers 5

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    const-string v0, "Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/baidu/tts/d/c$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/d/c$a;-><init>(Lcom/baidu/tts/d/c;Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 145
    invoke-direct {p0}, Lcom/baidu/tts/d/c;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->setCheckFuture(Ljava/util/concurrent/Future;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 147
    monitor-exit p0

    return-object p1

    .line 143
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/baidu/tts/l/a;)V
    .registers 4

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/l/a;

    .line 138
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    iget-object v1, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/l/a;

    invoke-virtual {v1}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->a(Lcom/baidu/tts/database/a;)V

    .line 139
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    iget-object v1, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/l/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/l/a;)V

    .line 140
    return-void
.end method

.method public declared-synchronized b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->c()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 5

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    const-string v0, "Downloader"

    const-string v1, "enter stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->c()V

    .line 105
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5a

    .line 106
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 107
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 108
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->e()V

    .line 109
    const-string v0, "Downloader"

    const-string v1, "after engine stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_63

    .line 112
    :cond_2a
    :try_start_2a
    const-string v0, "Downloader"

    const-string v1, "before awaitTermination"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v1}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 115
    const-string v1, "Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after awaitTermination isTermination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_57} :catch_66
    .catchall {:try_start_2a .. :try_end_57} :catchall_63

    .line 119
    :goto_57
    const/4 v0, 0x0

    :try_start_58
    iput-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 121
    :cond_5a
    const-string v0, "Downloader"

    const-string v1, "end stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_63

    .line 122
    monitor-exit p0

    return-void

    .line 103
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :catch_66
    move-exception v0

    goto :goto_57
.end method

.method public declared-synchronized f()V
    .registers 1

    .prologue
    .line 131
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized g()V
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/baidu/tts/d/c;->h()Ljava/util/concurrent/ExecutorService;

    .line 83
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->A()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
