.class public Lcom/baidu/tts/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/ITts;

.field private b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Lcom/baidu/tts/aop/ttslistener/TtsListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance v0, Lcom/baidu/tts/a/b/a$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/b/a$1;-><init>(Lcom/baidu/tts/a/b/a;)V

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->d:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 55
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->g()Lcom/baidu/tts/aop/tts/ITts;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    .line 56
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->d:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-interface {v0, v1}, Lcom/baidu/tts/aop/tts/ITts;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Lcom/baidu/tts/tools/ResourceTools;->isTextValid(Ljava/lang/String;)Lcom/baidu/tts/f/n;

    move-result-object v0

    .line 285
    if-nez v0, :cond_b

    .line 286
    invoke-direct {p0, p2}, Lcom/baidu/tts/a/b/a;->a(Ljava/util/concurrent/Callable;)I

    move-result v0

    .line 288
    :goto_a
    return v0

    :cond_b
    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_a
.end method

.method private a(Ljava/util/concurrent/Callable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 295
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_9

    .line 296
    const/4 v0, 0x0

    .line 302
    :goto_8
    return v0

    .line 297
    :catch_9
    move-exception v0

    .line 298
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 299
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 300
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 301
    const-string v1, "bdtts-Queue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    goto :goto_8
.end method

.method static synthetic a(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/aop/tts/ITts;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/tts/m/h;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 323
    if-eqz p1, :cond_d

    .line 324
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->e()Lcom/baidu/tts/m/i;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_d

    .line 326
    invoke-virtual {v0}, Lcom/baidu/tts/m/i;->f()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_c
    return-object v0

    .line 330
    :cond_d
    const-string v0, "SpeechSynthesizerAdapter"

    const-string v1, "getUtteranceId null"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static synthetic b(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;
    .registers 5

    .prologue
    .line 335
    if-eqz p1, :cond_21

    .line 336
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->f()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1a

    .line 338
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I

    move-result v1

    .line 339
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    .line 340
    new-instance v0, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {v0}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    .line 341
    iput v1, v0, Lcom/baidu/tts/client/SpeechError;->code:I

    .line 342
    iput-object v2, v0, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    .line 352
    :goto_19
    return-object v0

    .line 345
    :cond_1a
    const-string v0, "SpeechSynthesizerAdapter"

    const-string v1, "ttsError is null"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_21
    new-instance v0, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {v0}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    .line 350
    sget-object v1, Lcom/baidu/tts/f/n;->al:Lcom/baidu/tts/f/n;

    invoke-virtual {v1}, Lcom/baidu/tts/f/n;->b()I

    move-result v1

    iput v1, v0, Lcom/baidu/tts/client/SpeechError;->code:I

    .line 351
    sget-object v1, Lcom/baidu/tts/f/n;->al:Lcom/baidu/tts/f/n;

    invoke-virtual {v1}, Lcom/baidu/tts/f/n;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    goto :goto_19
.end method

.method static synthetic b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    return-object v0
.end method

.method private g()Lcom/baidu/tts/aop/tts/ITts;
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lcom/baidu/tts/aop/tts/TtsFactory;

    invoke-direct {v0}, Lcom/baidu/tts/aop/tts/TtsFactory;-><init>()V

    .line 61
    invoke-interface {v0}, Lcom/baidu/tts/aop/IProxyFactory;->makeProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/aop/tts/ITts;

    return-object v0
.end method

.method private declared-synchronized h()Ljava/util/concurrent/ExecutorService;
    .registers 5

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_15

    .line 272
    new-instance v0, Lcom/baidu/tts/c/a;

    const/16 v1, 0x3a98

    const-string v2, "SpeechSynthesizerPoolThread"

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v3}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/tts/c/a;-><init>(ILjava/lang/String;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 276
    :cond_15
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 271
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 307
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3a

    .line 308
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_11

    .line 309
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 312
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v1}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 314
    const-string v1, "SpeechSynthesizerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTerminated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_37} :catch_3b

    .line 318
    :goto_37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 320
    :cond_3a
    return-void

    .line 315
    :catch_3b
    move-exception v0

    .line 316
    const-string v0, "SpeechSynthesizerAdapter"

    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method


# virtual methods
.method public a(FF)I
    .registers 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/aop/tts/ITts;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setAudioStreamType(I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 166
    new-instance v0, Lcom/baidu/tts/m/e;

    invoke-direct {v0}, Lcom/baidu/tts/m/e;-><init>()V

    .line 167
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/e;->a(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v1, v0}, Lcom/baidu/tts/aop/tts/ITts;->loadCustomResource(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 106
    :try_start_0
    invoke-static {p1}, Lcom/baidu/tts/f/g;->valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/g;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v1, v0, p2}, Lcom/baidu/tts/aop/tts/ITts;->setParam(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 109
    :goto_a
    return v0

    .line 108
    :catch_b
    move-exception v0

    .line 109
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 5

    .prologue
    .line 216
    new-instance v0, Lcom/baidu/tts/a/b/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/tts/a/b/a$b;-><init>(Lcom/baidu/tts/a/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 239
    const/16 v1, 0x64

    if-gt v0, v1, :cond_12

    .line 240
    new-instance v0, Lcom/baidu/tts/a/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/a/b/a$a;-><init>(Lcom/baidu/tts/a/b/a;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/baidu/tts/a/b/a;->a(Ljava/util/concurrent/Callable;)I

    move-result v0

    .line 242
    :goto_11
    return v0

    :cond_12
    sget v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    goto :goto_11
.end method

.method public a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lcom/baidu/tts/f/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/tts/aop/tts/ITts;->setMode(Lcom/baidu/tts/f/m;)V

    .line 87
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setContext(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    if-eq v0, p1, :cond_6

    .line 69
    iput-object p1, p0, Lcom/baidu/tts/a/b/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    .line 71
    :cond_6
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->d()V

    .line 120
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 186
    new-instance v0, Lcom/baidu/tts/m/g;

    invoke-direct {v0}, Lcom/baidu/tts/m/g;-><init>()V

    .line 187
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/g;->b(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/g;->a(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v1, v0}, Lcom/baidu/tts/aop/tts/ITts;->loadModel(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 5

    .prologue
    .line 229
    new-instance v0, Lcom/baidu/tts/a/b/a$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/tts/a/b/a$c;-><init>(Lcom/baidu/tts/a/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/auth/AuthInfo;
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lcom/baidu/tts/f/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/tts/aop/tts/ITts;->auth(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->c()V

    .line 130
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 200
    new-instance v0, Lcom/baidu/tts/m/f;

    invoke-direct {v0}, Lcom/baidu/tts/m/f;-><init>()V

    .line 201
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/f;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/f;->b(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v1, v0}, Lcom/baidu/tts/aop/tts/ITts;->loadEnglishModel(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->i()V

    .line 138
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_c

    .line 139
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->e()V

    .line 141
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->i()V

    .line 150
    :try_start_3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_f

    .line 151
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->f()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 157
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 154
    :catch_11
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public f()I
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/tts/aop/tts/ITts;->freeCustomResource(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method
