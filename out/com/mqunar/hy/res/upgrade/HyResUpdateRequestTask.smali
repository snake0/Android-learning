.class public Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;
.super Lcom/mqunar/hy/res/upgrade/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/hy/res/upgrade/Task",
        "<",
        "Lcom/mqunar/hy/res/model/HybridInfo;",
        "Lcom/mqunar/hy/res/model/HybridResult;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mqunar/hy/res/upgrade/Task;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->instance:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    invoke-direct {v0}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->instance:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    .line 29
    :cond_b
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_19

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must call HyResInitializer.getInstance first !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_19
    sget-object v0, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->instance:Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;

    return-object v0
.end method

.method private sendRequest(Lcom/mqunar/hy/res/model/HybridParam;Lcom/mqunar/hy/res/TaskResult;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/model/HybridParam;",
            "Lcom/mqunar/hy/res/TaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 60
    new-instance v2, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/mqunar/hy/res/upgrade/HybridUpdateCallback;-><init>(Landroid/content/Context;Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;Lcom/mqunar/hy/res/model/HybridParam;Lcom/mqunar/hy/res/TaskResult;)V

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_28

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 66
    :cond_28
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getCParam()Lcom/mqunar/hy/res/model/CommonParam;

    move-result-object v0

    .line 68
    const-string v1, "cparam="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getModules()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 70
    const-string v0, "&module="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getModules()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_58
    const-string v0, "&hlist="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    invoke-static {v1}, Lcom/mqunar/hy/res/model/HybridParam;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridParam;->current:Lcom/mqunar/hy/res/model/HybridInfo;

    if-eqz v0, :cond_82

    .line 74
    const-string v0, "&current="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridParam;->current:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_82
    const-string v0, "&isProdBeta="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isBetaQPServerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    new-array v1, v5, [B

    .line 80
    :try_start_91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_91 .. :try_end_9a} :catch_13e

    move-result-object v0

    .line 81
    :try_start_9b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    invoke-static {v3}, Lcom/mqunar/hy/res/model/HybridParam;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridParam;->current:Lcom/mqunar/hy/res/model/HybridInfo;

    if-eqz v1, :cond_e7

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridParam;->current:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v3}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_e7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list.size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_106
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9b .. :try_end_106} :catch_146

    .line 90
    :goto_106
    new-instance v1, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;

    invoke-direct {v1}, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;-><init>()V

    .line 91
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->setUrl(Ljava/lang/String;)Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->setContent([B)Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;

    move-result-object v0

    const-string v1, "connection"

    const-string v3, "keep-alive"

    .line 93
    invoke-virtual {v0, v1, v3}, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 94
    invoke-virtual {v0, v1, v3}, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mqunar/hy/res/libtask/TaskCallback;

    aput-object v2, v1, v5

    .line 95
    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->create([Lcom/mqunar/hy/res/libtask/TaskCallback;)Lcom/mqunar/hy/res/libtask/ProxyConductor;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->getInstance()Lcom/mqunar/hy/res/libtask/ChiefGuard;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v2

    new-array v3, v5, [Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;

    invoke-virtual {v1, v2, v0, v3}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/hy/res/libtask/AbsConductor;[Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;)V

    .line 97
    return-void

    .line 87
    :catch_13e
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 88
    :goto_142
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_106

    .line 87
    :catch_146
    move-exception v1

    goto :goto_142
.end method


# virtual methods
.method public bridge synthetic necessary()Z
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/mqunar/hy/res/upgrade/Task;->necessary()Z

    move-result v0

    return v0
.end method

.method public varargs run(Ljava/util/List;Lcom/mqunar/hy/res/TaskResult;[Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;",
            "Lcom/mqunar/hy/res/TaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridResult;",
            ">;[",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 37
    if-nez p3, :cond_a

    invoke-virtual {p0}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->necessary()Z

    move-result v0

    if-nez v0, :cond_a

    .line 57
    :goto_9
    return-void

    .line 41
    :cond_a
    new-instance v0, Lcom/mqunar/hy/res/model/HybridParam;

    invoke-direct {v0, p1}, Lcom/mqunar/hy/res/model/HybridParam;-><init>(Ljava/util/List;)V

    .line 43
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v1

    if-nez v1, :cond_37

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyRes HybridParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/mqunar/hy/res/model/HybridParam;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_37
    if-eqz p3, :cond_3c

    array-length v1, p3

    if-nez v1, :cond_4d

    .line 47
    :cond_3c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->setStatus(B)V

    .line 52
    :goto_40
    :try_start_40
    invoke-direct {p0, v0, p2}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->sendRequest(Lcom/mqunar/hy/res/model/HybridParam;Lcom/mqunar/hy/res/TaskResult;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_9

    .line 53
    :catch_44
    move-exception v0

    .line 54
    const-string v1, "wt"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 49
    :cond_4d
    aget-object v1, p3, v3

    iput-object v1, v0, Lcom/mqunar/hy/res/model/HybridParam;->current:Lcom/mqunar/hy/res/model/HybridInfo;

    goto :goto_40
.end method

.method public bridge synthetic run(Ljava/util/List;Lcom/mqunar/hy/res/TaskResult;[Ljava/io/Serializable;)V
    .registers 4

    .prologue
    .line 18
    check-cast p3, [Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mqunar/hy/res/upgrade/HyResUpdateRequestTask;->run(Ljava/util/List;Lcom/mqunar/hy/res/TaskResult;[Lcom/mqunar/hy/res/model/HybridInfo;)V

    return-void
.end method

.method public bridge synthetic setStatus(B)V
    .registers 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/upgrade/Task;->setStatus(B)V

    return-void
.end method

.method public bridge synthetic setValid(Z)V
    .registers 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/upgrade/Task;->setValid(Z)V

    return-void
.end method

.method public bridge synthetic valid()Z
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/mqunar/hy/res/upgrade/Task;->valid()Z

    move-result v0

    return v0
.end method
