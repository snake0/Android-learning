.class public Lcom/qunar/qwifi/WifiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qunar/qwifi/WifiHelper;->a:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    .prologue
    .line 39
    sput-object p0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 206
    new-instance v1, Lcom/mqunar/libtask/HotdogConductor;

    new-array v0, v5, [Lcom/mqunar/libtask/TaskCallback;

    invoke-direct {v1, v0}, Lcom/mqunar/libtask/HotdogConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 207
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 209
    :try_start_17
    const-string v0, "seqId"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v0, "business"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    const-string v0, "type"

    const-string v3, "android"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v0, "actionType"

    const-string v3, "connectResult"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v0, "connect_re"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_34} :catch_54

    .line 217
    :goto_34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v3, Lcom/qunar/qwifi/a;->a:Ljava/lang/String;

    aput-object v3, v0, v5

    const/4 v3, 0x1

    const-string v4, "qpub_auto_wifi"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/mqunar/libtask/HotdogConductor;->setParams([Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/mqunar/libtask/ChiefGuard;->getInstance()Lcom/mqunar/libtask/ChiefGuard;

    move-result-object v0

    new-array v2, v5, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    invoke-virtual {v0, p0, v1, v2}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    .line 220
    :cond_53
    return-void

    .line 214
    :catch_54
    move-exception v0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect result json failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qunar/qwifi/b;->a(Ljava/lang/String;)I

    goto :goto_34
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/qunar/qwifi/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_10

    .line 238
    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 240
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 228
    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {p0, p1, p2, p3}, Lcom/qunar/qwifi/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    return v0
.end method

.method public static autoConnectWifi(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/lang/String;
    .registers 16

    .prologue
    .line 64
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 65
    :cond_10
    const-string v0, "14"

    .line 194
    :goto_12
    return-object v0

    .line 67
    :cond_13
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 68
    :cond_23
    const-string v0, "15"

    goto :goto_12

    .line 72
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qunar/qwifi/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 73
    const-string v0, "16"

    goto :goto_12

    .line 77
    :cond_33
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 78
    invoke-static {p0}, Lcom/qunar/qwifi/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/qunar/qwifi/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 79
    const-string v0, "12"

    goto :goto_12

    .line 84
    :cond_4c
    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_64

    .line 85
    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_64

    .line 86
    const-string v0, "13"

    goto :goto_12

    .line 91
    :cond_64
    invoke-static {}, Lcom/qunar/qwifi/WifiHelper;->c()Lcom/mqunar/libtask/TaskCallback;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/mqunar/libtask/HotdogConductor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mqunar/libtask/TaskCallback;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/mqunar/libtask/HotdogConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 93
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 95
    :try_start_78
    const-string v0, "seqId"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v0, "business"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v0, "type"

    const-string v3, "android"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v0, "actionType"

    const-string v3, "getWifiList"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_90} :catch_f1

    .line 102
    :goto_90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/qunar/qwifi/a;->a:Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "qpub_auto_wifi"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/mqunar/libtask/HotdogConductor;->setParams([Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/mqunar/libtask/ChiefGuard;->getInstance()Lcom/mqunar/libtask/ChiefGuard;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    invoke-virtual {v0, p0, v1, v2}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    .line 106
    invoke-static {p0}, Lcom/qunar/qwifi/c;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 108
    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    if-nez v0, :cond_c6

    .line 109
    sget-object v2, Lcom/qunar/qwifi/WifiHelper;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_bc
    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    if-nez v0, :cond_c5

    .line 111
    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/qunar/qwifi/c;->a(Ljava/lang/Object;)V

    .line 113
    :cond_c5
    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_109

    .line 117
    :cond_c6
    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    if-eqz v0, :cond_ed

    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10c

    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    const-string v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const-string v0, ""

    sget-object v2, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    const-string v3, "error"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 118
    :cond_ed
    const-string v0, "10"

    goto/16 :goto_12

    .line 99
    :catch_f1
    move-exception v0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiList json failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qunar/qwifi/b;->a(Ljava/lang/String;)I

    goto :goto_90

    .line 113
    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0

    .line 122
    :cond_10c
    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_118

    .line 123
    const-string v0, "11"

    goto/16 :goto_12

    .line 128
    :cond_118
    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_13a

    sget-object v2, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 130
    const-string v0, "2"

    goto/16 :goto_12

    .line 135
    :cond_13a
    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qunar/qwifi/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 139
    const/4 v0, 0x0

    .line 140
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 141
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :goto_166
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_271

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    sget-object v2, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27b

    .line 144
    add-int/lit8 v4, v1, 0x1

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/qunar/qwifi/WifiHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    const-wide/16 v1, 0x0

    move-wide v2, v1

    :goto_19e
    cmp-long v1, v2, p3

    if-gtz v1, :cond_1db

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/qunar/qwifi/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1db

    .line 149
    if-eqz v5, :cond_1d0

    iget-object v1, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qunar/qwifi/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 150
    invoke-static {p0}, Lcom/qunar/qwifi/c;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/qunar/qwifi/WifiHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 153
    :cond_1d0
    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 148
    const-wide/16 v9, 0xc8

    add-long v1, v2, v9

    move-wide v2, v1

    goto :goto_19e

    .line 156
    :cond_1db
    cmp-long v1, v2, p3

    if-gtz v1, :cond_223

    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    :try_start_1e4
    const-string v2, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v2, "password"

    sget-object v3, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v0, "success"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_201
    .catch Lorg/json/JSONException; {:try_start_1e4 .. :try_end_201} :catch_20b

    .line 167
    :goto_201
    invoke-static {p0, v6, p1, p2}, Lcom/qunar/qwifi/WifiHelper;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    .line 169
    const-string v0, "0"

    goto/16 :goto_12

    .line 163
    :catch_20b
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "successResult json failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qunar/qwifi/b;->a(Ljava/lang/String;)I

    goto :goto_201

    .line 172
    :cond_223
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 174
    :try_start_228
    const-string v2, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v2, "password"

    sget-object v3, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 177
    const-string v0, "fail"

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_248
    .catch Lorg/json/JSONException; {:try_start_228 .. :try_end_248} :catch_255

    .line 184
    :goto_248
    const/4 v0, 0x3

    if-lt v4, v0, :cond_26d

    .line 185
    invoke-static {p0, v6, p1, p2}, Lcom/qunar/qwifi/WifiHelper;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    .line 187
    const-string v0, "1"

    goto/16 :goto_12

    .line 178
    :catch_255
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failResult json failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qunar/qwifi/b;->a(Ljava/lang/String;)I

    goto :goto_248

    :cond_26d
    move v0, v4

    :goto_26e
    move v1, v0

    .line 190
    goto/16 :goto_166

    .line 192
    :cond_271
    invoke-static {p0, v6, p1, p2}, Lcom/qunar/qwifi/WifiHelper;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 193
    const/4 v0, 0x0

    sput-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    .line 194
    const-string v0, "1"

    goto/16 :goto_12

    :cond_27b
    move v0, v1

    goto :goto_26e
.end method

.method static synthetic b()Ljava/util/Map;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/qunar/qwifi/WifiHelper;->b:Ljava/util/Map;

    return-object v0
.end method

.method private static c()Lcom/mqunar/libtask/TaskCallback;
    .registers 1

    .prologue
    .line 245
    new-instance v0, Lcom/qunar/qwifi/e;

    invoke-direct {v0}, Lcom/qunar/qwifi/e;-><init>()V

    return-object v0
.end method

.method public static toWifiSettings(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
