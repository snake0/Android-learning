.class Lcom/baidu/tts/b/a/b/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/aop/tts/TtsError;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:Lcom/baidu/tts/b/a/b/e;

.field private c:Lcom/baidu/tts/m/i;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/e;Lcom/baidu/tts/m/i;)V
    .registers 4

    .prologue
    .line 372
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/b/a/b/e$c;->d:I

    .line 370
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->a:Ljava/util/concurrent/ExecutorService;

    .line 373
    iput-object p2, p0, Lcom/baidu/tts/b/a/b/e$c;->c:Lcom/baidu/tts/m/i;

    .line 374
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 400
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/e$b;)Lcom/baidu/tts/auth/b$a;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_204

    .line 402
    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 404
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->x()Ljava/lang/String;

    move-result-object v0

    .line 407
    const-string v1, "\\d+(.\\d+)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 408
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_192

    .line 409
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v1

    aget-wide v1, v1, v5

    invoke-static {v1, v2, v4, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    .line 419
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->v()Ljava/lang/String;

    move-result-object v0

    .line 422
    const-string v1, "\\d+(.\\d+)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 423
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1a3

    .line 424
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v1

    aget-wide v1, v1, v5

    invoke-static {v1, v2, v6, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    .line 435
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->w()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v1, "\\d+(.\\d+)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 439
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1b4

    .line 440
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v1

    aget-wide v1, v1, v5

    invoke-static {v1, v2, v7, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    .line 451
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->h()Ljava/lang/String;

    move-result-object v0

    .line 454
    const-string v1, "\\d+(.\\d+)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 455
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1c5

    .line 456
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v1

    aget-wide v1, v1, v5

    invoke-static {v1, v2, v8, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    .line 466
    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v5

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v5, v2, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    move-result v0

    .line 467
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engineResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v5

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$b;->a()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 479
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v5

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$b;->b()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 481
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v5

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$b;->c()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 483
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v5

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$b;->u()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 485
    invoke-static {p0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->setOnNewDataListener(Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;)V

    .line 486
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->c:Lcom/baidu/tts/m/i;

    sget-object v1, Lcom/baidu/tts/f/d;->d:Lcom/baidu/tts/f/d;

    invoke-virtual {v1}, Lcom/baidu/tts/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/i;->c(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->c:Lcom/baidu/tts/m/i;

    invoke-virtual {v0}, Lcom/baidu/tts/m/i;->e()[B

    move-result-object v0

    .line 488
    const-string v1, "OfflineSynthesizer"

    const-string v2, "before bdttssynthesis"

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v1

    aget-wide v1, v1, v5

    array-length v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSynthesis(J[BI)I

    move-result v1

    .line 491
    const-string v0, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after bdttssynthesis result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :try_start_182
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/tts/b/a/b/e$a;

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-direct {v2, v3, v1}, Lcom/baidu/tts/b/a/b/e$a;-><init>(Lcom/baidu/tts/b/a/b/e;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_18e} :catch_1d6

    .line 499
    :goto_18e
    if-nez v1, :cond_1f4

    .line 500
    const/4 v0, 0x0

    .line 509
    :goto_191
    return-object v0

    .line 413
    :cond_192
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 414
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v2}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v2

    aget-wide v2, v2, v5

    invoke-static {v2, v3, v4, v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    goto/16 :goto_45

    .line 428
    :cond_1a3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 429
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v2}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v2

    aget-wide v2, v2, v5

    invoke-static {v2, v3, v6, v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    goto/16 :goto_6e

    .line 444
    :cond_1b4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 445
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v2}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v2

    aget-wide v2, v2, v5

    invoke-static {v2, v3, v7, v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    goto/16 :goto_97

    .line 460
    :cond_1c5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 461
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v2}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v2

    aget-wide v2, v2, v5

    invoke-static {v2, v3, v8, v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    goto/16 :goto_c0

    .line 495
    :catch_1d6
    move-exception v0

    .line 496
    const-string v2, "OfflineSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddPVResultsToDB start exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18e

    .line 502
    :cond_1f4
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/f/n;->B:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;I)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_191

    .line 506
    :cond_1ff
    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_191

    .line 509
    :cond_204
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->u:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_191
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/e$c;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public onNewData([BI)I
    .registers 5

    .prologue
    .line 378
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$c;->c:Lcom/baidu/tts/m/i;

    invoke-static {v0}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v0

    .line 379
    sget-object v1, Lcom/baidu/tts/f/f;->b:Lcom/baidu/tts/f/f;

    invoke-virtual {v1}, Lcom/baidu/tts/f/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->e(I)V

    .line 380
    sget-object v1, Lcom/baidu/tts/f/a;->a:Lcom/baidu/tts/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/a;)V

    .line 381
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a([B)V

    .line 382
    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/h;->d(I)V

    .line 383
    iget v1, p0, Lcom/baidu/tts/b/a/b/e$c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/tts/b/a/b/e$c;->d:I

    .line 387
    iget v1, p0, Lcom/baidu/tts/b/a/b/e$c;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->b(I)V

    .line 388
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$c;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/h;)V

    .line 389
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 390
    const-string v0, "OfflineSynthesizer"

    const-string v1, "interrupted to interrupt syn"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v0, -0x1

    .line 394
    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method
