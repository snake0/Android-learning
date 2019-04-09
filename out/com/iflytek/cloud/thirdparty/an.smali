.class public Lcom/iflytek/cloud/thirdparty/an;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:J

.field c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/an;->b:J

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/an;->a:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessinfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/an;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/an;->b:J

    const-string v0, "app_fau"

    iget-wide v1, p0, Lcom/iflytek/cloud/thirdparty/an;->a:J

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/bt;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "stmid"

    const-string v1, "stmid"

    invoke-virtual {p1, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "wake_id"

    const-string v1, "wake_id"

    invoke-virtual {p1, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "caller.appid"

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "app_caller_appid"

    invoke-virtual {p0, v1, v0, v3}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3f
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bp;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "app.ver.code"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "app_cver"

    invoke-virtual {p0, v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_55
    const-string v1, "app.ver.name"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "app_cver_name"

    invoke-virtual {p0, v1, v0, v3}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/an;->b:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;JZ)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;JZ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    if-nez p4, :cond_19

    :try_start_b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_16

    goto :goto_7

    :catch_11
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_7

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2b

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2b
    if-eqz v0, :cond_7

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_30} :catch_11
    .catchall {:try_start_19 .. :try_end_30} :catchall_16

    goto :goto_7
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    if-nez p3, :cond_1f

    :try_start_11
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_1c

    goto :goto_d

    :catch_17
    move-exception v0

    :try_start_18
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_d

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_32

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_32
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_35} :catch_17
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    goto :goto_d
.end method
