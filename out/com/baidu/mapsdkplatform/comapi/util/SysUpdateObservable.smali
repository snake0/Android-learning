.class public Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->b:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;
    .registers 2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->a:Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    if-nez v0, :cond_13

    const-class v1, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->a:Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->a:Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->a:Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public addObserver(Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;->init()V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public updateNetworkInfo(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;->updateNetworkInfo(Landroid/content/Context;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public updateNetworkProxy(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;->updateNetworkProxy(Landroid/content/Context;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public updatePhoneInfo()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;->updatePhoneInfo()V

    goto :goto_6

    :cond_18
    return-void
.end method
