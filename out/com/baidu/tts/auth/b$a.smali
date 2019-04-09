.class public Lcom/baidu/tts/auth/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/k/a;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/tts/auth/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 141
    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    add-int/lit16 v0, v0, -0x3e8

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 155
    iput p1, p0, Lcom/baidu/tts/auth/b$a;->b:I

    .line 156
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 5

    .prologue
    .line 197
    if-eqz p1, :cond_28

    .line 198
    const-string v0, "OfflineAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_28
    iput-object p1, p0, Lcom/baidu/tts/auth/b$a;->e:Lcom/baidu/tts/aop/tts/TtsError;

    .line 201
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/baidu/tts/auth/b$a;->c:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/tts/auth/b$a;->e:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/baidu/tts/auth/b$a;->d:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/baidu/tts/auth/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    const-string v0, "valid official"

    .line 228
    :goto_8
    return-object v0

    .line 207
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/tts/auth/b$a;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 208
    const-string v0, "valid temp"

    goto :goto_8

    .line 210
    :cond_12
    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    packed-switch v0, :pswitch_data_32

    .line 228
    :pswitch_17
    const-string v0, "not a valid result"

    goto :goto_8

    .line 212
    :pswitch_1a
    const-string v0, "package name unmatched"

    goto :goto_8

    .line 214
    :pswitch_1d
    const-string v0, "sign or appcode unmatched"

    goto :goto_8

    .line 216
    :pswitch_20
    const-string v0, "cuid unmatched"

    goto :goto_8

    .line 218
    :pswitch_23
    const-string v0, "official license expired"

    goto :goto_8

    .line 220
    :pswitch_26
    const-string v0, "will expire after a month"

    goto :goto_8

    .line 222
    :pswitch_29
    const-string v0, "platform unmatched"

    goto :goto_8

    .line 224
    :pswitch_2c
    const-string v0, "license not exist or invalid license"

    goto :goto_8

    .line 226
    :pswitch_2f
    const-string v0, "temp license expired"

    goto :goto_8

    .line 210
    :pswitch_data_32
    .packed-switch -0xa
        :pswitch_2f
        :pswitch_17
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 233
    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 237
    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 241
    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/baidu/tts/auth/b$a;->a:I

    const/4 v1, -0x6

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public g()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Lcom/baidu/tts/auth/b$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 287
    :cond_9
    :goto_9
    return v0

    .line 253
    :cond_a
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/tts/auth/b$a;->c:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 255
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v3

    .line 257
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 258
    const/16 v4, 0x20

    new-array v4, v4, [B

    .line 259
    iget-object v5, p0, Lcom/baidu/tts/auth/b$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/tts/auth/b$a;->c:Ljava/lang/String;

    invoke-static {v3, v5, v1, v6, v4}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSVerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1

    iput v1, p0, Lcom/baidu/tts/auth/b$a;->a:I

    .line 262
    const-string v1, "OfflineAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verify result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/tts/auth/b$a;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz v4, :cond_80

    .line 264
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 265
    const-string v4, "OfflineAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get appIdStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :try_start_6a
    const-string v4, "end"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 269
    const/4 v5, -0x1

    if-eq v4, v5, :cond_80

    .line 270
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 271
    new-instance v4, Lcom/baidu/tts/e/b;

    invoke-direct {v4, v3, v1}, Lcom/baidu/tts/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4}, Lcom/baidu/tts/e/b;->start()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_80} :catch_a2

    .line 279
    :cond_80
    :goto_80
    iget v1, p0, Lcom/baidu/tts/auth/b$a;->a:I

    if-gez v1, :cond_c0

    .line 280
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 281
    const-string v2, "OfflineAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDelete="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 274
    :catch_a2
    move-exception v1

    .line 275
    const-string v3, "OfflineAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "embedded statistics start exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 284
    :cond_c0
    const/4 v0, 0x1

    goto/16 :goto_9
.end method
