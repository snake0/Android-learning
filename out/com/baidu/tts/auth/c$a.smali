.class public Lcom/baidu/tts/auth/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/k/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/baidu/tts/auth/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .prologue
    .line 263
    iput-wide p1, p0, Lcom/baidu/tts/auth/c$a;->c:J

    .line 264
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 5

    .prologue
    .line 277
    if-eqz p1, :cond_28

    .line 278
    const-string v0, "OnlineAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_28
    iput-object p1, p0, Lcom/baidu/tts/auth/c$a;->d:Lcom/baidu/tts/aop/tts/TtsError;

    .line 281
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/baidu/tts/auth/c$a;->a:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/baidu/tts/auth/c$a;->d:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/baidu/tts/auth/c$a;->b:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public g()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 288
    iget-object v2, p0, Lcom/baidu/tts/auth/c$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 289
    iget-object v2, p0, Lcom/baidu/tts/auth/c$a;->b:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 300
    :cond_e
    :goto_e
    return v0

    .line 292
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 293
    iget-wide v4, p0, Lcom/baidu/tts/auth/c$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    move v0, v1

    .line 296
    goto :goto_e

    :cond_1b
    move v0, v1

    .line 300
    goto :goto_e
.end method
