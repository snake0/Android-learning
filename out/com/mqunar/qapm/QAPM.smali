.class public Lcom/mqunar/qapm/QAPM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/IQAPM;


# static fields
.field private static a:Lcom/mqunar/qapm/QAPM;

.field private static b:Z

.field public static mContext:Landroid/content/Context;


# instance fields
.field private c:Lcom/mqunar/qapm/network/sender/ISender;

.field private d:Lcom/mqunar/qapm/tracing/WatchMan;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/qapm/QAPM;->a:Lcom/mqunar/qapm/QAPM;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lcom/mqunar/qapm/QAPM;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    .line 50
    if-nez p2, :cond_f

    invoke-virtual {p0}, Lcom/mqunar/qapm/QAPM;->getCParam()Ljava/lang/String;

    move-result-object p2

    :cond_f
    iput-object p2, p0, Lcom/mqunar/qapm/QAPM;->e:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;

    invoke-direct {v0}, Lcom/mqunar/qapm/tracing/BackgroundTrace;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/QAPM;->d:Lcom/mqunar/qapm/tracing/WatchMan;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QAPM-Thread-upload"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mqunar/qapm/QAPM;->g:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mqunar/qapm/QAPM;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mqunar/qapm/QAPM;->f:Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Lcom/mqunar/qapm/QAPM;->a()V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .prologue
    .line 163
    if-nez p1, :cond_a

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is empty!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_a
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_f

    .line 174
    :cond_e
    :goto_e
    return-object p1

    .line 169
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_e

    move-object p1, v0

    .line 171
    goto :goto_e
.end method

.method static synthetic a(Lcom/mqunar/qapm/QAPM;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 151
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->d:Lcom/mqunar/qapm/tracing/WatchMan;

    if-eqz v0, :cond_17

    .line 152
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/mqunar/qapm/QAPM;->d:Lcom/mqunar/qapm/tracing/WatchMan;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 154
    :cond_17
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 157
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->d:Lcom/mqunar/qapm/tracing/WatchMan;

    if-eqz v0, :cond_17

    .line 158
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/mqunar/qapm/QAPM;->d:Lcom/mqunar/qapm/tracing/WatchMan;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 160
    :cond_17
    return-void
.end method

.method public static getActiveNetworkCarrier()Ljava/lang/String;
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveNetworkWanType()Ljava/lang/String;
    .registers 1

    .prologue
    .line 221
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->wanType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mqunar/qapm/QAPM;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/mqunar/qapm/QAPM;->a:Lcom/mqunar/qapm/QAPM;

    return-object v0
.end method

.method public static getSaveDataFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 180
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qapm/utils/IOUtils;->getUploadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 181
    if-nez v0, :cond_a

    .line 182
    const/4 v0, 0x0

    .line 190
    :goto_9
    return-object v0

    .line 184
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_17

    .line 190
    :goto_12
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 187
    :catch_17
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public static make(Landroid/content/Context;I)Lcom/mqunar/qapm/QAPM;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mqunar/qapm/QAPMConstant;->pid:Ljava/lang/String;

    .line 60
    if-eqz p0, :cond_1c

    invoke-static {p0, v0}, Lcom/mqunar/qapm/QAPM;->make(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/qapm/QAPM;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method public static make(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/qapm/QAPM;
    .registers 4

    .prologue
    .line 64
    sget-object v0, Lcom/mqunar/qapm/QAPM;->a:Lcom/mqunar/qapm/QAPM;

    if-nez v0, :cond_13

    .line 65
    const-class v1, Lcom/mqunar/qapm/QAPM;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v0, Lcom/mqunar/qapm/QAPM;->a:Lcom/mqunar/qapm/QAPM;

    if-nez v0, :cond_12

    .line 67
    new-instance v0, Lcom/mqunar/qapm/QAPM;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/qapm/QAPM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/QAPM;->a:Lcom/mqunar/qapm/QAPM;

    .line 69
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 71
    :cond_13
    sget-object v0, Lcom/mqunar/qapm/QAPM;->a:Lcom/mqunar/qapm/QAPM;

    return-object v0

    .line 69
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public addNetMonitor(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 110
    invoke-static {}, Lcom/mqunar/qapm/dao/NetworkDataParse;->newInstance()Lcom/mqunar/qapm/dao/NetworkDataParse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/qapm/dao/NetworkDataParse;->convertMap2BaseData(Ljava/util/Map;)Lcom/mqunar/qapm/domain/BaseData;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mqunar/qapm/dao/Storage;->newStorage(Landroid/content/Context;)Lcom/mqunar/qapm/dao/Storage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/qapm/dao/Storage;->putData(Lcom/mqunar/qapm/domain/BaseData;)V

    .line 113
    :cond_19
    return-void
.end method

.method public addUIMonitor(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 102
    invoke-static {}, Lcom/mqunar/qapm/dao/UIDataParse;->newInstance()Lcom/mqunar/qapm/dao/UIDataParse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/qapm/dao/UIDataParse;->convertMap2BaseData(Ljava/util/Map;)Lcom/mqunar/qapm/domain/BaseData;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mqunar/qapm/dao/Storage;->newStorage(Landroid/content/Context;)Lcom/mqunar/qapm/dao/Storage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/qapm/dao/Storage;->putData(Lcom/mqunar/qapm/domain/BaseData;)V

    .line 105
    :cond_19
    return-void
.end method

.method public getCParam()Ljava/lang/String;
    .registers 6

    .prologue
    .line 79
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 80
    const/4 v0, 0x0

    .line 96
    :goto_5
    return-object v0

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->e:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 83
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->e:Ljava/lang/String;

    goto :goto_5

    .line 85
    :cond_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    :try_start_12
    sget-object v1, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 88
    sget-object v2, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 89
    const-string v2, "ma"

    invoke-static {}, Lcom/mqunar/qapm/utils/AndroidUtils;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v2, "osVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v2, "pid"

    sget-object v3, Lcom/mqunar/qapm/QAPMConstant;->pid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v2, "uid"

    sget-object v3, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mqunar/qapm/utils/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "vid"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v1, "ke"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_72} :catch_77

    .line 96
    :goto_72
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 95
    :catch_77
    move-exception v1

    goto :goto_72
.end method

.method public getSender()Lcom/mqunar/qapm/network/sender/ISender;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->c:Lcom/mqunar/qapm/network/sender/ISender;

    if-nez v0, :cond_22

    .line 125
    const-string v0, "com.mqunar.qav.uelog.QAVLog"

    const-string v1, "getRequestId"

    invoke-static {v0, v1, v2, v2}, Lcom/mqunar/qapm/utils/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    sget-boolean v1, Lcom/mqunar/qapm/QAPM;->b:Z

    if-eqz v1, :cond_25

    .line 127
    new-instance v1, Lcom/mqunar/qapm/network/sender/QAPMSender;

    const-string v2, "http://mloganalysts.corp.qunar.com/api/log/unifiedLog"

    const-string v3, ""

    invoke-virtual {p0}, Lcom/mqunar/qapm/QAPM;->getCParam()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/mqunar/qapm/network/sender/QAPMSender;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mqunar/qapm/QAPM;->c:Lcom/mqunar/qapm/network/sender/ISender;

    .line 132
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->c:Lcom/mqunar/qapm/network/sender/ISender;

    return-object v0

    .line 129
    :cond_25
    new-instance v1, Lcom/mqunar/qapm/network/sender/QAPMSender;

    const-string v2, "http://l-acra1.wap.beta.cn0.qunar.com:9099/api/log/unifiedLog"

    const-string v3, "http://front.pitcher.beta.qunar.com/pitcher-proxy"

    invoke-virtual {p0}, Lcom/mqunar/qapm/QAPM;->getCParam()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/mqunar/qapm/network/sender/QAPMSender;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mqunar/qapm/QAPM;->c:Lcom/mqunar/qapm/network/sender/ISender;

    goto :goto_22
.end method

.method public release()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 147
    :cond_9
    invoke-direct {p0}, Lcom/mqunar/qapm/QAPM;->b()V

    .line 148
    return-void
.end method

.method public setSender(Lcom/mqunar/qapm/network/sender/ISender;)V
    .registers 2

    .prologue
    .line 117
    if-eqz p1, :cond_4

    .line 118
    iput-object p1, p0, Lcom/mqunar/qapm/QAPM;->c:Lcom/mqunar/qapm/network/sender/ISender;

    .line 120
    :cond_4
    return-void
.end method

.method public upload(Z)V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mqunar/qapm/QAPM;->f:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/qapm/a;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/qapm/a;-><init>(Lcom/mqunar/qapm/QAPM;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public withLogEnabled(Z)Lcom/mqunar/qapm/QAPM;
    .registers 3

    .prologue
    .line 136
    if-nez p1, :cond_10

    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lcom/mqunar/qapm/QAPM;->b:Z

    .line 137
    if-eqz p1, :cond_12

    new-instance v0, Lcom/mqunar/qapm/logging/AndroidAgentLog;

    invoke-direct {v0}, Lcom/mqunar/qapm/logging/AndroidAgentLog;-><init>()V

    :goto_c
    invoke-static {v0}, Lcom/mqunar/qapm/logging/AgentLogManager;->setAgentLog(Lcom/mqunar/qapm/logging/AgentLog;)V

    .line 138
    return-object p0

    .line 136
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 137
    :cond_12
    new-instance v0, Lcom/mqunar/qapm/logging/NullAgentLog;

    invoke-direct {v0}, Lcom/mqunar/qapm/logging/NullAgentLog;-><init>()V

    goto :goto_c
.end method
