.class public Lcom/baidu/tts/l/a/f;
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
.field private a:Lcom/baidu/tts/loopj/RequestHandle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Lorg/apache/http/entity/StringEntity;
    .registers 4

    .prologue
    .line 51
    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    move-result-object v0

    .line 53
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/baidu/tts/f/g;->t:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getDefaultList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 58
    :goto_1d
    return-object v0

    .line 57
    :catch_1e
    move-exception v0

    .line 58
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelBags;
    .registers 7

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/4 v1, 0x1

    const/16 v2, 0x50

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    .line 36
    sget-object v1, Lcom/baidu/tts/f/o;->b:Lcom/baidu/tts/f/o;

    invoke-virtual {v1}, Lcom/baidu/tts/f/o;->a()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-direct {p0}, Lcom/baidu/tts/l/a/f;->b()Lorg/apache/http/entity/StringEntity;

    move-result-object v3

    .line 38
    new-instance v5, Lcom/baidu/tts/l/a/b;

    invoke-direct {v5}, Lcom/baidu/tts/l/a/b;-><init>()V

    .line 39
    const/4 v1, 0x0

    const-string v4, "application/json"

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/l/a/f;->a:Lcom/baidu/tts/loopj/RequestHandle;

    .line 40
    invoke-virtual {v5}, Lcom/baidu/tts/l/a/b;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/baidu/tts/l/a/f;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    return-object v0
.end method
