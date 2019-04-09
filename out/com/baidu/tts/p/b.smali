.class public Lcom/baidu/tts/p/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/p/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/baidu/tts/p/b;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/baidu/tts/p/c;

    invoke-direct {v0, p1}, Lcom/baidu/tts/p/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/p/b;->a:Lcom/baidu/tts/p/c;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/tts/p/b;->a:Lcom/baidu/tts/p/c;

    invoke-virtual {v0}, Lcom/baidu/tts/p/c;->a()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/p/b;->c:Ljava/util/concurrent/FutureTask;

    .line 28
    const/4 v1, -0x1

    .line 30
    :try_start_9
    iget-object v0, p0, Lcom/baidu/tts/p/b;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_14} :catch_34

    move-result v0

    .line 36
    :goto_15
    const-string v1, "StatisticsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Statistics uploade result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 31
    :catch_2e
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v0, v1

    .line 35
    goto :goto_15

    .line 33
    :catch_34
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    move v0, v1

    goto :goto_15
.end method

.method public b()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/p/b;->c:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/p/b;->a:Lcom/baidu/tts/p/c;

    invoke-virtual {v0}, Lcom/baidu/tts/p/c;->b()V

    .line 43
    :cond_9
    return-void
.end method
