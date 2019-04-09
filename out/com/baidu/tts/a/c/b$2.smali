.class Lcom/baidu/tts/a/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/b/a;


# instance fields
.field final synthetic a:Lcom/baidu/tts/a/c/b;


# direct methods
.method constructor <init>(Lcom/baidu/tts/a/c/b;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 189
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayStart(Lcom/baidu/tts/m/h;)V

    .line 191
    :cond_11
    return-void
.end method

.method public b(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 196
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayProgressUpdate(Lcom/baidu/tts/m/h;)V

    .line 198
    :cond_11
    return-void
.end method

.method public c(Lcom/baidu/tts/m/h;)V
    .registers 6

    .prologue
    .line 207
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 209
    :try_start_8
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayFinished(Lcom/baidu/tts/m/h;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    .line 214
    :cond_11
    :goto_11
    return-void

    .line 210
    :catch_12
    move-exception v0

    .line 211
    const-string v1, "TtsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayFinished exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
