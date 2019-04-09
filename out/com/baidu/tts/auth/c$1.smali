.class Lcom/baidu/tts/auth/c$1;
.super Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/tts/auth/c$a;

.field final synthetic b:Lcom/baidu/tts/auth/c;


# direct methods
.method constructor <init>(Lcom/baidu/tts/auth/c;Lcom/baidu/tts/auth/c$a;)V
    .registers 3

    .prologue
    .line 133
    iput-object p1, p0, Lcom/baidu/tts/auth/c$1;->b:Lcom/baidu/tts/auth/c;

    iput-object p2, p0, Lcom/baidu/tts/auth/c$1;->a:Lcom/baidu/tts/auth/c$a;

    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 172
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->a:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/baidu/tts/auth/c$1;->a:Lcom/baidu/tts/auth/c$a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 175
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .registers 11

    .prologue
    .line 136
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 137
    const-string v1, "OnlineAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 146
    :try_start_2d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 148
    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/baidu/tts/auth/c$1;->a:Lcom/baidu/tts/auth/c$a;

    invoke-virtual {v2, v0}, Lcom/baidu/tts/auth/c$a;->b(Ljava/lang/String;)V

    .line 155
    :goto_45
    const-string v0, "expires_in"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 156
    const-string v0, "expires_in"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/32 v5, 0x15180

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    mul-long/2addr v3, v5

    add-long v0, v1, v3

    .line 160
    iget-object v2, p0, Lcom/baidu/tts/auth/c$1;->a:Lcom/baidu/tts/auth/c$a;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/tts/auth/c$a;->a(J)V

    .line 168
    :cond_6a
    :goto_6a
    return-void

    .line 151
    :cond_6b
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/f/n;->a:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/baidu/tts/auth/c$1;->a:Lcom/baidu/tts/auth/c$a;

    invoke-virtual {v2, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_7a} :catch_99

    goto :goto_45

    .line 162
    :catch_7b
    move-exception v0

    .line 163
    const-string v1, "OnlineAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 164
    :catch_99
    move-exception v0

    .line 165
    const-string v1, "OnlineAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a
.end method
