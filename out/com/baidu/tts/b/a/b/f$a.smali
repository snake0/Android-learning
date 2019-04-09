.class Lcom/baidu/tts/b/a/b/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/m/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/f;

.field private b:I

.field private c:Lcom/baidu/tts/b/a/b/f$c;

.field private d:Lcom/baidu/tts/m/i;

.field private e:Lcom/baidu/tts/b/a/b/f$b;

.field private f:Lcom/baidu/tts/m/h;

.field private g:Lcom/baidu/tts/loopj/SyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;Lcom/baidu/tts/m/h;)V
    .registers 7

    .prologue
    .line 269
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$a;->a:Lcom/baidu/tts/b/a/b/f;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p2, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    .line 272
    iput-object p3, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    .line 273
    iput-object p4, p0, Lcom/baidu/tts/b/a/b/f$a;->d:Lcom/baidu/tts/m/i;

    .line 274
    iput-object p5, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    .line 275
    iput-object p6, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    .line 276
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/m/h;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 285
    .line 287
    :try_start_2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->a:Lcom/baidu/tts/b/a/b/f;

    iget v2, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v3, v3, Lcom/baidu/tts/b/a/b/f$c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->d:Lcom/baidu/tts/m/i;

    iget-object v5, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    :try_end_11
    .catch Lcom/baidu/tts/q/a; {:try_start_2 .. :try_end_11} :catch_9f

    move-result-object v3

    .line 294
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/16 v2, 0x50

    const/16 v4, 0x1bb

    invoke-direct {v0, v6, v2, v4}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    .line 295
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->n()I

    move-result v0

    .line 296
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v2}, Lcom/baidu/tts/b/a/b/f$b;->o()I

    move-result v2

    .line 297
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v4, v0, v2}, Lcom/baidu/tts/loopj/SyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 298
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->p()I

    move-result v0

    .line 299
    const-string v2, "OnlineSynthesizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v2, v0}, Lcom/baidu/tts/loopj/SyncHttpClient;->setTimeout(I)V

    .line 301
    new-instance v5, Lcom/baidu/tts/b/a/b/h;

    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    invoke-direct {v5, v0}, Lcom/baidu/tts/b/a/b/h;-><init>(Lcom/baidu/tts/m/h;)V

    .line 302
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v5, v0}, Lcom/baidu/tts/b/a/b/h;->a(Lcom/baidu/tts/b/a/b/f$b;)V

    .line 304
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    if-ne v0, v6, :cond_87

    .line 305
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    sget-object v2, Lcom/baidu/tts/f/o;->a:Lcom/baidu/tts/f/o;

    invoke-virtual {v2}, Lcom/baidu/tts/f/o;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    .line 306
    const-string v0, "OnlineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverIp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v4, v4, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_87
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v0, v0, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    if-nez v0, :cond_b2

    .line 309
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->q:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 318
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    :goto_9e
    return-object v0

    .line 288
    :catch_9f
    move-exception v0

    .line 289
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->h:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 291
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    goto :goto_9e

    .line 312
    :cond_b2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 313
    const-string v0, "OnlineSynthesizer"

    const-string v2, "before post"

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v2, v2, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    .line 315
    const-string v0, "OnlineSynthesizer"

    const-string v1, "after post"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method

.method public b()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v0}, Lcom/baidu/tts/loopj/SyncHttpClient;->stop()V

    .line 325
    :cond_9
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/f$a;->a()Lcom/baidu/tts/m/h;

    move-result-object v0

    return-object v0
.end method
