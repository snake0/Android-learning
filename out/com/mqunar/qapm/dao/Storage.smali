.class public Lcom/mqunar/qapm/dao/Storage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/dao/IStorage;


# static fields
.field private static a:Lcom/mqunar/qapm/dao/Storage;

.field private static b:Landroid/os/HandlerThread;

.field private static c:Landroid/os/Handler;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/qapm/domain/BaseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/mqunar/qapm/dao/NetworkDataParse;

.field private f:Lcom/mqunar/qapm/dao/UIDataParse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/qapm/dao/Storage;->a:Lcom/mqunar/qapm/dao/Storage;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/dao/Storage;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/mqunar/qapm/dao/NetworkDataParse;->newInstance()Lcom/mqunar/qapm/dao/NetworkDataParse;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qapm/dao/Storage;->e:Lcom/mqunar/qapm/dao/NetworkDataParse;

    .line 36
    invoke-static {}, Lcom/mqunar/qapm/dao/UIDataParse;->newInstance()Lcom/mqunar/qapm/dao/UIDataParse;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qapm/dao/Storage;->f:Lcom/mqunar/qapm/dao/UIDataParse;

    .line 37
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
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
    .line 79
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_40

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/mqunar/qapm/domain/NetworkData;

    if-eqz v3, :cond_2b

    .line 83
    iget-object v3, p0, Lcom/mqunar/qapm/dao/Storage;->e:Lcom/mqunar/qapm/dao/NetworkDataParse;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/BaseData;

    invoke-virtual {v3, v0}, Lcom/mqunar/qapm/dao/NetworkDataParse;->convertImplData2Json(Lcom/mqunar/qapm/domain/BaseData;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    .line 88
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 80
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 84
    :cond_2b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/mqunar/qapm/domain/UIData;

    if-eqz v3, :cond_22

    .line 85
    iget-object v3, p0, Lcom/mqunar/qapm/dao/Storage;->f:Lcom/mqunar/qapm/dao/UIDataParse;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/BaseData;

    invoke-virtual {v3, v0}, Lcom/mqunar/qapm/dao/UIDataParse;->convertImplData2Json(Lcom/mqunar/qapm/domain/BaseData;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_22

    .line 91
    :cond_40
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/List;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->d:Ljava/util/List;

    return-object v0
.end method

.method private b()Landroid/os/HandlerThread;
    .registers 3

    .prologue
    .line 106
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_12

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QAPM-Thread-storage"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mqunar/qapm/dao/Storage;->b:Landroid/os/HandlerThread;

    .line 108
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    :cond_12
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->b:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private c()Landroid/os/Handler;
    .registers 4

    .prologue
    .line 114
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->c:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 115
    const-class v1, Lcom/mqunar/qapm/dao/Storage;

    monitor-enter v1

    .line 116
    :try_start_7
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->c:Landroid/os/Handler;

    if-nez v0, :cond_1a

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/mqunar/qapm/dao/Storage;->b()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mqunar/qapm/dao/Storage;->c:Landroid/os/Handler;

    .line 119
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1e

    .line 121
    :cond_1b
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->c:Landroid/os/Handler;

    return-object v0

    .line 119
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public static newStorage(Landroid/content/Context;)Lcom/mqunar/qapm/dao/Storage;
    .registers 3

    .prologue
    .line 40
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->a:Lcom/mqunar/qapm/dao/Storage;

    if-nez v0, :cond_13

    .line 41
    const-class v1, Lcom/mqunar/qapm/dao/UIDataParse;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->a:Lcom/mqunar/qapm/dao/Storage;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/mqunar/qapm/dao/Storage;

    invoke-direct {v0}, Lcom/mqunar/qapm/dao/Storage;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/dao/Storage;->a:Lcom/mqunar/qapm/dao/Storage;

    .line 45
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 47
    :cond_13
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->a:Lcom/mqunar/qapm/dao/Storage;

    return-object v0

    .line 45
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public popData()V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/mqunar/qapm/dao/Storage;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/qapm/dao/b;

    invoke-direct {v1, p0}, Lcom/mqunar/qapm/dao/b;-><init>(Lcom/mqunar/qapm/dao/Storage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public putData(Lcom/mqunar/qapm/domain/BaseData;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mqunar/qapm/dao/Storage;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/qapm/dao/a;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/qapm/dao/a;-><init>(Lcom/mqunar/qapm/dao/Storage;Lcom/mqunar/qapm/domain/BaseData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public saveData(Lcom/mqunar/qapm/domain/BaseData;)V
    .registers 5

    .prologue
    .line 68
    if-eqz p1, :cond_7

    .line 69
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qapm/QAPM;->getSaveDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_32

    .line 73
    sget-object v1, Lcom/mqunar/qapm/dao/Storage;->d:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/mqunar/qapm/dao/Storage;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mqunar/qapm/utils/IOUtils;->str2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    sget-object v0, Lcom/mqunar/qapm/dao/Storage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    :cond_32
    return-void
.end method
