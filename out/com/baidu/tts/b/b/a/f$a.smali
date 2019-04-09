.class Lcom/baidu/tts/b/b/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/b/a/f;

.field private b:Lcom/baidu/tts/m/h;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 192
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/f$a;->a:Lcom/baidu/tts/b/b/a/f;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/baidu/tts/b/b/a/f$a;->b:Lcom/baidu/tts/m/h;

    .line 195
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 199
    const-string v0, "PlayQueueMachine"

    const-string v1, "enter run"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f$a;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-static {v0}, Lcom/baidu/tts/b/b/a/f;->a(Lcom/baidu/tts/b/b/a/f;)Lcom/baidu/tts/b/b/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f$a;->b:Lcom/baidu/tts/m/h;

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/b/b/c;->a(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/aop/tts/TtsError;

    .line 201
    const-string v0, "PlayQueueMachine"

    const-string v1, "end run"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method
