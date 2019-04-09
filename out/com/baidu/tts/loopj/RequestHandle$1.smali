.class Lcom/baidu/tts/loopj/RequestHandle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/RequestHandle;

.field final synthetic val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

.field final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/RequestHandle;Lcom/baidu/tts/loopj/AsyncHttpRequest;Z)V
    .registers 4

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->this$0:Lcom/baidu/tts/loopj/RequestHandle;

    iput-object p2, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

    iput-boolean p3, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

    iget-boolean v1, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancel(Z)Z

    .line 59
    return-void
.end method
