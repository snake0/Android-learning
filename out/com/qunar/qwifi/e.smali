.class final Lcom/qunar/qwifi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/libtask/TaskCallback;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 309
    return-void
.end method

.method public onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 7

    .prologue
    .line 299
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 300
    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/qunar/qwifi/WifiHelper;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 301
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->b()Ljava/util/Map;

    move-result-object v0

    const-string v2, "error"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 295
    return-void
.end method

.method public onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 7

    .prologue
    .line 275
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 276
    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/qunar/qwifi/WifiHelper;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 277
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->b()Ljava/util/Map;

    move-result-object v0

    const-string v2, "error"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 279
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 285
    return-void
.end method

.method public onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 249
    return-void
.end method

.method public onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 10

    .prologue
    .line 253
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/qunar/qwifi/WifiHelper;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 255
    invoke-virtual {p1}, Lcom/mqunar/libtask/AbsConductor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_72

    .line 257
    :try_start_15
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 260
    const-string v2, "wifiRe"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 261
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_69

    .line 262
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 263
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->b()Ljava/util/Map;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "password"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_4b} :catch_4e
    .catchall {:try_start_15 .. :try_end_4b} :catchall_72

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 265
    :catch_4e
    move-exception v0

    .line 266
    :try_start_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiInfo onMsgResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qunar/qwifi/b;->a(Ljava/lang/String;)I

    .line 269
    :cond_69
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 270
    monitor-exit v1

    .line 271
    return-void

    .line 270
    :catchall_72
    move-exception v0

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_72

    throw v0
.end method

.method public onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 290
    return-void
.end method
