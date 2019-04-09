.class public Lcom/baidu/tts/l/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/client/model/ModelBags;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/client/model/Conditions;

.field private b:Lcom/baidu/tts/loopj/RequestHandle;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/client/model/Conditions;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/baidu/tts/l/a/h;->a:Lcom/baidu/tts/client/model/Conditions;

    .line 38
    return-void
.end method

.method private b()Lorg/apache/http/entity/StringEntity;
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/tts/l/a/h;->a:Lcom/baidu/tts/client/model/Conditions;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/Conditions;->getJSONConditions()Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    :try_start_6
    sget-object v0, Lcom/baidu/tts/f/g;->d:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    sget-object v0, Lcom/baidu/tts/f/g;->t:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1c} :catch_3e

    .line 71
    :goto_1c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "GetServerModelsWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getlist params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 74
    return-object v1

    .line 67
    :catch_3e
    move-exception v0

    .line 69
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1c
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelBags;
    .registers 7

    .prologue
    .line 47
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/4 v1, 0x1

    const/16 v2, 0x50

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    .line 48
    sget-object v1, Lcom/baidu/tts/f/o;->b:Lcom/baidu/tts/f/o;

    invoke-virtual {v1}, Lcom/baidu/tts/f/o;->a()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-direct {p0}, Lcom/baidu/tts/l/a/h;->b()Lorg/apache/http/entity/StringEntity;

    move-result-object v3

    .line 50
    new-instance v5, Lcom/baidu/tts/l/a/b;

    invoke-direct {v5}, Lcom/baidu/tts/l/a/b;-><init>()V

    .line 51
    const/4 v1, 0x0

    const-string v4, "application/json"

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/l/a/h;->b:Lcom/baidu/tts/loopj/RequestHandle;

    .line 52
    invoke-virtual {v5}, Lcom/baidu/tts/l/a/b;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/baidu/tts/l/a/h;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    return-object v0
.end method
