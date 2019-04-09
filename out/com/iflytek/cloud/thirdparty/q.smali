.class public Lcom/iflytek/cloud/thirdparty/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/af;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->e:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/q;->c:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/q;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/q;->d:I

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Lcom/iflytek/cloud/thirdparty/af;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/q;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 9

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "sid"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mic_type"

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/q;->d:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "sdk_ver"

    invoke-static {}, Lcom/iflytek/aiui/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ver_type"

    invoke-static {}, Lcom/iflytek/aiui/Version;->getVersionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dev_lang"

    const-string v4, "java"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sid"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sess"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v3, :cond_5f

    const-string v3, "interact_mode"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/af;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5f
    if-nez p2, :cond_e3

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/q;->c:I

    :goto_6e
    const-string v2, "app"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tran_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/q;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8d
    :goto_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_a5} :catch_d6

    move-result-object v0

    :try_start_a6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/af;->c()Lcom/iflytek/cloud/thirdparty/ah;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v3, v1

    invoke-virtual {v2, v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;[BI)V
    :try_end_c0
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_a6 .. :try_end_c0} :catch_c2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a6 .. :try_end_c0} :catch_11a
    .catch Lorg/json/JSONException; {:try_start_a6 .. :try_end_c0} :catch_d6

    goto/16 :goto_7

    :catch_c2
    move-exception v0

    :try_start_c3
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V
    :try_end_d4
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_d4} :catch_d6

    goto/16 :goto_7

    :catch_d6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    :cond_dc
    :try_start_dc
    iget v2, p0, Lcom/iflytek/cloud/thirdparty/q;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/q;->c:I

    goto :goto_6e

    :cond_e3
    if-ne v5, p2, :cond_8d

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/q;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_113

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/q;->e:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/q;->f:I

    :goto_f2
    const-string v2, "sdk"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tran_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdk#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/q;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8d

    :cond_113
    iget v2, p0, Lcom/iflytek/cloud/thirdparty/q;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/q;->f:I

    goto :goto_f2

    :catch_11a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_11e
    .catch Lorg/json/JSONException; {:try_start_dc .. :try_end_11e} :catch_d6

    goto/16 :goto_7
.end method
