.class public Lcom/baidu/tts/p/d;
.super Lcom/baidu/tts/loopj/JsonHttpResponseHandler;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/tts/p/d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/tts/p/d;->b:I

    return v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p4, :cond_7

    .line 30
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_7
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1, v0, p3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/p/d;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 35
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 39
    sget-object v0, Lcom/baidu/tts/f/g;->v:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    sget-object v1, Lcom/baidu/tts/f/g;->w:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    if-nez v0, :cond_19

    .line 44
    iput v0, p0, Lcom/baidu/tts/p/d;->b:I

    .line 48
    :goto_18
    return-void

    .line 46
    :cond_19
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->ad:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/p/d;->a:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_18
.end method
