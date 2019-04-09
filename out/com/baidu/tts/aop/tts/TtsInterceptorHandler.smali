.class public Lcom/baidu/tts/aop/tts/TtsInterceptorHandler;
.super Lcom/baidu/tts/aop/AInterceptorHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public registerMethods()V
    .registers 2

    .prologue
    .line 19
    const-string v0, "speak"

    invoke-virtual {p0, v0}, Lcom/baidu/tts/aop/tts/TtsInterceptorHandler;->registerMethod(Ljava/lang/String;)V

    .line 20
    const-string v0, "synthesize"

    invoke-virtual {p0, v0}, Lcom/baidu/tts/aop/tts/TtsInterceptorHandler;->registerMethod(Ljava/lang/String;)V

    .line 21
    const-string v0, "setTtsListener"

    invoke-virtual {p0, v0}, Lcom/baidu/tts/aop/tts/TtsInterceptorHandler;->registerMethod(Ljava/lang/String;)V

    .line 22
    return-void
.end method
