.class public Lcom/mqunar/cock/network/RemoteSvcProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/mqunar/cock/utils/IJsonProcessor;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/cock/network/RemoteSvcProxy$AcyncParam;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mqunar/cock/network/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->c:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->a:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->d:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->e:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;

    invoke-direct {v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->b:Lcom/mqunar/cock/utils/IJsonProcessor;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/mqunar/cock/network/RemoteSvcProxy;)Ljava/util/List;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public createAdaptedCrossConductor(Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/AbsConductor;
    .registers 6

    .prologue
    .line 228
    new-instance v0, Lcom/mqunar/libtask/CrossConductor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mqunar/libtask/TaskCallback;

    const/4 v2, 0x0

    new-instance v3, Lcom/mqunar/cock/network/l;

    invoke-direct {v3, p0, p1}, Lcom/mqunar/cock/network/l;-><init>(Lcom/mqunar/cock/network/RemoteSvcProxy;Lcom/mqunar/libtask/TaskCallback;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/mqunar/libtask/CrossConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 241
    return-object v0
.end method

.method public createAdaptedImpConductor(Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/AbsConductor;
    .registers 6

    .prologue
    .line 209
    new-instance v0, Lcom/mqunar/cock/network/ImpConductor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mqunar/libtask/TaskCallback;

    const/4 v2, 0x0

    new-instance v3, Lcom/mqunar/cock/network/k;

    invoke-direct {v3, p0, p1}, Lcom/mqunar/cock/network/k;-><init>(Lcom/mqunar/cock/network/RemoteSvcProxy;Lcom/mqunar/libtask/TaskCallback;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/mqunar/cock/network/ImpConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 222
    return-object v0
.end method

.method public createAdaptedYaccaConductor(Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/AbsConductor;
    .registers 6

    .prologue
    .line 246
    new-instance v0, Lcom/mqunar/cock/network/YaccaConductor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mqunar/libtask/TaskCallback;

    const/4 v2, 0x0

    new-instance v3, Lcom/mqunar/cock/network/m;

    invoke-direct {v3, p0, p1}, Lcom/mqunar/cock/network/m;-><init>(Lcom/mqunar/cock/network/RemoteSvcProxy;Lcom/mqunar/libtask/TaskCallback;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/mqunar/cock/network/YaccaConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 259
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->c:Landroid/content/Context;

    return-object v0
.end method

.method public parseFrom(Ljava/lang/Class;[B)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B)TT;"
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->b:Lcom/mqunar/cock/utils/IJsonProcessor;

    invoke-interface {v0, p2, p1}, Lcom/mqunar/cock/utils/IJsonProcessor;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 267
    :goto_6
    return-object v0

    .line 265
    :catch_7
    move-exception v0

    .line 266
    const-string v1, "spy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public postDelay(Ljava/lang/Runnable;I)V
    .registers 6

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->a:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

.method public sendAsync(Lcom/mqunar/cock/network/ServiceMap;Lcom/mqunar/cock/model/BaseParam;Lcom/mqunar/cock/network/TaskCallbackAdapter;)Lcom/mqunar/libtask/AbsConductor;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    const-string v1, "sendAsync"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1}, Lcom/mqunar/cock/network/ServiceMap;->getDesc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getHost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/cock/network/OneKeyCremation;->oneKeyCremation()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 119
    :cond_21
    invoke-virtual {p0, p3}, Lcom/mqunar/cock/network/RemoteSvcProxy;->createAdaptedImpConductor(Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/AbsConductor;

    move-result-object v0

    .line 120
    iput-object p1, p3, Lcom/mqunar/cock/network/TaskCallbackAdapter;->b:Lcom/mqunar/cock/network/ServiceMap;

    .line 121
    invoke-virtual {p1}, Lcom/mqunar/cock/network/ServiceMap;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/mqunar/cock/model/BaseParam;->t:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/cock/network/CockHandler;->isRelease()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 131
    :cond_37
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "https://yaccahost.qunar.com"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/mqunar/libtask/ChiefGuard;->getInstance()Lcom/mqunar/libtask/ChiefGuard;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->c:Landroid/content/Context;

    new-array v3, v3, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_ONORDER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_NEVER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v0, v3}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    .line 135
    iget-object v1, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_5a
    return-object v0

    .line 138
    :cond_5b
    new-instance v1, Lcom/mqunar/cock/network/n;

    invoke-direct {v1, p0, v0}, Lcom/mqunar/cock/network/n;-><init>(Lcom/mqunar/cock/network/RemoteSvcProxy;Lcom/mqunar/cock/network/k;)V

    iput-object v1, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->f:Lcom/mqunar/cock/network/n;

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->f:Lcom/mqunar/cock/network/n;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 142
    new-instance v1, Lcom/mqunar/cock/network/RemoteSvcProxy$AcyncParam;

    invoke-direct {v1, p1, p2, p3}, Lcom/mqunar/cock/network/RemoteSvcProxy$AcyncParam;-><init>(Lcom/mqunar/cock/network/ServiceMap;Lcom/mqunar/cock/model/BaseParam;Lcom/mqunar/cock/network/TaskCallbackAdapter;)V

    .line 143
    iget-object v2, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a
.end method

.method public sendByteAsync(Ljava/lang/String;Ljava/util/HashMap;[BLcom/mqunar/cock/network/TaskCallbackAdapter;Ljava/io/Serializable;)Lcom/mqunar/libtask/AbsConductor;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/mqunar/cock/network/TaskCallbackAdapter;",
            "Ljava/io/Serializable;",
            ")",
            "Lcom/mqunar/libtask/AbsConductor;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0, p4}, Lcom/mqunar/cock/network/RemoteSvcProxy;->createAdaptedCrossConductor(Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/AbsConductor;

    move-result-object v0

    .line 151
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    aput-object p2, v1, v3

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/mqunar/libtask/ChiefGuard;->getInstance()Lcom/mqunar/libtask/ChiefGuard;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->c:Landroid/content/Context;

    new-array v3, v3, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_ONORDER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_NEVER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v0, v3}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    .line 153
    iget-object v1, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "sendByteAsync"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return-object v0
.end method

.method public sendGetAsync(Ljava/lang/String;Lcom/mqunar/cock/network/TaskCallbackAdapter;)Lcom/mqunar/libtask/AbsConductor;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    invoke-virtual {p0, p2}, Lcom/mqunar/cock/network/RemoteSvcProxy;->createAdaptedCrossConductor(Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/AbsConductor;

    move-result-object v0

    .line 160
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Lcom/mqunar/libtask/ChiefGuard;->getInstance()Lcom/mqunar/libtask/ChiefGuard;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->c:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_ONORDER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_NEVER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v0, v3}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    .line 162
    iget-object v1, p0, Lcom/mqunar/cock/network/RemoteSvcProxy;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "sendGetAsync"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-object v0
.end method
