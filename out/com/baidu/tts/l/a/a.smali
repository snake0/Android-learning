.class public Lcom/baidu/tts/l/a/a;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/loopj/RequestHandle;

.field private b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/baidu/tts/l/a/a;->b:Lorg/json/JSONArray;

    .line 43
    return-void
.end method

.method private b()Lorg/apache/http/entity/StringEntity;
    .registers 4

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 93
    sget-object v0, Lcom/baidu/tts/f/g;->t:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "checkUpdate"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    sget-object v0, Lcom/baidu/tts/f/g;->u:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/l/a/a;->b:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 98
    :goto_24
    return-object v0

    .line 97
    :catch_25
    move-exception v0

    .line 98
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 52
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {v0, v4, v1, v2}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    .line 53
    sget-object v1, Lcom/baidu/tts/f/o;->b:Lcom/baidu/tts/f/o;

    invoke-virtual {v1}, Lcom/baidu/tts/f/o;->a()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-direct {p0}, Lcom/baidu/tts/l/a/a;->b()Lorg/apache/http/entity/StringEntity;

    move-result-object v3

    .line 55
    new-array v6, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v6, v7

    .line 57
    const/4 v1, 0x0

    const-string v4, "application/json"

    new-instance v5, Lcom/baidu/tts/l/a/a$1;

    invoke-direct {v5, p0, v6}, Lcom/baidu/tts/l/a/a$1;-><init>(Lcom/baidu/tts/l/a/a;[Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/l/a/a;->a:Lcom/baidu/tts/loopj/RequestHandle;

    .line 81
    aget-object v0, v6, v7

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/baidu/tts/l/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
