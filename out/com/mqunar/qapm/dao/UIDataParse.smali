.class public Lcom/mqunar/qapm/dao/UIDataParse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/dao/IDataParse;


# static fields
.field private static final a:Lcom/mqunar/qapm/logging/AgentLog;

.field private static b:Lcom/mqunar/qapm/dao/UIDataParse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/dao/UIDataParse;->a:Lcom/mqunar/qapm/logging/AgentLog;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/qapm/dao/UIDataParse;->b:Lcom/mqunar/qapm/dao/UIDataParse;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/mqunar/qapm/dao/UIDataParse;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/mqunar/qapm/dao/UIDataParse;->b:Lcom/mqunar/qapm/dao/UIDataParse;

    if-nez v0, :cond_13

    .line 36
    const-class v1, Lcom/mqunar/qapm/dao/UIDataParse;

    monitor-enter v1

    .line 37
    :try_start_7
    sget-object v0, Lcom/mqunar/qapm/dao/UIDataParse;->b:Lcom/mqunar/qapm/dao/UIDataParse;

    if-nez v0, :cond_12

    .line 38
    new-instance v0, Lcom/mqunar/qapm/dao/UIDataParse;

    invoke-direct {v0}, Lcom/mqunar/qapm/dao/UIDataParse;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/dao/UIDataParse;->b:Lcom/mqunar/qapm/dao/UIDataParse;

    .line 40
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 42
    :cond_13
    sget-object v0, Lcom/mqunar/qapm/dao/UIDataParse;->b:Lcom/mqunar/qapm/dao/UIDataParse;

    return-object v0

    .line 40
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
    .line 47
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 48
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

    .line 49
    invoke-virtual {p0, v0}, Lcom/mqunar/qapm/dao/UIDataParse;->convertImplData2Json(Lcom/mqunar/qapm/domain/BaseData;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_9

    .line 51
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 54
    :cond_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertImplData2Json(Lcom/mqunar/qapm/domain/BaseData;)Lorg/json/JSONObject;
    .registers 9

    .prologue
    const-wide/16 v5, -0x2710

    .line 60
    :try_start_2
    instance-of v0, p1, Lcom/mqunar/qapm/domain/UIData;

    if-eqz v0, :cond_97

    .line 61
    check-cast p1, Lcom/mqunar/qapm/domain/UIData;

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string v1, "action"

    iget-object v2, p1, Lcom/mqunar/qapm/domain/UIData;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "page"

    iget-object v2, p1, Lcom/mqunar/qapm/domain/UIData;->page:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "createTime"

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->createTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6e

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->createTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "resumeTime"

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->resumeTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_71

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->resumeTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_3a
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "hiddenTime"

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->hiddenTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_74

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->hiddenTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_4b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v2, "showTime"

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->showTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_77

    iget-wide v3, p1, Lcom/mqunar/qapm/domain/UIData;->showTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_5c
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "status"

    iget-object v2, p1, Lcom/mqunar/qapm/domain/UIData;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "netType"

    iget-object v2, p1, Lcom/mqunar/qapm/domain/UIData;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :goto_6d
    return-object v0

    .line 65
    :cond_6e
    const-string v1, "Unknown"

    goto :goto_29

    .line 66
    :cond_71
    const-string v1, "Unknown"

    goto :goto_3a

    .line 67
    :cond_74
    const-string v1, "Unknown"

    goto :goto_4b

    .line 68
    :cond_77
    const-string v1, "Unknown"
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_79} :catch_7a

    goto :goto_5c

    .line 73
    :catch_7a
    move-exception v0

    .line 74
    const-string v1, "DataParse"

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

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_97
    const/4 v0, 0x0

    goto :goto_6d
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
    const-wide/16 v2, -0x2710

    .line 81
    new-instance v4, Lcom/mqunar/qapm/domain/UIData;

    invoke-direct {v4}, Lcom/mqunar/qapm/domain/UIData;-><init>()V

    .line 82
    const-string v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a8

    const-string v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_17
    iput-object v0, v4, Lcom/mqunar/qapm/domain/UIData;->action:Ljava/lang/String;

    .line 83
    const-string v0, "page"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ac

    const-string v0, "page"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_29
    iput-object v0, v4, Lcom/mqunar/qapm/domain/UIData;->page:Ljava/lang/String;

    .line 84
    const-string v0, "createTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b0

    const-string v0, "createTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_3f
    iput-wide v0, v4, Lcom/mqunar/qapm/domain/UIData;->createTime:J

    .line 85
    const-string v0, "resumeTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b2

    const-string v0, "resumeTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_55
    iput-wide v0, v4, Lcom/mqunar/qapm/domain/UIData;->resumeTime:J

    .line 86
    const-string v0, "hiddenTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b4

    const-string v0, "hiddenTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_6b
    iput-wide v0, v4, Lcom/mqunar/qapm/domain/UIData;->hiddenTime:J

    .line 87
    const-string v0, "hiddenTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_81

    const-string v0, "hiddenTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_81
    iput-wide v2, v4, Lcom/mqunar/qapm/domain/UIData;->showTime:J

    .line 88
    const-string v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b6

    const-string v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_93
    iput-object v0, v4, Lcom/mqunar/qapm/domain/UIData;->status:Ljava/lang/String;

    .line 89
    const-string v0, "netType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b9

    const-string v0, "netType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a5
    iput-object v0, v4, Lcom/mqunar/qapm/domain/UIData;->netType:Ljava/lang/String;

    .line 90
    return-object v4

    .line 82
    :cond_a8
    const-string v0, "Unknown"

    goto/16 :goto_17

    .line 83
    :cond_ac
    const-string v0, "Unknown"

    goto/16 :goto_29

    :cond_b0
    move-wide v0, v2

    .line 84
    goto :goto_3f

    :cond_b2
    move-wide v0, v2

    .line 85
    goto :goto_55

    :cond_b4
    move-wide v0, v2

    .line 86
    goto :goto_6b

    .line 88
    :cond_b6
    const-string v0, "Unknown"

    goto :goto_93

    .line 89
    :cond_b9
    const-string v0, "Unknown"

    goto :goto_a5
.end method
