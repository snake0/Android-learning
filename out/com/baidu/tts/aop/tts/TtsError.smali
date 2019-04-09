.class public Lcom/baidu/tts/aop/tts/TtsError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/h/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->b:I

    return v0
.end method

.method public getDetailCode()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/h/a/b;->a(Lcom/baidu/tts/aop/tts/TtsError;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->b:I

    goto :goto_a
.end method

.method public getDetailMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/h/a/b;->b(Lcom/baidu/tts/aop/tts/TtsError;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    goto :goto_a

    :cond_12
    const-string v0, "TtsErrorFlyweight is null"

    goto :goto_a
.end method

.method public getErrorEnum()Lcom/baidu/tts/f/n;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/h/a/b;->a()Lcom/baidu/tts/f/n;

    move-result-object v0

    goto :goto_5
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTtsErrorFlyweight()Lcom/baidu/tts/h/a/b;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->b:I

    .line 62
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->a:Ljava/lang/Throwable;

    .line 48
    return-void
.end method

.method public setTtsErrorFlyweight(Lcom/baidu/tts/h/a/b;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/h/a/b;

    .line 30
    return-void
.end method
