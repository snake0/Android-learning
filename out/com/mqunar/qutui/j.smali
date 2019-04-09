.class Lcom/mqunar/qutui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/qutui/QutuiLog;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/QutuiLog;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mqunar/qutui/j;->a:Lcom/mqunar/qutui/QutuiLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/mqunar/qutui/j;->a:Lcom/mqunar/qutui/QutuiLog;

    invoke-static {v1}, Lcom/mqunar/qutui/QutuiLog;->a(Lcom/mqunar/qutui/QutuiLog;)Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v3, Lqunar/lego/utils/FormPart;

    const-string v4, "c"

    invoke-direct {v3, v4, v1}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mqunar/qutui/QutuiLog;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/frequencyConfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cparam = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const-string v1, "X-ClientEncoding"

    const-string v4, "none"

    invoke-virtual {v3, v1, v4}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lcom/mqunar/qutui/j;->a:Lcom/mqunar/qutui/QutuiLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqunar/qutui/QutuiLog;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/frequencyConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/mqunar/qutui/QutuiLog;->a(Lcom/mqunar/qutui/QutuiLog;Ljava/lang/String;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;

    move-result-object v0

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v3

    .line 266
    if-eqz v3, :cond_fa

    iget v0, v3, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_fa

    iget-object v0, v3, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    if-nez v0, :cond_fa

    iget-object v0, v3, Lqunar/lego/utils/PitcherResponse;->content:[B

    if-eqz v0, :cond_fa

    .line 268
    :try_start_7a
    new-instance v0, Ljava/lang/String;

    iget-object v1, v3, Lqunar/lego/utils/PitcherResponse;->content:[B

    const-string v3, "utf-8"

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/qutui/QutuiLog;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/frequencyConfig"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v0, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f4

    .line 272
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    if-eqz v1, :cond_f4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_f4

    move v0, v2

    .line 275
    :goto_d2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_e8

    .line 276
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/mqunar/qutui/model/Caf;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    .line 278
    :cond_e8
    iget-object v0, p0, Lcom/mqunar/qutui/j;->a:Lcom/mqunar/qutui/QutuiLog;

    invoke-static {v0, v3}, Lcom/mqunar/qutui/QutuiLog;->a(Lcom/mqunar/qutui/QutuiLog;Ljava/util/List;)V

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mqunar/qutui/QutuiLog;->a(J)J
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_f4} :catch_f5

    .line 297
    :cond_f4
    :goto_f4
    return-void

    .line 282
    :catch_f5
    move-exception v0

    .line 283
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f4

    .line 286
    :cond_fa
    if-eqz v3, :cond_f4

    .line 287
    const/4 v1, 0x0

    .line 288
    iget-object v0, v3, Lqunar/lego/utils/PitcherResponse;->content:[B

    if-eqz v0, :cond_145

    .line 290
    :try_start_101
    new-instance v0, Ljava/lang/String;

    iget-object v4, v3, Lqunar/lego/utils/PitcherResponse;->content:[B

    const-string v5, "utf-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_101 .. :try_end_10a} :catch_141

    .line 295
    :goto_10a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "respcode = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v3, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "], content = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], e = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f4

    .line 291
    :catch_141
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_145
    move-object v0, v1

    goto :goto_10a
.end method
