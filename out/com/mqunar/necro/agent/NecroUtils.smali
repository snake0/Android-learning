.class public Lcom/mqunar/necro/agent/NecroUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_MAX_COUNT:I = 0x14

.field private static final NECRO_FILE_NAME:Ljava/lang/String; = "necro"

.field private static final NECRO_NETWORK:Ljava/lang/String; = "network"

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;

.field public static mContext:Landroid/content/Context;

.field private static mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

.field private static sender:Lcom/mqunar/necro/agent/task/IHttpSender;

.field private static senderSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private static tempDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 93
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/NecroUtils;->senderSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/necro/agent/NecroUtils;->tempDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->getUploadDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/mqunar/necro/agent/logging/AgentLog;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mqunar/necro/agent/task/IHttpSender;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->sender:Lcom/mqunar/necro/agent/task/IHttpSender;

    return-object v0
.end method

.method private static convertNecroParam2Json(Lcom/mqunar/necro/agent/bean/NecroParam;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 219
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    :try_start_5
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NecroParam;->network:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 222
    const-string v1, "network"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/mqunar/necro/agent/bean/NecroParam;->network:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 229
    :goto_1d
    return-object v0

    .line 226
    :catch_1e
    move-exception v0

    .line 227
    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertNecroParam2Json failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 229
    const-string v0, ""

    goto :goto_1d
.end method

.method private static convertNetworkData2Json(Lcom/mqunar/necro/agent/bean/NetworkData;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 241
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 242
    const-string v0, "reqUrl"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v0, "startTime"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->startTime:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v0, "endTime"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->endTime:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v0, "reqSize"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqSize:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v0, "resSize"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->resSize:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v0, "httpCode"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->httpCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v0, "hf"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->hf:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v0, "netType"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->netType:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v0, "netStatus"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->netStatus:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v0, "loc"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->loc:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v0, "mno"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->mno:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v0, "topPage"

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->topPage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 256
    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->headers:Ljava/util/HashMap;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_ad

    .line 257
    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8d} :catch_8e

    goto :goto_74

    .line 267
    :catch_8e
    move-exception v0

    .line 268
    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

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

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    :goto_ac
    return-object v0

    .line 261
    :cond_ad
    :try_start_ad
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_b8

    .line 262
    const-string v0, "header"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_b8} :catch_8e

    :cond_b8
    move-object v0, v2

    .line 265
    goto :goto_ac
.end method

.method static dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V
    .registers 8

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    sget-object v2, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getCount()I

    move-result v2

    const/16 v3, 0x13

    if-ge v2, v3, :cond_30

    .line 63
    invoke-static {p0}, Lcom/mqunar/necro/agent/NecroUtils;->saveData(Lcom/mqunar/necro/agent/bean/BaseData;)V

    .line 69
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    sget-object v4, Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealData time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 71
    return-void

    .line 65
    :cond_30
    invoke-static {p0}, Lcom/mqunar/necro/agent/NecroUtils;->popData2File(Lcom/mqunar/necro/agent/bean/BaseData;)V

    .line 66
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->sendData()V

    goto :goto_11
.end method

.method private static declared-synchronized getStorageData(Lcom/mqunar/necro/agent/bean/BaseData;Z)Lcom/mqunar/necro/agent/bean/NecroParam;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 154
    const-class v2, Lcom/mqunar/necro/agent/NecroUtils;

    monitor-enter v2

    :try_start_4
    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    if-eqz v1, :cond_77

    .line 155
    new-instance v1, Lcom/mqunar/necro/agent/bean/NecroParam;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/bean/NecroParam;-><init>()V

    .line 157
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 159
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 160
    new-instance v4, Lcom/mqunar/necro/agent/NecroUtils$2;

    invoke-direct {v4}, Lcom/mqunar/necro/agent/NecroUtils$2;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_89

    .line 169
    :try_start_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    const-string v5, "network_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 171
    new-instance v5, Lorg/json/JSONObject;

    sget-object v6, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_47} :catch_48
    .catchall {:try_start_20 .. :try_end_47} :catchall_89

    goto :goto_24

    .line 178
    :catch_48
    move-exception v0

    .line 180
    :try_start_49
    sget-object v4, Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Storage Data failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 183
    :cond_61
    :goto_61
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NecroParam;->network:Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getCount()I

    move-result v0

    iput v0, v1, Lcom/mqunar/necro/agent/bean/NecroParam;->cLogCount:I

    .line 186
    if-eqz p1, :cond_76

    .line 187
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->clean()V
    :try_end_76
    .catchall {:try_start_49 .. :try_end_76} :catchall_89

    :cond_76
    move-object v0, v1

    .line 191
    :cond_77
    monitor-exit v2

    return-object v0

    .line 175
    :cond_79
    if-eqz p0, :cond_61

    :try_start_7b
    instance-of v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;

    if-eqz v0, :cond_61

    .line 176
    check-cast p0, Lcom/mqunar/necro/agent/bean/NetworkData;

    invoke-static {p0}, Lcom/mqunar/necro/agent/NecroUtils;->convertNetworkData2Json(Lcom/mqunar/necro/agent/bean/NetworkData;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_88} :catch_48
    .catchall {:try_start_7b .. :try_end_88} :catchall_89

    goto :goto_61

    .line 154
    :catchall_89
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static getUploadDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->tempDir:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 280
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/necro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/NecroUtils;->tempDir:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_39

    .line 284
    :goto_1f
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->tempDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    .line 285
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->tempDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 288
    :cond_36
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->tempDir:Ljava/lang/String;

    return-object v0

    .line 281
    :catch_39
    move-exception v0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/necro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/NecroUtils;->tempDir:Ljava/lang/String;

    goto :goto_1f
.end method

.method public static init(Landroid/content/Context;Lcom/mqunar/necro/agent/task/IHttpSender;)V
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    .line 51
    sput-object p1, Lcom/mqunar/necro/agent/NecroUtils;->sender:Lcom/mqunar/necro/agent/task/IHttpSender;

    .line 52
    const-string v0, "necro"

    invoke-static {p0, v0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/necro/agent/util/NecroSpStorage;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    .line 53
    return-void
.end method

.method private static popData2File(Lcom/mqunar/necro/agent/bean/BaseData;)V
    .registers 5

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mqunar/necro/agent/NecroUtils;->getStorageData(Lcom/mqunar/necro/agent/bean/BaseData;Z)Lcom/mqunar/necro/agent/bean/NecroParam;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/mqunar/necro/agent/NecroUtils;->convertNecroParam2Json(Lcom/mqunar/necro/agent/bean/NecroParam;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/mqunar/necro/agent/util/SafeUtils;->canEncryption()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 87
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/SafeUtils;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->getUploadDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->str2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    return-void
.end method

.method private static declared-synchronized saveData(Lcom/mqunar/necro/agent/bean/BaseData;)V
    .registers 7

    .prologue
    .line 200
    const-class v1, Lcom/mqunar/necro/agent/NecroUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    if-eqz v0, :cond_4d

    if-eqz p0, :cond_4d

    .line 201
    instance-of v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;

    if-eqz v0, :cond_4d

    .line 202
    check-cast p0, Lcom/mqunar/necro/agent/bean/NetworkData;

    invoke-static {p0}, Lcom/mqunar/necro/agent/NecroUtils;->convertNetworkData2Json(Lcom/mqunar/necro/agent/bean/NetworkData;)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    sget-object v2, Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 204
    if-eqz v0, :cond_4d

    .line 205
    sget-object v2, Lcom/mqunar/necro/agent/NecroUtils;->mStorage:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4f

    .line 209
    :cond_4d
    monitor-exit v1

    return-void

    .line 200
    :catchall_4f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static sendData()V
    .registers 2

    .prologue
    .line 100
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 132
    :goto_8
    return-void

    .line 105
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/NecroUtils;->senderSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mqunar/necro/agent/NecroUtils$1;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/NecroUtils$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public static sendDataNow()V
    .registers 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mqunar/necro/agent/NecroUtils;->popData2File(Lcom/mqunar/necro/agent/bean/BaseData;)V

    .line 143
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->sendData()V

    .line 144
    return-void
.end method
