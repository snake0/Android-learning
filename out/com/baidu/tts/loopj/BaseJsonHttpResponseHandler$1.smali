.class Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

.field final synthetic val$headers:[Lorg/apache/http/Header;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .registers 5

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    iput-object p2, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iput-object p4, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    new-instance v2, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$1;-><init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 96
    :goto_13
    return-void

    .line 87
    :catch_14
    move-exception v0

    .line 88
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "BaseJsonHttpRH"

    const-string v3, "parseResponse thrown an problem"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    iget-object v1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    new-instance v2, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;

    invoke-direct {v2, p0, v0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;-><init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_13
.end method