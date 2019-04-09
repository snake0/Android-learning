.class public Lcom/mqunar/hy/res/utils/CheckQpCompetence;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECK_QP_URL:Ljava/lang/String; = "https://qpadjust.qunar.com/qpadjust.json?hybridid=qpadjust"

.field private static final HYBRID_ID:Ljava/lang/String; = "qpadjust"

.field private static final OFFLINE_QP_INFO:Ljava/lang/String; = "offline_qp_info"


# instance fields
.field private hasInit:Z

.field private onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

.field private qpCheckJson:Lcom/alibaba/fastjson/JSONObject;

.field private usedHybrididSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->qpCheckJson:Lcom/alibaba/fastjson/JSONObject;

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

    .line 30
    iput-boolean v2, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->hasInit:Z

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->usedHybrididSet:Ljava/util/Set;

    .line 34
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getCacheOfflineHybridInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes \u4e0b\u7ebf\u5305\u7f13\u5b58\u4fe1\u606f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/utils/CheckQpCompetence$1;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;-><init>()V

    return-void
.end method

.method private getCacheOfflineHybridInfo()Lcom/alibaba/fastjson/JSONObject;
    .registers 4

    .prologue
    .line 154
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    const-string v1, "offline_qp_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_19

    .line 157
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 159
    :goto_18
    return-object v0

    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_18
.end method

.method public static getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;
    .registers 1

    .prologue
    .line 39
    # getter for: Lcom/mqunar/hy/res/utils/CheckQpCompetence$CheckQpCompetenceHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/CheckQpCompetence;
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence$CheckQpCompetenceHolder;->access$000()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v0

    return-object v0
.end method

.method private getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 60
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const/16 v2, 0x800

    new-array v2, v2, [C

    .line 65
    :goto_e
    :try_start_e
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_1a
    .catchall {:try_start_e .. :try_end_19} :catchall_25

    goto :goto_e

    .line 69
    :catch_1a
    move-exception v0

    .line 70
    :try_start_1b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_25

    .line 72
    :catchall_25
    move-exception v0

    .line 73
    if-eqz v1, :cond_2b

    .line 74
    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_3b

    .line 78
    :cond_2b
    :goto_2b
    throw v0

    .line 68
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_1a
    .catchall {:try_start_2c .. :try_end_2f} :catchall_25

    move-result-object v0

    .line 73
    if-eqz v1, :cond_35

    .line 74
    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 78
    :cond_35
    :goto_35
    return-object v0

    .line 76
    :catch_36
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 76
    :catch_3b
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b
.end method

.method private saveCacheOfflineHybridInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    .prologue
    .line 163
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    const-string v1, "offline_qp_info"

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void
.end method


# virtual methods
.method public declared-synchronized getOfflineHybridVersion(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .registers 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    const-string v1, "https://qpadjust.qunar.com/qpadjust.json?hybridid=qpadjust"

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/HybridManager;->getResByUrl(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3e

    move-result-object v0

    .line 44
    if-nez v0, :cond_f

    .line 56
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 47
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3e

    move-result-object v0

    .line 48
    if-eqz v0, :cond_d

    .line 50
    :try_start_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyRes qpadjust info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->qpCheckJson:Lcom/alibaba/fastjson/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_38} :catch_39
    .catchall {:try_start_19 .. :try_end_38} :catchall_3e

    goto :goto_d

    .line 52
    :catch_39
    move-exception v0

    .line 53
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_d

    .line 43
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isQpCanUse(Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getOfflineWork()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4f

    move-result v2

    if-nez v2, :cond_b

    .line 134
    :cond_9
    :goto_9
    monitor-exit p0

    return v0

    .line 92
    :cond_b
    if-eqz p1, :cond_9

    .line 95
    :try_start_d
    const-string v2, "qpadjust"

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 99
    iget-boolean v2, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->hasInit:Z

    if-nez v2, :cond_21

    .line 100
    invoke-virtual {p0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->init()V

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->hasInit:Z

    .line 104
    :cond_21
    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 110
    iget-object v3, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->usedHybrididSet:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyRes qp\u5305\u5df2\u7ecf\u88ab\u4f7f\u7528 info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_d .. :try_end_4e} :catchall_4f

    goto :goto_9

    .line 88
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_52
    :try_start_52
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->qpCheckJson:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 117
    iget v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ge v3, v2, :cond_7d

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyRes qpadjust qp\u5305\u5224\u65ad\u4e0b\u7ebf info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 119
    goto :goto_9

    .line 123
    :cond_7d
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iget v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ne v2, v3, :cond_a9

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyRes qpadjust \u670d\u52a1\u7aef\u5224\u65ad\u4e0b\u7ebf info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 125
    goto/16 :goto_9

    .line 129
    :cond_a9
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v2

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mqunar/hy/res/HybridManager;->isForceUpgrade(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hyres isQpCanUse qp\u5f3a\u5236\u66f4\u65b0 hybridId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d0
    .catchall {:try_start_52 .. :try_end_d0} :catchall_4f

    move v0, v1

    .line 131
    goto/16 :goto_9
.end method

.method public declared-synchronized setUsedHybridid(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->usedHybrididSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateOfflineHybridInfo(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->hasInit:Z

    if-nez v0, :cond_b

    .line 139
    invoke-virtual {p0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->init()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->hasInit:Z

    .line 142
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 143
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget v4, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HyRes qpadjust qp\u5305\u4e0b\u7ebf info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_46

    goto :goto_f

    .line 138
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->onlineCheckJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->saveCacheOfflineHybridInfo(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    .line 147
    monitor-exit p0

    return-void
.end method
