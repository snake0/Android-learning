.class Lcom/baidu/tts/b/a/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/e;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/e;I)V
    .registers 3

    .prologue
    .line 519
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput p2, p0, Lcom/baidu/tts/b/a/b/e$a;->b:I

    .line 521
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->c(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/e/c;

    move-result-object v7

    monitor-enter v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_27

    .line 527
    :try_start_7
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->c(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/e/c;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 528
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->c(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/e/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/baidu/tts/b/a/b/e$a;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/e/c;->a(JIIILjava/lang/String;)V

    .line 530
    :cond_22
    monitor-exit v7

    .line 534
    :goto_23
    return-void

    .line 530
    :catchall_24
    move-exception v0

    monitor-exit v7
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    :try_start_26
    throw v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_27} :catch_27

    .line 531
    :catch_27
    move-exception v0

    .line 532
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddPVResultsToDB exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method
