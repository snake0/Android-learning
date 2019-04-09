.class Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

.field final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V
    .registers 3

    .prologue
    .line 167
    iput-object p1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v1, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v3, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 171
    return-void
.end method
