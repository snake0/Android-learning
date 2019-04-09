.class Lcom/baidu/tts/a/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/a/b;


# instance fields
.field final synthetic a:Lcom/baidu/tts/a/c/b;


# direct methods
.method constructor <init>(Lcom/baidu/tts/a/c/b;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onSynthesizeStart(Lcom/baidu/tts/m/h;)V

    .line 145
    :cond_11
    return-void
.end method

.method public b(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 155
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onSynthesizeFinished(Lcom/baidu/tts/m/h;)V

    .line 157
    :cond_11
    return-void
.end method

.method public c(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 162
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onSynthesizeDataArrived(Lcom/baidu/tts/m/h;)V

    .line 164
    :cond_11
    return-void
.end method

.method public d(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 169
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$1;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onError(Lcom/baidu/tts/m/h;)V

    .line 171
    :cond_11
    return-void
.end method

.method public e(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 175
    const-string v0, "TtsAdapter"

    const-string v1, "onSynthesizeStop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
