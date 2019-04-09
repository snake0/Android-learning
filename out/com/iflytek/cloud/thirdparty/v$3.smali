.class Lcom/iflytek/cloud/thirdparty/v$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/v;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/v;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .registers 1

    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->l(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->m(Lcom/iflytek/cloud/thirdparty/v;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    :cond_17
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_a6

    const/16 v0, 0x4e25

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    if-eq v0, v1, :cond_2e

    const/16 v0, 0x59e0

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_ce

    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/am;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/am;->b()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_3f
    const-string v1, "0"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_4e} :catch_a9

    :goto_4e
    new-instance v0, Lcom/iflytek/cloud/thirdparty/ad;

    const-string v1, "asr"

    const-string v2, ""

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/cloud/thirdparty/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/v;->g()V

    const-string v1, "local"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v0, v9}, Lcom/iflytek/cloud/thirdparty/ad;->a(Z)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "asr"

    invoke-virtual {v1, v2, v4, v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ad;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0, v3, v5, v6, v7}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;Ljava/util/Map;J)V

    :cond_89
    :goto_89
    const-string v0, "AsrUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4e

    :cond_ae
    const-string v1, "mixed"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "asr"

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ad;)V

    goto :goto_89

    :cond_ce
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;ILjava/lang/String;)V

    goto :goto_89
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .registers 12

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->l(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->m(Lcom/iflytek/cloud/thirdparty/v;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    :cond_1a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;Z)Z

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_36

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nlp"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ae;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    :goto_35
    return-void

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_3e
    const-string v0, "asr_result"

    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "rc"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "0"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_6f} :catch_99
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_6f} :catch_9e

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/am;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ad;

    const-string v1, "asr"

    const-string v2, ""

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/cloud/thirdparty/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "asr"

    invoke-virtual {v1, v2, v4, v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ad;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$3;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0, v3, v5, v6, v7}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;Ljava/util/Map;J)V

    goto :goto_35

    :catch_99
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_35

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_35
.end method

.method public onVolumeChanged(I[B)V
    .registers 3

    return-void
.end method
