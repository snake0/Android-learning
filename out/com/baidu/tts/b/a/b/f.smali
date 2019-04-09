.class public Lcom/baidu/tts/b/a/b/f;
.super Lcom/baidu/tts/b/a/b/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/baidu/tts/b/a/b/f$b;

.field private c:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    .line 458
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/f;)D
    .registers 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/baidu/tts/b/a/b/f;->c:D

    return-wide v0
.end method

.method private a(ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;
    .registers 13

    .prologue
    const/4 v8, 0x1

    .line 223
    invoke-static {p3}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v7

    .line 224
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->y()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/tts/b/a/b/f$b;

    .line 225
    new-instance v1, Lcom/baidu/tts/b/a/b/f$a;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/b/a/b/f$a;-><init>(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;Lcom/baidu/tts/m/h;)V

    .line 227
    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 228
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 230
    invoke-virtual {v6}, Lcom/baidu/tts/b/a/b/f$b;->p()I

    move-result v2

    int-to-long v4, v2

    .line 232
    :try_start_28
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/baidu/tts/m/h;

    move-object v1, v0
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_32} :catch_34
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_28 .. :try_end_32} :catch_43
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_28 .. :try_end_32} :catch_56

    move-object v7, v1

    .line 252
    :goto_33
    return-object v7

    .line 233
    :catch_34
    move-exception v2

    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 235
    invoke-virtual {v3, v8}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 236
    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$a;->b()V

    .line 239
    throw v2

    .line 240
    :catch_43
    move-exception v1

    .line 241
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->n:Lcom/baidu/tts/f/n;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 244
    invoke-virtual {v7, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_33

    .line 245
    :catch_56
    move-exception v2

    .line 246
    const-string v4, "OnlineSynthesizer"

    const-string v5, "startOnceHttpRequest timeout"

    invoke-static {v4, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3, v8}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 248
    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$a;->b()V

    .line 249
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v3, Lcom/baidu/tts/f/n;->o:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v3, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 250
    invoke-virtual {v7, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_33
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;
    .registers 5

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/tts/b/a/b/f;->a(ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 330
    if-nez p4, :cond_4

    .line 414
    :goto_3
    return-object v1

    .line 333
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->X:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->W:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->C:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Android"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->j()Ljava/lang/String;

    move-result-object v3

    .line 339
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v5, Lcom/baidu/tts/f/g;->ab:Lcom/baidu/tts/f/g;

    invoke-virtual {v5}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->e()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {v3}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 342
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v5, Lcom/baidu/tts/f/g;->O:Lcom/baidu/tts/f/g;

    invoke-virtual {v5}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_67
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/baidu/tts/m/i;->c(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p3}, Lcom/baidu/tts/m/i;->d()Ljava/lang/String;

    move-result-object v4

    .line 346
    const/4 v5, 0x1

    if-ne p1, v5, :cond_211

    .line 349
    :try_start_75
    invoke-virtual {p3}, Lcom/baidu/tts/m/i;->c()Ljava/lang/String;

    move-result-object v5

    .line 350
    invoke-static {v5, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 351
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v7, Lcom/baidu/tts/f/g;->Y:Lcom/baidu/tts/f/g;

    invoke-virtual {v7}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v5, Lcom/baidu/tts/f/g;->Z:Lcom/baidu/tts/f/g;

    invoke-virtual {v5}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/tts/h/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 353
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v7, Lcom/baidu/tts/f/g;->Z:Lcom/baidu/tts/f/g;

    invoke-virtual {v7}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_b7

    .line 356
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v6, Lcom/baidu/tts/f/g;->aa:Lcom/baidu/tts/f/g;

    invoke-virtual {v6}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_b7
    invoke-static {v3}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 359
    const-string v0, "OnlineSynthesizer"

    const-string v3, "before online auth"

    invoke-static {v0, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/auth/c$a;

    move-result-object v0

    .line 361
    const-string v3, "OnlineSynthesizer"

    const-string v5, "after online auth"

    invoke-static {v3, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcom/baidu/tts/auth/c$a;->g()Z

    move-result v3

    if-eqz v3, :cond_247

    .line 363
    invoke-virtual {v0}, Lcom/baidu/tts/auth/c$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v5, Lcom/baidu/tts/f/g;->aj:Lcom/baidu/tts/f/g;

    invoke-virtual {v5}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_eb
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->H:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->r()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->J:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->K:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->c()Lcom/baidu/tts/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->b()[Lcom/baidu/tts/f/c;

    move-result-object v0

    .line 378
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 379
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->b()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/baidu/tts/b/a/b/f;->c:D

    .line 381
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->L:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->ac:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->ad:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->M:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->N:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->ae:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->l()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->af:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->G:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->s()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->D:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->v()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->F:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->w()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->E:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->x()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->T:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->t()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_211
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_75 .. :try_end_211} :catch_24d

    .line 402
    :cond_211
    :goto_211
    :try_start_211
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_252

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 404
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_23e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_211 .. :try_end_23e} :catch_23f

    goto :goto_21a

    .line 411
    :catch_23f
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    :goto_244
    move-object v1, v0

    .line 414
    goto/16 :goto_3

    .line 366
    :cond_247
    :try_start_247
    new-instance v0, Lcom/baidu/tts/q/a;

    invoke-direct {v0}, Lcom/baidu/tts/q/a;-><init>()V

    throw v0
    :try_end_24d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_247 .. :try_end_24d} :catch_24d

    .line 395
    :catch_24d
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_211

    .line 409
    :cond_252
    :try_start_252
    const-string v0, "OnlineSynthesizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_26f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_252 .. :try_end_26f} :catch_23f

    goto :goto_244
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    .registers 6

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/tts/b/a/b/f;->a(ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 425
    sget-object v0, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 455
    sget-object v0, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 445
    sget-object v0, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 5

    .prologue
    .line 78
    :try_start_0
    new-instance v0, Lcom/baidu/tts/b/a/b/f$d;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/b/a/b/f$d;-><init>(Lcom/baidu/tts/b/a/b/f;Lcom/baidu/tts/m/i;)V

    .line 79
    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$d;->a()Lcom/baidu/tts/aop/tts/TtsError;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_c

    move-result-object v0

    .line 83
    :goto_9
    return-object v0

    .line 80
    :catch_a
    move-exception v0

    .line 81
    throw v0

    .line 82
    :catch_c
    move-exception v0

    .line 83
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->j:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OnlineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOnlineSynthesizerParams;)V"
        }
    .end annotation

    .prologue
    .line 66
    check-cast p1, Lcom/baidu/tts/b/a/b/f$b;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f;->b:Lcom/baidu/tts/b/a/b/f$b;

    .line 68
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 435
    sget-object v0, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    return v0
.end method
