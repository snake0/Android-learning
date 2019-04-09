.class public Lcom/iflytek/cloud/thirdparty/s;
.super Lcom/iflytek/cloud/thirdparty/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/r;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method private a([B[BII)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->c()Lcom/iflytek/cloud/thirdparty/ah;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/ah;->a([B[BII)V

    :cond_f
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    iget v2, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    if-ne v1, v2, :cond_1b

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v0, "SyncDataModule"

    const-string v1, "query params does not have sid."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "query_str"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "SyncDataModule"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/s;->a([B[BII)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_53} :catch_54
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_0 .. :try_end_53} :catch_60

    goto :goto_1b

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0x277a

    const-string v1, "query sync: params invalid json format."

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/s;->a(ILjava/lang/String;)V

    goto :goto_1b

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->printStackTrace()V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/s;->a(ILjava/lang/String;)V

    goto :goto_1b
.end method

.method public b(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 10

    const-string v0, ""

    :try_start_2
    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_14} :catch_c0

    move-result-object v0

    :cond_15
    :try_start_15
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v0, p1, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    const/4 v1, 0x3

    iget v3, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    if-ne v1, v3, :cond_fd

    new-instance v3, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "param"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "appid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_3c} :catch_f8
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_15 .. :try_end_3c} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_3c} :catch_1c4

    if-nez v0, :cond_cc

    const-string v0, ""

    :goto_40
    :try_start_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d1

    const-string v1, "appid"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    :goto_4c
    const-string v0, "uid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dd

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_63

    const-string v5, "uid"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_63
    :goto_63
    const-string v5, "id_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    const-string v5, "id_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id_value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "appid"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8a

    const-string v5, "id_value"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    :goto_8a
    const-string v4, "csid"

    const-string v5, "atn"

    invoke-static {v1, v5, v0}, Lcom/iflytek/cloud/thirdparty/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "SyncDataModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "schema data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    move-object v1, v0

    :goto_b6
    const/4 v0, 0x0

    if-eqz v1, :cond_ba

    array-length v0, v1

    :cond_ba
    iget v3, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/iflytek/cloud/thirdparty/s;->a([B[BII)V
    :try_end_bf
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_bf} :catch_f8
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_40 .. :try_end_bf} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_bf} :catch_1c4

    :cond_bf
    :goto_bf
    return-void

    :catch_c0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0x277a

    const-string v1, "sync data: params invalid json format."

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/s;->a(ILjava/lang/String;)V

    goto :goto_bf

    :cond_cc
    :try_start_cc
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_40

    :cond_d4
    const-string v0, "appid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4c

    :cond_dd
    const-string v0, "uid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    :cond_e4
    const-string v7, "uid"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8a

    const-string v5, "id_value"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cc .. :try_end_f7} :catch_f8
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_cc .. :try_end_f7} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_f7} :catch_1c4

    goto :goto_8a

    :catch_f8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_bf

    :cond_fd
    const/4 v1, 0x5

    :try_start_fe
    iget v3, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    if-ne v1, v3, :cond_b5

    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "iat_user_data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    const-string v0, "audioparams"

    const-string v3, "rec_user_data"

    const-string v4, "iat_user_data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_125
    const-string v0, "nlp_user_data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const-string v0, "nlp_user_data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v0, "appid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;
    :try_end_13d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_fe .. :try_end_13d} :catch_f8
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_fe .. :try_end_13d} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_13d} :catch_1c4

    if-nez v0, :cond_1a0

    const-string v0, ""

    :goto_141
    :try_start_141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14c

    const-string v1, "appid"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14c
    :goto_14c
    const-string v1, "uid"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ae

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uid"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15d
    :goto_15d
    const-string v4, "csid"

    const-string v5, "atn"

    invoke-static {v0, v5, v1}, Lcom/iflytek/cloud/thirdparty/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "SyncDataModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nlp_user_data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_141 .. :try_end_18c} :catch_f8
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_141 .. :try_end_18c} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_18c} :catch_1c4

    move-object v1, v0

    goto/16 :goto_b6

    :catch_18f
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->printStackTrace()V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/s;->a(ILjava/lang/String;)V

    goto/16 :goto_bf

    :cond_1a0
    :try_start_1a0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_141

    :cond_1a7
    const-string v0, "appid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14c

    :cond_1ae
    const-string v1, "uid"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15d

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uid"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a0 .. :try_end_1c3} :catch_f8
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_1a0 .. :try_end_1c3} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_1a0 .. :try_end_1c3} :catch_1c4

    goto :goto_15d

    :catch_1c4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0x277b

    const-string v1, "sync data error, invalid data json."

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/s;->a(ILjava/lang/String;)V

    goto/16 :goto_bf

    :cond_1d1
    move-object v1, v0

    goto/16 :goto_4c
.end method
