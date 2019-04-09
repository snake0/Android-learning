.class public Lcom/baidu/tts/b/b/a/f;
.super Lcom/baidu/tts/b/b/a/a;
.source "SourceFile"


# instance fields
.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Lcom/baidu/tts/b/b/b/c;

.field private g:Lcom/baidu/tts/b/b/a/h;

.field private h:Lcom/baidu/tts/b/b/a/d;

.field private i:Lcom/baidu/tts/b/b/a/g;

.field private j:Lcom/baidu/tts/b/b/a/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/tts/b/b/a/a;-><init>()V

    .line 35
    new-instance v0, Lcom/baidu/tts/b/b/a/h;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/h;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->g:Lcom/baidu/tts/b/b/a/h;

    .line 36
    new-instance v0, Lcom/baidu/tts/b/b/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/d;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->h:Lcom/baidu/tts/b/b/a/d;

    .line 37
    new-instance v0, Lcom/baidu/tts/b/b/a/g;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/g;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->i:Lcom/baidu/tts/b/b/a/g;

    .line 38
    new-instance v0, Lcom/baidu/tts/b/b/a/e;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/e;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->j:Lcom/baidu/tts/b/b/a/e;

    .line 39
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->g:Lcom/baidu/tts/b/b/a/h;

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->b:Lcom/baidu/tts/b/b/a/b;

    .line 41
    invoke-static {}, Lcom/baidu/tts/b/b/b;->a()Lcom/baidu/tts/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b;->b()Lcom/baidu/tts/b/b/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/b/a/f;)Lcom/baidu/tts/b/b/b/c;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    return-object v0
.end method


# virtual methods
.method b(FF)I
    .registers 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/b/b/b/c;->a(FF)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/b/c;->a(I)I

    move-result v0

    return v0
.end method

.method b(Lcom/baidu/tts/b/b/a;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/f;->a:Lcom/baidu/tts/b/b/a;

    .line 176
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 169
    check-cast p1, Lcom/baidu/tts/m/a;

    .line 170
    invoke-virtual {p1}, Lcom/baidu/tts/m/a;->a()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/tts/b/b/b/c;->a(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method e(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/tts/b/b/a/f$a;

    invoke-direct {v1, p0, p1}, Lcom/baidu/tts/b/b/a/f$a;-><init>(Lcom/baidu/tts/b/b/a/f;Lcom/baidu/tts/m/h;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public m()Z
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->b:Lcom/baidu/tts/b/b/a/b;

    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->j:Lcom/baidu/tts/b/b/a/e;

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
    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->b:Lcom/baidu/tts/b/b/a/b;

    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->h:Lcom/baidu/tts/b/b/a/d;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public p()Lcom/baidu/tts/b/b/a/h;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->g:Lcom/baidu/tts/b/b/a/h;

    return-object v0
.end method

.method public q()Lcom/baidu/tts/b/b/a/d;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->h:Lcom/baidu/tts/b/b/a/d;

    return-object v0
.end method

.method public r()Lcom/baidu/tts/b/b/a/g;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->i:Lcom/baidu/tts/b/b/a/g;

    return-object v0
.end method

.method public s()Lcom/baidu/tts/b/b/a/e;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->j:Lcom/baidu/tts/b/b/a/e;

    return-object v0
.end method

.method t()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    new-instance v1, Lcom/baidu/tts/b/b/a/f$1;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/b/a/f$1;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/b/b/c;->a(Lcom/baidu/tts/b/b/a;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .registers 4

    .prologue
    .line 127
    new-instance v0, Lcom/baidu/tts/c/a;

    const/16 v1, 0xc8

    const-string v2, "PlayExecutorPoolThread"

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/c/a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 128
    return-void
.end method

.method v()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->d()V

    .line 132
    return-void
.end method

.method w()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->c()V

    .line 136
    return-void
.end method

.method x()V
    .registers 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->e()V

    .line 140
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_46

    .line 141
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_16

    .line 142
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 145
    :cond_16
    :try_start_16
    const-string v0, "PlayQueueMachine"

    const-string v1, "before await"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v1}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 148
    const-string v1, "PlayQueueMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after await isTer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_43} :catch_47

    .line 152
    :goto_43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 154
    :cond_46
    return-void

    .line 149
    :catch_47
    move-exception v0

    .line 150
    const-string v0, "PlayQueueMachine"

    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method y()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->f()Lcom/baidu/tts/aop/tts/TtsError;

    .line 158
    return-void
.end method

.method z()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->b()V

    .line 166
    return-void
.end method
