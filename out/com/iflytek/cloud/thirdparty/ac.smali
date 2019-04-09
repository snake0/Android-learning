.class public Lcom/iflytek/cloud/thirdparty/ac;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac;->a:Ljava/util/Map;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->a:Ljava/util/Map;

    sget-object v1, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->assets:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-virtual {v1}, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->assets:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->a:Ljava/util/Map;

    sget-object v1, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-virtual {v1}, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->a:Ljava/util/Map;

    sget-object v1, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->res:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-virtual {v1}, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->res:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;
    .registers 2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Lorg/json/JSONObject;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    const-string v0, "login"

    const-string v1, "appid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/iflytek/cloud/thirdparty/ac;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_d

    const-class v0, Lcom/iflytek/cloud/thirdparty/ac;

    monitor-exit v0

    :goto_c
    return-object p2

    :cond_d
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/iflytek/cloud/thirdparty/ac;

    monitor-exit v0

    goto :goto_c

    :catchall_15
    move-exception v0

    const-class v1, Lcom/iflytek/cloud/thirdparty/ac;

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_15

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    const-string v0, "appid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "appid"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "uid"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_22
    return-object p0
.end method

.method public static a(Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 3

    if-eqz p0, :cond_22

    const-string v0, "sdk_ver"

    invoke-static {}, Lcom/iflytek/aiui/Version;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ver_type"

    invoke-static {}, Lcom/iflytek/aiui/Version;->getVersionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dev_lang"

    const-string v1, "java"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return p2

    :cond_7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p2, 0x0

    goto :goto_6

    :cond_1b
    const/4 p2, 0x1

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :try_start_2e
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_1e

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e

    :cond_37
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x2

    array-length v2, v0

    if-ne v1, v2, :cond_b

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b(Lcom/iflytek/cloud/thirdparty/ce;)Lcom/iflytek/cloud/thirdparty/ce;
    .registers 7

    const/16 v5, 0x3e80

    const/4 v4, 0x0

    const-string v0, "audioparams"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Lorg/json/JSONObject;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    :cond_12
    const-string v0, "attachparams"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "attachparams"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v0, "sample_rate"

    invoke-virtual {p0, v0, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "speech"

    const-string v2, "data_source"

    const-string v3, "sdk"

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_type"

    const-string v3, "audio"

    invoke-virtual {p0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "data_source"

    invoke-virtual {p0, v2, v1, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "data_format"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio/L16;rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v5, v0, :cond_75

    const-string v0, "iat"

    const-string v1, "data_encoding"

    const-string v2, "speex-wb;10"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6a
    const-string v1, "data_encoding"

    invoke-virtual {p0, v1, v0, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/i;->a:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    return-object p0

    :cond_75
    const-string v0, "iat"

    const-string v1, "data_encoding"

    const-string v2, "speex;10"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6a
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/iflytek/cloud/thirdparty/ce;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v1}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_21
    move-object v0, v1

    goto :goto_3
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/iflytek/cloud/thirdparty/ac;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    :cond_11
    :try_start_11
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_14} :catch_18
    .catchall {:try_start_11 .. :try_end_14} :catchall_1d

    :goto_14
    :try_start_14
    const-class v0, Lcom/iflytek/cloud/thirdparty/ac;

    monitor-exit v0

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_14

    :catchall_1d
    move-exception v0

    const-class v1, Lcom/iflytek/cloud/thirdparty/ac;

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1d

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    const-string v0, "userparams"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bq;->a([B)Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_a

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_a
.end method

.method public static c(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;
    .registers 9

    const-string v0, "stmid"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dtype"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dtf"

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dte"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stmid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "dtype"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cnt_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dtf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_9

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    :cond_26
    return-object v1
.end method

.method public static d(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;
    .registers 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    const-string v0, ",[ ]*[\\w\\.:]+="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :cond_1e
    :goto_1e
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v5, "="

    invoke-static {v4, v5}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    aget-object v5, v4, v1

    aget-object v4, v4, v6

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_42
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    aget-object v1, v0, v1

    aget-object v0, v0, v6

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    new-instance v2, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v2}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_82
    move-object v0, v2

    goto :goto_d
.end method

.method public static d(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;
    .registers 14

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "dtype"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "stmid"

    invoke-virtual {v0, v6}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dtype"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stmid"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dsrc"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "dsrc"

    const-string v6, "dsrc"

    invoke-virtual {v0, v6}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41
    const-string v1, "ver_type"

    invoke-static {}, Lcom/iflytek/aiui/Version;->getVersionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v6, "wake_id"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_59
    const-string v1, "scene"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "scene"

    const-string v6, "scene"

    invoke-virtual {v0, v6}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6c
    const-string v1, "msc.lng"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "msc.lng"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "msc.lat"

    invoke-virtual {v0, v6}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "msc.lng"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msc.lat"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "state"

    invoke-virtual {v0, v6}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "last_state"

    invoke-virtual {v0, v7}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "event_only"

    invoke-virtual {v0, v8}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "operation"

    invoke-virtual {v0, v9}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "source"

    invoke-virtual {v0, v10}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "name"

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "name"

    invoke-virtual {v1, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "operation"

    invoke-virtual {v11, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "name"

    invoke-virtual {v1, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "last_state"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "event"

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "state"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event_only"

    invoke-virtual {v5, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_fc
    const-string v1, "interact_mode"

    const-string v6, "speech"

    const-string v7, "interact_mode"

    const-string v8, "continuous"

    invoke-static {v6, v7, v8}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userparams"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "dtf"

    invoke-virtual {v0, v8}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "dte"

    invoke-virtual {v0, v9}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cnt_id"

    const-string v11, "0"

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "dtf"

    invoke-virtual {v1, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "dte"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->c()Ljava/util/HashMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_17a

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17a

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v10, "pers_param"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16d

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16d
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_170
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_170} :catch_171

    goto :goto_14f

    :catch_171
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_175
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17a
    :try_start_17a
    const-string v0, "params"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userparams"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content"

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "data"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_191
    .catch Lorg/json/JSONException; {:try_start_17a .. :try_end_191} :catch_171

    goto :goto_175
.end method

.method private static d(Lorg/json/JSONObject;)V
    .registers 7

    const/4 v0, 0x1

    const-string v1, "1"

    const-string v2, "debug_log"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {v0}, Lcom/iflytek/aiui/AIUISetting;->setShowLog(Z)V

    :goto_12
    const-string v1, "1"

    const-string v2, "save_datalog"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {v0}, Lcom/iflytek/aiui/AIUISetting;->setSaveDataLog(Z)V

    const-string v1, "datalog_size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "datalog_size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    const-wide/32 v3, 0x6400000

    const/16 v5, 0x708

    invoke-static/range {v0 .. v5}, Lcom/iflytek/aiui/AIUISetting;->setSaveDataLog(ZJJI)V

    :cond_3e
    const-string v0, "datalog_path"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {v0}, Lcom/iflytek/aiui/AIUISetting;->setDataLogPath(Ljava/lang/String;)V

    :cond_4d
    const-string v0, "raw_audio_path"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-static {v0}, Lcom/iflytek/aiui/AIUISetting;->setRawAudioPath(Ljava/lang/String;)V

    :cond_5c
    return-void

    :cond_5d
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/aiui/AIUISetting;->setShowLog(Z)V

    goto :goto_12
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_51

    :try_start_a
    const-string v0, "log"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "log"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1b} :catch_45

    :cond_1b
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_2b
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_4b

    sget-object v3, Lcom/iflytek/cloud/thirdparty/ac;->b:Ljava/util/Map;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_3f} :catch_40

    goto :goto_1f

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1f

    :catch_45
    move-exception v0

    :goto_46
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_4

    :cond_4b
    :try_start_4b
    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_4e} :catch_40

    goto :goto_1f

    :cond_4f
    const/4 v0, 0x1

    goto :goto_4

    :catch_51
    move-exception v0

    goto :goto_46
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object p0

    :goto_d
    return-object p0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d
.end method
