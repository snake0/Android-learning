.class public Lcom/baidu/tts/client/model/RecordData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/baidu/tts/l/a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/l/a;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    .line 24
    iput-object p1, p0, Lcom/baidu/tts/client/model/RecordData;->b:Lcom/baidu/tts/l/a;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/client/model/RecordData;)Lcom/baidu/tts/l/a;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData;->b:Lcom/baidu/tts/l/a;

    return-object v0
.end method


# virtual methods
.method public setEndInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v1, "modeId"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "RecordData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EndInfo json= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/tts/client/model/RecordData$InsertData;

    const-string v3, "endInfo"

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/baidu/tts/client/model/RecordData$InsertData;-><init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 54
    :goto_3c
    return-void

    .line 51
    :catch_3d
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3c
.end method

.method public setStartInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    const-string v1, "startTime"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "modeId"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "RecordData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " StartInfo json= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/tts/client/model/RecordData$InsertData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/baidu/tts/client/model/RecordData$InsertData;-><init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 36
    iget-object v1, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/tts/client/model/RecordData$InsertData;

    const-string v3, "startInfo"

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/baidu/tts/client/model/RecordData$InsertData;-><init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_43} :catch_44

    .line 40
    :goto_43
    return-void

    .line 37
    :catch_44
    move-exception v0

    .line 38
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_43
.end method
