.class public Lcom/mqunar/hy/res/logger/DevQPLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOWNLOAD_FAIL:I = 0x0

.field public static final DOWNLOAD_SUCC:I = 0x1

.field public static final LOAD_NO_RES:I = 0x0

.field public static final LOAD_SUCC:I = 0x1

.field public static final TYPE_CACHE_QP:Ljava/lang/String; = "cacheQP"

.field public static final TYPE_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final TYPE_LOAD:Ljava/lang/String; = "load"

.field public static final TYPE_UPDATE:Ljava/lang/String; = "update"

.field public static final UPDATE_FAIL:I = 0x0

.field public static final UPDATE_FORCE:I = 0x3

.field public static final UPDATE_NORMAL:I = 0x2

.field public static final UPDATE_NO_NEED:I = 0x1

.field private static isBeta:Z

.field private static onQpLogListener:Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lcom/mqunar/hy/res/logger/DevQPLog;->isBeta:Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method private static getStatusByInfo(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/model/HybridInfo;)I
    .registers 4

    .prologue
    .line 123
    if-eqz p1, :cond_8

    iget v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ne v0, v1, :cond_a

    .line 124
    :cond_8
    const/4 v0, 0x1

    .line 126
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->isForce()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto :goto_9

    :cond_12
    const/4 v0, 0x2

    goto :goto_9
.end method

.method private static isCanLog()Z
    .registers 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/mqunar/hy/res/logger/DevQPLog;->isBeta:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/mqunar/hy/res/logger/DevQPLog;->onQpLogListener:Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static onCachedLog(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 5

    .prologue
    .line 84
    invoke-static {}, Lcom/mqunar/hy/res/logger/DevQPLog;->isCanLog()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 97
    :cond_8
    :goto_8
    return-void

    .line 88
    :cond_9
    :try_start_9
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 89
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "type"

    const-string v2, "cacheQP"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "hybridId"

    iget-object v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "version"

    iget v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/mqunar/hy/res/logger/DevQPLog;->onQpLogListener:Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;

    invoke-interface {v1, v0}, Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;->onQPLog(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_8

    .line 94
    :catch_3a
    move-exception v0

    .line 95
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public static onDownloadLog(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {}, Lcom/mqunar/hy/res/logger/DevQPLog;->isCanLog()Z

    move-result v0

    if-nez v0, :cond_8

    .line 81
    :goto_7
    return-void

    .line 68
    :cond_8
    if-eqz p0, :cond_52

    const/4 v0, 0x1

    .line 69
    :goto_b
    :try_start_b
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 70
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v3, "type"

    const-string v4, "download"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "hybridId"

    invoke-virtual {v2, v3, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v3, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "costTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "version"

    invoke-virtual {v2, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "newVersion"

    invoke-virtual {v2, v0, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/mqunar/hy/res/logger/DevQPLog;->onQpLogListener:Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;

    invoke-interface {v0, v2}, Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;->onQPLog(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_4b

    goto :goto_7

    .line 78
    :catch_4b
    move-exception v0

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_52
    move v0, v1

    .line 68
    goto :goto_b
.end method

.method public static onLoadLog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Lcom/mqunar/hy/res/logger/DevQPLog;->isCanLog()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 116
    :cond_d
    :goto_d
    return-void

    .line 104
    :cond_e
    if-eqz p0, :cond_4f

    const/4 v0, 0x1

    .line 105
    :goto_11
    :try_start_11
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v3, "type"

    const-string v4, "load"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v3, "resUrl"

    invoke-virtual {v2, v3, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v3, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "hybridId"

    invoke-virtual {v2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "version"

    invoke-virtual {v2, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/mqunar/hy/res/logger/DevQPLog;->onQpLogListener:Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;

    invoke-interface {v0, v2}, Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;->onQPLog(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_47} :catch_48

    goto :goto_d

    .line 113
    :catch_48
    move-exception v0

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_4f
    move v0, v1

    .line 104
    goto :goto_11
.end method

.method public static onUpdateLog(ZJLcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/mqunar/hy/res/logger/DevQPLog;->isCanLog()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p3, :cond_a

    .line 61
    :cond_9
    :goto_9
    return-void

    .line 48
    :cond_a
    if-eqz p0, :cond_85

    :try_start_c
    invoke-static {p3, p4}, Lcom/mqunar/hy/res/logger/DevQPLog;->getStatusByInfo(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/model/HybridInfo;)I

    move-result v0

    .line 49
    :goto_10
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 50
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "type"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "hybridId"

    iget-object v4, p3, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "costTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "newVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_87

    iget v0, p3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    :goto_67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/mqunar/hy/res/logger/DevQPLog;->onQpLogListener:Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;

    invoke-interface {v0, v2}, Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;->onQPLog(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7d} :catch_7e

    goto :goto_9

    .line 58
    :catch_7e
    move-exception v0

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_85
    move v0, v1

    .line 48
    goto :goto_10

    .line 56
    :cond_87
    :try_start_87
    iget v0, p4, Lcom/mqunar/hy/res/model/HybridInfo;->version:I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_89} :catch_7e

    goto :goto_67
.end method

.method public static setOnQpLogListener(Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;)V
    .registers 2

    .prologue
    .line 36
    sget-boolean v0, Lcom/mqunar/hy/res/logger/DevQPLog;->isBeta:Z

    if-eqz v0, :cond_6

    .line 37
    sput-object p0, Lcom/mqunar/hy/res/logger/DevQPLog;->onQpLogListener:Lcom/mqunar/hy/res/logger/DevQPLog$OnQpLogListener;

    .line 39
    :cond_6
    return-void
.end method
