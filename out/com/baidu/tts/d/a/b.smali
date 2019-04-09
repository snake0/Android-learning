.class public Lcom/baidu/tts/d/a/b;
.super Lcom/baidu/tts/j/a;
.source "SourceFile"


# instance fields
.field private volatile a:Lcom/baidu/tts/d/a/a;

.field private b:Lcom/baidu/tts/d/a/i;

.field private c:Lcom/baidu/tts/d/a/f;

.field private f:Lcom/baidu/tts/d/a/d;

.field private g:Lcom/baidu/tts/d/a/h;

.field private h:Ljava/util/concurrent/ThreadPoolExecutor;

.field private i:Lcom/baidu/tts/l/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/baidu/tts/j/a;-><init>()V

    .line 49
    new-instance v0, Lcom/baidu/tts/d/a/i;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/i;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/i;

    .line 50
    new-instance v0, Lcom/baidu/tts/d/a/f;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/f;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/f;

    .line 51
    new-instance v0, Lcom/baidu/tts/d/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/d;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->f:Lcom/baidu/tts/d/a/d;

    .line 52
    new-instance v0, Lcom/baidu/tts/d/a/h;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/h;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/h;

    .line 53
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/i;

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    .line 54
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/d/a/b;)Lcom/baidu/tts/l/a;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->i:Lcom/baidu/tts/l/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/tts/d/a/a;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a/a;->a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/d/a/a;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    .line 76
    return-void
.end method

.method public a(Lcom/baidu/tts/l/a;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/tts/d/a/b;->i:Lcom/baidu/tts/l/a;

    .line 62
    return-void
.end method

.method b(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;
    .registers 7

    .prologue
    .line 205
    new-instance v2, Lcom/baidu/tts/d/a/b$a;

    invoke-direct {v2, p0, p1}, Lcom/baidu/tts/d/a/b$a;-><init>(Lcom/baidu/tts/d/a/b;Lcom/baidu/tts/d/a/c;)V

    .line 206
    invoke-virtual {p1}, Lcom/baidu/tts/d/a/c;->c()V

    .line 207
    const-string v0, "DownloadEngine"

    const-string v1, "before submit"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    .line 210
    :try_start_10
    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_22

    move-result-object v0

    .line 216
    :goto_16
    new-instance v1, Lcom/baidu/tts/d/a/e;

    invoke-direct {v1}, Lcom/baidu/tts/d/a/e;-><init>()V

    .line 217
    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/e;->a(Ljava/util/concurrent/Future;)V

    .line 218
    invoke-virtual {v1, v2}, Lcom/baidu/tts/d/a/e;->a(Lcom/baidu/tts/d/a/b$a;)V

    .line 219
    return-object v1

    .line 211
    :catch_22
    move-exception v1

    .line 212
    const-string v3, "DownloadEngine"

    const-string v4, "submit exception"

    invoke-static {v3, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/f/n;->ak:Lcom/baidu/tts/f/n;

    invoke-virtual {v3, v4, v1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 214
    invoke-virtual {p1, v1}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_16
.end method

.method protected g()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->a()V

    .line 127
    return-void
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->c()V

    .line 135
    return-void
.end method

.method protected j()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->d()V

    .line 143
    return-void
.end method

.method protected k()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->e()V

    .line 151
    return-void
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->f()V

    .line 159
    return-void
.end method

.method public m()Z
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/h;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/f;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public o()Lcom/baidu/tts/d/a/i;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/i;

    return-object v0
.end method

.method public p()Lcom/baidu/tts/d/a/f;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/f;

    return-object v0
.end method

.method public q()Lcom/baidu/tts/d/a/d;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->f:Lcom/baidu/tts/d/a/d;

    return-object v0
.end method

.method public r()Lcom/baidu/tts/d/a/h;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/h;

    return-object v0
.end method

.method s()V
    .registers 4

    .prologue
    .line 182
    const/4 v0, 0x5

    new-instance v1, Lcom/baidu/tts/g/a/a;

    const-string v2, "downloadPoolThread"

    invoke-direct {v1, v2}, Lcom/baidu/tts/g/a/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 183
    return-void
.end method

.method t()V
    .registers 5

    .prologue
    .line 186
    const-string v0, "DownloadEngine"

    const-string v1, "enter stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_48

    .line 188
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_18

    .line 189
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 192
    :cond_18
    :try_start_18
    const-string v0, "DownloadEngine"

    const-string v1, "before awaitTermination"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v1}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 195
    const-string v1, "DownloadEngine"

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
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_45} :catch_50

    .line 199
    :goto_45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 201
    :cond_48
    const-string v0, "DownloadEngine"

    const-string v1, "end stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 196
    :catch_50
    move-exception v0

    goto :goto_45
.end method
