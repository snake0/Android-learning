.class Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

.field final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 195
    iput-object p1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iput-object p2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v1, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    # getter for: Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z
    invoke-static {v1}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->access$000(Lcom/baidu/tts/loopj/JsonHttpResponseHandler;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    if-nez v1, :cond_25

    .line 200
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v1, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget v2, v2, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v4, v4, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :goto_24
    return-void

    .line 201
    :cond_25
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_43

    .line 202
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v1, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v3, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v4, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_24

    .line 203
    :cond_43
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v1, v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_61

    .line 204
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v1, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v3, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v4, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    goto :goto_24

    .line 205
    :cond_61
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 206
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v1, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v3, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v4, v4, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 208
    :cond_7f
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v1, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget v2, v2, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected response type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto/16 :goto_24
.end method
