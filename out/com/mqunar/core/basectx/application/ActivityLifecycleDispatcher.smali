.class public Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 137
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 130
    :try_start_4
    iget-object v2, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 131
    iget-object v0, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 133
    :cond_12
    monitor-exit v1

    .line 134
    return-object v0

    .line 133
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;
    .registers 2

    .prologue
    .line 19
    sget-object v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->INSTANCE:Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    if-nez v0, :cond_13

    .line 20
    const-class v1, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    monitor-enter v1

    .line 21
    :try_start_7
    sget-object v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->INSTANCE:Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    if-nez v0, :cond_12

    .line 22
    new-instance v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    invoke-direct {v0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;-><init>()V

    sput-object v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->INSTANCE:Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    .line 24
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 26
    :cond_13
    sget-object v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->INSTANCE:Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    return-object v0

    .line 24
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_16

    .line 49
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 50
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 54
    :cond_16
    return-void
.end method

.method public dispatchActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_16

    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 112
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 115
    :cond_16
    return-void
.end method

.method public dispatchActivityFinished(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_16

    .line 121
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 122
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivityFinished(Landroid/app/Activity;)V

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 125
    :cond_16
    return-void
.end method

.method public dispatchActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_16

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 81
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 84
    :cond_16
    return-void
.end method

.method public dispatchActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_16

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 71
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 74
    :cond_16
    return-void
.end method

.method public dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_16

    .line 100
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 101
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 105
    :cond_16
    return-void
.end method

.method public dispatchActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_16

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 61
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 64
    :cond_16
    return-void
.end method

.method public dispatchActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_16

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_16

    .line 91
    aget-object v0, v2, v1

    check-cast v0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 94
    :cond_16
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;)V
    .registers 4

    .prologue
    .line 33
    iget-object v1, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 34
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 35
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public unregisterActivityLifecycleCallbacks(Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;)V
    .registers 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 40
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
