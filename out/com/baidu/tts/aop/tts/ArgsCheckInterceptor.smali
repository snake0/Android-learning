.class public Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;
.super Lcom/baidu/tts/aop/AInterceptor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptor;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/baidu/tts/m/i;Lcom/baidu/tts/f/n;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 56
    invoke-static {p2}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a(Ljava/lang/Object;Lcom/baidu/tts/m/h;)V

    .line 60
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 64
    check-cast p1, Lcom/baidu/tts/o/a/c;

    .line 65
    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_b

    .line 67
    invoke-interface {v0, p2}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onError(Lcom/baidu/tts/m/h;)V

    .line 69
    :cond_b
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    .line 44
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/baidu/tts/m/i;

    .line 45
    invoke-virtual {v0}, Lcom/baidu/tts/m/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "ArgsCheckInterceptor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Lcom/baidu/tts/tools/ResourceTools;->isTextValid(Ljava/lang/String;)Lcom/baidu/tts/f/n;

    move-result-object v1

    .line 48
    if-nez v1, :cond_2a

    .line 49
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 51
    :goto_29
    return-object v0

    :cond_2a
    sget-object v1, Lcom/baidu/tts/f/n;->Q:Lcom/baidu/tts/f/n;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a(Ljava/lang/Object;Lcom/baidu/tts/m/i;Lcom/baidu/tts/f/n;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_29
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a:Ljava/util/List;

    const-string v1, "speak"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a:Ljava/util/List;

    const-string v1, "synthesize"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
