.class public Lcom/mqunar/necro/agent/util/NecroSpStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mStorageHandler:Landroid/os/Handler;

.field private static mStorageHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mMemoryCacheData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->sp:Landroid/content/SharedPreferences;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/necro/agent/util/NecroSpStorage;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    return-object v0
.end method

.method private apply(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getStorageHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;-><init>(Lcom/mqunar/necro/agent/util/NecroSpStorage;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method private getDataFromMemoryCache(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 156
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private getStorageHandler()Landroid/os/Handler;
    .registers 4

    .prologue
    .line 176
    sget-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandler:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 177
    const-class v1, Lcom/mqunar/necro/agent/util/NecroSpStorage;

    monitor-enter v1

    .line 178
    :try_start_7
    sget-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandler:Landroid/os/Handler;

    if-nez v0, :cond_1a

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getStorageHandlerThread()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandler:Landroid/os/Handler;

    .line 181
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1e

    .line 183
    :cond_1b
    sget-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandler:Landroid/os/Handler;

    return-object v0

    .line 181
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private getStorageHandlerThread()Landroid/os/HandlerThread;
    .registers 3

    .prologue
    .line 167
    sget-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_12

    .line 168
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NecroStorage"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandlerThread:Landroid/os/HandlerThread;

    .line 169
    sget-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    :cond_12
    sget-object v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mStorageHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/necro/agent/util/NecroSpStorage;
    .registers 3

    .prologue
    .line 37
    new-instance v0, Lcom/mqunar/necro/agent/util/NecroSpStorage;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/necro/agent/util/NecroSpStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private putData2MemoryCache(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 145
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private submitEditor(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->apply(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 121
    return-void
.end method


# virtual methods
.method public clean()V
    .registers 3

    .prologue
    .line 41
    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    invoke-direct {p0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getStorageHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 48
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 96
    iget-object v1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1e

    .line 100
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    .line 98
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 112
    iget-object v1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 114
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 70
    monitor-enter p0

    .line 72
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->getDataFromMemoryCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_b

    .line 74
    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    .line 83
    :cond_a
    :goto_a
    return-object v0

    .line 77
    :cond_b
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    .line 79
    invoke-static {}, Lcom/mqunar/necro/agent/util/SafeUtils;->canEncryption()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 80
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/SafeUtils;->da(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 78
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->putData2MemoryCache(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_22

    .line 56
    :try_start_4
    invoke-static {}, Lcom/mqunar/necro/agent/util/SafeUtils;->canEncryption()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    invoke-static {p2}, Lcom/mqunar/necro/agent/util/SafeUtils;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    :cond_e
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->submitEditor(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1d
    .catchall {:try_start_4 .. :try_end_1b} :catchall_22

    .line 65
    :goto_1b
    :try_start_1b
    monitor-exit p0

    .line 66
    return-void

    .line 62
    :catch_1d
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 65
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v0
.end method
