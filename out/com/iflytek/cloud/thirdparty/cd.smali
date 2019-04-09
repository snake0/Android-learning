.class public Lcom/iflytek/cloud/thirdparty/cd;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/cd;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/content/SharedPreferences;


# instance fields
.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Lcom/iflytek/cloud/thirdparty/by$a;

.field private q:Lcom/iflytek/cloud/thirdparty/by$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cd;->a:Lcom/iflytek/cloud/thirdparty/cd;

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->d:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->f:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->h:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->i:Z

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/cd;->j:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/cd;->k:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/cd;->l:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/cd;->m:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/cd;->n:J

    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->o:J

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cd$3;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/cd$3;-><init>(Lcom/iflytek/cloud/thirdparty/cd;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->p:Lcom/iflytek/cloud/thirdparty/by$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cd$4;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/cd$4;-><init>(Lcom/iflytek/cloud/thirdparty/cd;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->q:Lcom/iflytek/cloud/thirdparty/by$a;

    if-eqz p1, :cond_94

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iflytek_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v1, "is_collect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->i:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v1, "ti_request"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->j:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v1, "ti_app_list"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->o:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->k:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v1, "list_app_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->m:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v1, "ti_app_active"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->o:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->l:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v1, "active_app_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->n:J

    :cond_94
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/cd;J)J
    .registers 3

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/cd;->j:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/cd;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->a:Lcom/iflytek/cloud/thirdparty/cd;

    if-nez v0, :cond_b

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cd;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/cd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cd;->a:Lcom/iflytek/cloud/thirdparty/cd;

    :cond_b
    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->a:Lcom/iflytek/cloud/thirdparty/cd;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    const/16 v3, 0x14

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cd;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6c

    :try_start_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_27

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f
    if-le v0, v3, :cond_27

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "addr"

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "level"

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_54} :catch_55

    goto :goto_2b

    :catch_55
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merger error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->e(Ljava/lang/String;)V

    :cond_6c
    const/4 p1, 0x0

    :goto_6d
    return-object p1

    :cond_6e
    :try_start_6e
    const-string v0, "wifi_list"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_73} :catch_55

    goto :goto_6d
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "header"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_f} :catch_10

    :goto_f
    return-object v1

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private static a(ZLcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/ce;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    :try_start_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    :goto_34
    if-eqz p0, :cond_3c

    move-object v0, v2

    :goto_37
    return-object v0

    :cond_38
    :try_start_38
    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_30

    goto :goto_34

    :cond_3c
    move-object v0, v3

    goto :goto_37
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/cd;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cd;->e()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_9

    const-string v0, "upLoadMessage : Nothing to upload"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_9
    const-string v0, "UserLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upLoadMessage :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_25
    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bu;->b([B)[B

    move-result-object v1

    new-instance v2, Lcom/iflytek/cloud/thirdparty/by;

    invoke-direct {v2}, Lcom/iflytek/cloud/thirdparty/by;-><init>()V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/by;->b(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/by;->a(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd=statsdklog&logver=1.0.2&size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://scs.openspeech.cn/scs"

    invoke-virtual {v2, v3, v0, v1}, Lcom/iflytek/cloud/thirdparty/by;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->q:Lcom/iflytek/cloud/thirdparty/by$a;

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/by;->a(Lcom/iflytek/cloud/thirdparty/by$a;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_67} :catch_68

    goto :goto_8

    :catch_68
    move-exception v0

    iput-boolean v5, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_6f
    const/4 v0, 0x0

    :try_start_70
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_72} :catch_68

    goto :goto_8
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/cd;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/cd;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/cd;J)J
    .registers 3

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/cd;->k:J

    return-wide p1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1e

    move-result-object v0

    :goto_15
    move-object v1, v0

    :goto_16
    return-object v1

    :catch_17
    move-exception v0

    const-string v0, "Perm denied to get wfs"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_16

    :catch_1e
    move-exception v0

    const-string v0, "failed to get wfs"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->e(Ljava/lang/String;)V

    goto :goto_16

    :cond_25
    move-object v0, v1

    goto :goto_15
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/cd;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cd;->g()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/cd;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/cd;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/cd;J)J
    .registers 3

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/cd;->l:J

    return-wide p1
.end method

.method static synthetic c()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->b(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "appid"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unique_id"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ca;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "src"

    const-string v2, "msc"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    invoke-static {}, Lcom/iflytek/cloud/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logtime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "header"

    invoke-static {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/cd;->a(ZLcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :try_start_5d
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.########"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "lat"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    move-result-object v3

    const-string v4, "msc.lat"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lng"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    move-result-object v3

    const-string v4, "msc.lng"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_8c} :catch_8d

    :goto_8c
    return-object v1

    :catch_8d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_8c
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/cd;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/cd;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z

    return p1
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/cd;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->j:J

    return-wide v0
.end method

.method private d()Z
    .registers 10

    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v2, "ti_request"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    const-string v4, "request_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_25

    sub-long v3, v5, v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_23

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22

    :catch_25
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/cd;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->k:J

    return-wide v0
.end method

.method private e()V
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pver"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "app_list"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "src"

    const-string v2, "msc"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "CollectInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bz;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bu;->b([B)[B

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/thirdparty/by;

    invoke-direct {v1}, Lcom/iflytek/cloud/thirdparty/by;-><init>()V

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/by;->b(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/by;->a(I)V

    const-string v2, "http://data.openspeech.cn/index.php/clientrequest/clientcollect/isCollect"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/by;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->p:Lcom/iflytek/cloud/thirdparty/by$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/by;->a(Lcom/iflytek/cloud/thirdparty/by$a;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_72
    return-void

    :cond_73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->d:Z
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_76} :catch_77

    goto :goto_72

    :catch_77
    move-exception v0

    iput-boolean v6, p0, Lcom/iflytek/cloud/thirdparty/cd;->d:Z

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_72
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/cd;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->l:J

    return-wide v0
.end method

.method private f()Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->i:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return v2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-wide v5, p0, Lcom/iflytek/cloud/thirdparty/cd;->m:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/iflytek/cloud/thirdparty/cd;->k:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_31

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->f:Z

    iget-wide v5, p0, Lcom/iflytek/cloud/thirdparty/cd;->n:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/iflytek/cloud/thirdparty/cd;->l:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_33

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->g:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->f:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->g:Z

    if-eqz v0, :cond_6

    :cond_2f
    move v2, v1

    goto :goto_6

    :cond_31
    move v0, v2

    goto :goto_19

    :cond_33
    move v0, v2

    goto :goto_25
.end method

.method private g()V
    .registers 8

    const-wide/16 v5, 0x3e8

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cd;->f:Z

    if-eqz v1, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/cd;->m:J

    const-string v1, "CollectInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastListAppTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/iflytek/cloud/thirdparty/cd;->m:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list_app_time"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->m:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_34
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cd;->g:Z

    if-eqz v1, :cond_60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/cd;->n:J

    const-string v1, "CollectInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastActiveAppTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/iflytek/cloud/thirdparty/cd;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "active_app_time"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->n:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_63
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cd;->f:Z

    if-eqz v1, :cond_88

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cd;->h()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_88

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appinfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_88
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cd;->g:Z

    if-eqz v1, :cond_a8

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cd;->i()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_a8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "hisinfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "log"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cd;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/cd;->h:Z

    if-eqz v2, :cond_c1

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/cd;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_c1
    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/cd;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CollectInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/cd;->a(Lorg/json/JSONObject;)V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_d1} :catch_d2

    :goto_d1
    return-void

    :catch_d2
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    goto :goto_d1
.end method

.method private h()Lorg/json/JSONArray;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_16
    if-ge v2, v5, :cond_47

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_3d

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3d} :catch_41

    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_46
    return-object v0

    :cond_47
    move-object v0, v1

    goto :goto_46
.end method

.method private i()Lorg/json/JSONArray;
    .registers 7

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cd;->b:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_20

    :catch_4d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_52
    return-object v0

    :cond_53
    move-object v0, v1

    goto :goto_52
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->d:Z

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cd;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/cd$1;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/thirdparty/cd$1;-><init>(Lcom/iflytek/cloud/thirdparty/cd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->d:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_1e

    goto :goto_5
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cd;->f()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->h:Z

    if-eqz v0, :cond_25

    :cond_14
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/cd$2;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/thirdparty/cd$2;-><init>(Lcom/iflytek/cloud/thirdparty/cd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_22

    goto :goto_5

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    const/4 v0, 0x0

    :try_start_26
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cd;->e:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_22

    goto :goto_5
.end method
