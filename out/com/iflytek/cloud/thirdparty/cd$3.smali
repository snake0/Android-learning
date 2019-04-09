.class Lcom/iflytek/cloud/thirdparty/cd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/by$a;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cd;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cd;->b(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    const-string v0, "CollectInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/by;[B)V
    .registers 10

    const-wide v5, 0x40ac200000000000L    # 3600.0

    const/4 v4, 0x0

    if-eqz p2, :cond_b1

    :try_start_8
    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/bu;->c([B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "CollectInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b56\u7565\u8bf7\u6c42\u7ed3\u679c\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "yes"

    const-string v2, "is_collect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cd;->a(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    :goto_47
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    const-string v2, "ti_request"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/cd;->a(Lcom/iflytek/cloud/thirdparty/cd;J)J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    const-string v2, "ti_app_list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/cd;->b(Lcom/iflytek/cloud/thirdparty/cd;J)J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    const-string v2, "ti_app_active"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/cd;->c(Lcom/iflytek/cloud/thirdparty/cd;J)J

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cd;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_collect"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cd;->c(Lcom/iflytek/cloud/thirdparty/cd;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ti_request"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cd;->d(Lcom/iflytek/cloud/thirdparty/cd;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ti_app_list"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cd;->e(Lcom/iflytek/cloud/thirdparty/cd;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ti_app_active"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cd;->f(Lcom/iflytek/cloud/thirdparty/cd;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b1} :catch_be
    .catchall {:try_start_8 .. :try_end_b1} :catchall_c8

    :cond_b1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/thirdparty/cd;->b(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    :goto_b6
    return-void

    :cond_b7
    :try_start_b7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cd;->a(Lcom/iflytek/cloud/thirdparty/cd;Z)Z
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_bd} :catch_be
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_c8

    goto :goto_47

    :catch_be
    move-exception v0

    :try_start_bf
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/thirdparty/cd;->b(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    goto :goto_b6

    :catchall_c8
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cd$3;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v1, v4}, Lcom/iflytek/cloud/thirdparty/cd;->b(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    throw v0
.end method
