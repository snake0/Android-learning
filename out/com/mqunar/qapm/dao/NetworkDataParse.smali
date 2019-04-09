.class public Lcom/mqunar/qapm/dao/NetworkDataParse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/dao/IDataParse;


# static fields
.field private static final a:Lcom/mqunar/qapm/logging/AgentLog;

.field private static b:Lcom/mqunar/qapm/dao/NetworkDataParse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/dao/NetworkDataParse;->a:Lcom/mqunar/qapm/logging/AgentLog;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/qapm/dao/NetworkDataParse;->b:Lcom/mqunar/qapm/dao/NetworkDataParse;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/mqunar/qapm/dao/NetworkDataParse;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/mqunar/qapm/dao/NetworkDataParse;->b:Lcom/mqunar/qapm/dao/NetworkDataParse;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lcom/mqunar/qapm/dao/NetworkDataParse;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lcom/mqunar/qapm/dao/NetworkDataParse;->b:Lcom/mqunar/qapm/dao/NetworkDataParse;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lcom/mqunar/qapm/dao/NetworkDataParse;

    invoke-direct {v0}, Lcom/mqunar/qapm/dao/NetworkDataParse;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/dao/NetworkDataParse;->b:Lcom/mqunar/qapm/dao/NetworkDataParse;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lcom/mqunar/qapm/dao/NetworkDataParse;->b:Lcom/mqunar/qapm/dao/NetworkDataParse;

    return-object v0

    .line 30
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public convertBaseData2Json(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/qapm/domain/BaseData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/BaseData;

    .line 39
    invoke-virtual {p0, v0}, Lcom/mqunar/qapm/dao/NetworkDataParse;->convertImplData2Json(Lcom/mqunar/qapm/domain/BaseData;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 44
    :cond_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertImplData2Json(Lcom/mqunar/qapm/domain/BaseData;)Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 50
    :try_start_0
    instance-of v0, p1, Lcom/mqunar/qapm/domain/NetworkData;

    if-eqz v0, :cond_aa

    .line 51
    check-cast p1, Lcom/mqunar/qapm/domain/NetworkData;

    .line 52
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string v0, "action"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->action:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "reqUrl"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->reqUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v0, "startTime"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->startTime:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "endTime"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->endTime:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "reqSize"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->reqSize:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "resSize"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->resSize:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "httpCode"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->httpCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v0, "hf"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->hf:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v0, "netType"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->netType:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v0, "netStatus"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->netStatus:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v0, "topPage"

    iget-object v1, p1, Lcom/mqunar/qapm/domain/NetworkData;->topPage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 66
    iget-object v0, p1, Lcom/mqunar/qapm/domain/NetworkData;->headers:Ljava/util/HashMap;

    if-eqz v0, :cond_ac

    iget-object v0, p1, Lcom/mqunar/qapm/domain/NetworkData;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_ac

    .line 67
    iget-object v0, p1, Lcom/mqunar/qapm/domain/NetworkData;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_73

    .line 76
    :catch_8d
    move-exception v0

    .line 77
    sget-object v1, Lcom/mqunar/qapm/dao/NetworkDataParse;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertNetworkData2Json failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/qapm/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 79
    :cond_aa
    const/4 v0, 0x0

    :goto_ab
    return-object v0

    .line 71
    :cond_ac
    :try_start_ac
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_b7

    .line 72
    const-string v0, "header"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_b7} :catch_8d

    :cond_b7
    move-object v0, v2

    .line 74
    goto :goto_ab
.end method

.method public convertMap2BaseData(Ljava/util/Map;)Lcom/mqunar/qapm/domain/BaseData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mqunar/qapm/domain/BaseData;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v1, Lcom/mqunar/qapm/domain/NetworkData;

    invoke-direct {v1}, Lcom/mqunar/qapm/domain/NetworkData;-><init>()V

    .line 86
    const-string v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_174

    const-string v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_15
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->action:Ljava/lang/String;

    .line 87
    const-string v0, "reqUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_178

    const-string v0, "reqUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_27
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->reqUrl:Ljava/lang/String;

    .line 88
    const-string v0, "startTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17c

    const-string v0, "startTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_39
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->startTime:Ljava/lang/String;

    .line 89
    const-string v0, "endTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_180

    const-string v0, "endTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4b
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->endTime:Ljava/lang/String;

    .line 90
    const-string v0, "reqSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_184

    const-string v0, "reqSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_5d
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->reqSize:Ljava/lang/String;

    .line 91
    const-string v0, "resSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_188

    const-string v0, "resSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_6f
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->resSize:Ljava/lang/String;

    .line 92
    const-string v0, "httpCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18c

    const-string v0, "httpCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_81
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->httpCode:Ljava/lang/String;

    .line 93
    const-string v0, "hf"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_190

    const-string v0, "hf"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_93
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->hf:Ljava/lang/String;

    .line 94
    const-string v0, "netType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_194

    const-string v0, "netType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a5
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->netType:Ljava/lang/String;

    .line 95
    const-string v0, "netStatus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_198

    const-string v0, "netStatus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_b7
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->netStatus:Ljava/lang/String;

    .line 96
    const-string v0, "topPage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19c

    const-string v0, "topPage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_c9
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->topPage:Ljava/lang/String;

    .line 97
    const-string v0, "headers"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a0

    const-string v0, "headers"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    :goto_db
    if-eqz v0, :cond_173

    .line 101
    :try_start_dd
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v0, "Pitcher-Type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fe

    .line 104
    const-string v0, "Pitcher-Type"

    const-string v4, "Pitcher-Type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_fe
    const-string v0, "Pitcher-Url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_115

    .line 107
    const-string v0, "Pitcher-Url"

    const-string v4, "Pitcher-Url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_115
    const-string v0, "L-Date"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 110
    const-string v0, "L-Date"

    const-string v4, "L-Date"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_12c
    const-string v0, "User-Agent"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_143

    .line 113
    const-string v0, "User-Agent"

    const-string v4, "User-Agent"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_143
    const-string v0, "qrid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15a

    .line 116
    const-string v0, "qrid"

    const-string v4, "qrid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_15a
    const-string v0, "L-Uuid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_171

    .line 119
    const-string v0, "L-Uuid"

    const-string v4, "L-Uuid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_171
    iput-object v2, v1, Lcom/mqunar/qapm/domain/NetworkData;->headers:Ljava/util/HashMap;
    :try_end_173
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_173} :catch_1a4

    .line 127
    :cond_173
    :goto_173
    return-object v1

    .line 86
    :cond_174
    const-string v0, "Unknown"

    goto/16 :goto_15

    .line 87
    :cond_178
    const-string v0, "Unknown"

    goto/16 :goto_27

    .line 88
    :cond_17c
    const-string v0, "Unknown"

    goto/16 :goto_39

    .line 89
    :cond_180
    const-string v0, "Unknown"

    goto/16 :goto_4b

    .line 90
    :cond_184
    const-string v0, "Unknown"

    goto/16 :goto_5d

    .line 91
    :cond_188
    const-string v0, "Unknown"

    goto/16 :goto_6f

    .line 92
    :cond_18c
    const-string v0, "Unknown"

    goto/16 :goto_81

    .line 93
    :cond_190
    const-string v0, "Unknown"

    goto/16 :goto_93

    .line 94
    :cond_194
    const-string v0, "Unknown"

    goto/16 :goto_a5

    .line 95
    :cond_198
    const-string v0, "Unknown"

    goto/16 :goto_b7

    .line 96
    :cond_19c
    const-string v0, "Unknown"

    goto/16 :goto_c9

    .line 97
    :cond_1a0
    const-string v0, "Unknown"

    goto/16 :goto_db

    .line 123
    :catch_1a4
    move-exception v0

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_173
.end method
