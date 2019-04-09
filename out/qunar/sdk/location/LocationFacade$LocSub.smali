.class Lqunar/sdk/location/LocationFacade$LocSub;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field changed:Z

.field observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QunarGPSLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field strategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QunarGPSLocationStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->changed:Z

    .line 367
    return-void
.end method


# virtual methods
.method public addObserver(Lqunar/sdk/location/QunarGPSLocationListener;)V
    .registers 3

    .prologue
    .line 370
    if-nez p1, :cond_8

    .line 371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 373
    :cond_8
    monitor-enter p0

    .line 374
    :try_start_9
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 375
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_16
    monitor-exit p0

    .line 378
    return-void

    .line 377
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public addObserver(Lqunar/sdk/location/QunarGPSLocationStrategy;)V
    .registers 3

    .prologue
    .line 381
    monitor-enter p0

    .line 382
    :try_start_1
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 383
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_e
    monitor-exit p0

    .line 386
    return-void

    .line 385
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected clearChanged()V
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->changed:Z

    .line 390
    return-void
.end method

.method public countObservers()I
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized deleteObserver(Lqunar/sdk/location/QunarGPSLocationListener;)V
    .registers 3

    .prologue
    .line 397
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 398
    monitor-exit p0

    return-void

    .line 397
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObserver(Lqunar/sdk/location/QunarGPSLocationListener;Lqunar/sdk/location/QunarGPSLocationStrategy;)V
    .registers 4

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 402
    if-eqz p2, :cond_b

    .line 403
    invoke-virtual {p2}, Lqunar/sdk/location/QunarGPSLocationStrategy;->forceStopLocation()V

    .line 405
    :cond_b
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 406
    monitor-exit p0

    return-void

    .line 401
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObservers()V
    .registers 3

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 410
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    :cond_12
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 414
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QunarGPSLocationStrategy;

    .line 415
    if-eqz v0, :cond_24

    .line 416
    invoke-virtual {v0}, Lqunar/sdk/location/QunarGPSLocationStrategy;->forceStopLocation()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_24

    .line 409
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    .line 419
    :cond_39
    :try_start_39
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->strategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    .line 421
    :cond_3e
    monitor-exit p0

    return-void
.end method

.method public hasChanged()Z
    .registers 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->changed:Z

    return v0
.end method

.method public notifyObservers()V
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqunar/sdk/location/LocationFacade$LocSub;->notifyObservers(Lqunar/sdk/location/QLocation;)V

    .line 429
    return-void
.end method

.method public notifyObservers(Lqunar/sdk/location/QLocation;)V
    .registers 6

    .prologue
    .line 432
    .line 433
    const/4 v0, 0x0

    .line 434
    monitor-enter p0

    .line 435
    :try_start_2
    invoke-virtual {p0}, Lqunar/sdk/location/LocationFacade$LocSub;->hasChanged()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 436
    invoke-virtual {p0}, Lqunar/sdk/location/LocationFacade$LocSub;->clearChanged()V

    .line 437
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 438
    new-array v0, v0, [Lqunar/sdk/location/QunarGPSLocationListener;

    .line 439
    iget-object v1, p0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v1, v0

    .line 441
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_28

    .line 442
    if-eqz v1, :cond_2b

    .line 443
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v2, :cond_2b

    aget-object v3, v1, v0

    .line 444
    invoke-interface {v3, p1}, Lqunar/sdk/location/QunarGPSLocationListener;->onReceiveLocation(Lqunar/sdk/location/QLocation;)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 441
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 447
    :cond_2b
    return-void

    :cond_2c
    move-object v1, v0

    goto :goto_19
.end method

.method protected setChanged()V
    .registers 2

    .prologue
    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/location/LocationFacade$LocSub;->changed:Z

    .line 451
    return-void
.end method
