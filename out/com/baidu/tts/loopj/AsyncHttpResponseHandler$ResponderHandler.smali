.class Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final mResponder:Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 189
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 190
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;

    .line 191
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 196
    return-void
.end method
