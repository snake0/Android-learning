.class public Lcom/baidu/tts/l/a/e;
.super Lcom/baidu/tts/loopj/JsonHttpResponseHandler;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:Lcom/baidu/tts/client/model/ModelFileBags;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelFileBags;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/tts/l/a/e;->b:Lcom/baidu/tts/client/model/ModelFileBags;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 73
    const-string v0, "GetModelFileInfosHttpHandler"

    const-string v1, "onFailure1"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/l/a/e;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 77
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 90
    const-string v0, "GetModelFileInfosHttpHandler"

    const-string v1, "onFailure2"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    .line 92
    if-eqz p4, :cond_e

    .line 93
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_e
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1, v0, p3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/l/a/e;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 97
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 50
    const-string v0, "GetModelFileInfosHttpHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/baidu/tts/f/g;->v:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    sget-object v1, Lcom/baidu/tts/f/g;->w:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v0, :cond_32

    const/16 v2, -0xfa5

    if-ne v0, v2, :cond_49

    .line 54
    :cond_32
    sget-object v0, Lcom/baidu/tts/f/g;->c:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-direct {v1}, Lcom/baidu/tts/client/model/ModelFileBags;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/l/a/e;->b:Lcom/baidu/tts/client/model/ModelFileBags;

    .line 56
    iget-object v1, p0, Lcom/baidu/tts/l/a/e;->b:Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/client/model/ModelFileBags;->parseJson(Lorg/json/JSONArray;)V

    .line 60
    :goto_48
    return-void

    .line 58
    :cond_49
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->ad:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/l/a/e;->a:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_48
.end method
