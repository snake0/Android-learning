.class Lcom/baidu/tts/loopj/AsyncHttpClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

.field final synthetic val$mayInterruptIfRunning:Z

.field final synthetic val$requestList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpClient;Ljava/util/List;Z)V
    .registers 4

    .prologue
    .line 770
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    iput-object p2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 773
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    # invokes: Lcom/baidu/tts/loopj/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V
    invoke-static {v0, v1, v2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$100(Lcom/baidu/tts/loopj/AsyncHttpClient;Ljava/util/List;Z)V

    .line 774
    return-void
.end method
