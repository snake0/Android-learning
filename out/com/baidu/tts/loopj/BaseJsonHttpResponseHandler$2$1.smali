.class Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

.field final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 117
    iput-object p1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

    iput-object p2, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

    iget v1, v1, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v2, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

    iget-object v2, v2, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

    iget-object v4, v4, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$responseString:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method