.class public Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/QunarMapControlV2;


# instance fields
.field private bdMap:Lcom/baidu/mapapi/map/BaiduMap;

.field private bdMapStrategy:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;


# direct methods
.method public constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMapStrategy:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    .line 32
    invoke-virtual {p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lqunar/sdk/location/QLocation;ZI)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V

    return-void
.end method

.method static synthetic access$100(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V
    .registers 6

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->mapBounds(Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V

    return-void
.end method

.method private mapBounds(Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V
    .registers 8

    .prologue
    .line 146
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 159
    :goto_4
    return-void

    .line 149
    :cond_5
    if-lez p2, :cond_15

    if-lez p3, :cond_15

    .line 150
    invoke-static {p1, p2, p3}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;II)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 154
    :goto_d
    if-eqz p4, :cond_1a

    .line 155
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p5}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    goto :goto_4

    .line 152
    :cond_15
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    goto :goto_d

    .line 157
    :cond_1a
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_4
.end method

.method private mapCenter(Lqunar/sdk/location/QLocation;ZI)V
    .registers 9

    .prologue
    .line 87
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 96
    :goto_4
    return-void

    .line 89
    :cond_5
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 90
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 91
    if-eqz p2, :cond_1e

    .line 92
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p3}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    goto :goto_4

    .line 94
    :cond_1e
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_4
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    if-eqz p1, :cond_11

    const-string v0, "the_guy_want_to_cry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 367
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_11

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 371
    :cond_11
    return-void
.end method

.method public mapCenterTo(IIZ)V
    .registers 7

    .prologue
    .line 71
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 84
    :goto_4
    return-void

    .line 74
    :cond_5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 76
    iget v2, v0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->overlook(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v1

    iget v0, v0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->rotate(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->targetScreen(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 79
    if-eqz p3, :cond_35

    .line 80
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_4

    .line 82
    :cond_35
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_4
.end method

.method public overlook(FZI)V
    .registers 6

    .prologue
    .line 180
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_21

    .line 181
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>(Lcom/baidu/mapapi/map/MapStatus;)V

    .line 183
    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->overlook(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 184
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 186
    if-eqz p2, :cond_22

    .line 187
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p3}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    .line 192
    :cond_21
    :goto_21
    return-void

    .line 189
    :cond_22
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_21
.end method

.method public rotate(FZI)V
    .registers 6

    .prologue
    .line 196
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_1b

    .line 197
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 198
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->rotate(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 199
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 201
    if-eqz p2, :cond_1c

    .line 202
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p3}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    .line 207
    :cond_1b
    :goto_1b
    return-void

    .line 204
    :cond_1c
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_1b
.end method

.method public setAllGesturesEnabled(Z)V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 252
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/UiSettings;->setAllGesturesEnabled(Z)V

    .line 255
    :cond_d
    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setBuildingsEnabled(Z)V

    .line 277
    :cond_9
    return-void
.end method

.method public setCompassEnabled(Z)V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 260
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/UiSettings;->setCompassEnabled(Z)V

    .line 263
    :cond_d
    return-void
.end method

.method public setIndoorEnabled(Z)V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setIndoorEnable(Z)V

    .line 270
    :cond_9
    return-void
.end method

.method public setMapBounds(Ljava/util/List;IIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 105
    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->setMapBounds(Ljava/util/List;IIZI)V

    .line 106
    return-void
.end method

.method public setMapBounds(Ljava/util/List;IIZI)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;IIZI)V"
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMapStrategy:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_11

    .line 141
    :cond_10
    :goto_10
    return-void

    .line 119
    :cond_11
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 121
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 123
    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_1a

    .line 125
    :cond_37
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v1

    .line 127
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMapStrategy:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->executeListener()Ljava/util/List;

    move-result-object v9

    .line 128
    monitor-enter v9

    .line 129
    :try_start_42
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMapStrategy:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v0

    if-eqz v0, :cond_57

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 130
    invoke-direct/range {v0 .. v5}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->mapBounds(Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V

    .line 140
    :goto_52
    monitor-exit v9

    goto :goto_10

    :catchall_54
    move-exception v0

    monitor-exit v9
    :try_end_56
    .catchall {:try_start_42 .. :try_end_56} :catchall_54

    throw v0

    .line 132
    :cond_57
    :try_start_57
    new-instance v2, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;

    move-object v3, p0

    move-object v4, v1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V

    .line 138
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_54

    goto :goto_52
.end method

.method public setMapBounds(Ljava/util/List;ZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->setMapBounds(Ljava/util/List;IIZI)V

    .line 101
    return-void
.end method

.method public setMapCenter(Ljava/util/List;ZI)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 37
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 45
    :cond_8
    :goto_8
    return-void

    .line 39
    :cond_9
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 41
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object v0

    move-object v1, v0

    .line 42
    goto :goto_13

    .line 43
    :cond_32
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    .line 44
    new-instance v1, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    invoke-virtual {p0, v1, p2, p3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->setMapCenter(Lqunar/sdk/location/QLocation;ZI)V

    goto :goto_8
.end method

.method public setMapCenter(Lqunar/sdk/location/QLocation;ZI)V
    .registers 6

    .prologue
    .line 49
    if-nez p1, :cond_3

    .line 67
    :goto_2
    return-void

    .line 53
    :cond_3
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMapStrategy:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->executeListener()Ljava/util/List;

    move-result-object v1

    .line 54
    monitor-enter v1

    .line 55
    :try_start_a
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMapStrategy:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V

    .line 66
    :goto_15
    monitor-exit v1

    goto :goto_2

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v0

    .line 58
    :cond_1a
    :try_start_1a
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lqunar/sdk/location/QLocation;ZI)V

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    goto :goto_15
.end method

.method public setMapCenterZoom(Lqunar/sdk/location/QLocation;FZI)V
    .registers 10

    .prologue
    .line 163
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 176
    :cond_6
    :goto_6
    return-void

    .line 167
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_6

    .line 168
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 169
    invoke-static {v0, p2}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngZoom(Lcom/baidu/mapapi/model/LatLng;F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 170
    if-eqz p3, :cond_24

    .line 171
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p4}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    goto :goto_6

    .line 173
    :cond_24
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_6
.end method

.method public setMaxAndMinZoomLevel(FF)V
    .registers 5

    .prologue
    .line 327
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_1b

    .line 328
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/map/BaiduMap;->setMaxAndMinZoomLevel(FF)V

    .line 329
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v1, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 331
    :cond_1b
    return-void
.end method

.method public setMyLocationConfigeration(Lqunar/sdk/mapapi/QunarLocationConfigeration;)V
    .registers 7

    .prologue
    .line 342
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_1d

    .line 344
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$3;->$SwitchMap$qunar$sdk$mapapi$QunarLocationConfigeration:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarLocationConfigeration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 356
    sget-object v0, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 360
    :goto_11
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v2, Lcom/baidu/mapapi/map/MyLocationConfiguration;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/baidu/mapapi/map/MyLocationConfiguration;-><init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;)V

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationConfigeration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    .line 362
    :cond_1d
    return-void

    .line 346
    :pswitch_1e
    sget-object v0, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->COMPASS:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    goto :goto_11

    .line 349
    :pswitch_21
    sget-object v0, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    goto :goto_11

    .line 353
    :pswitch_24
    sget-object v0, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->FOLLOWING:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    goto :goto_11

    .line 344
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public setMyLocationEnabled(Z)V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_9

    .line 336
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 338
    :cond_9
    return-void
.end method

.method public setOverlookingGesturesEnabled(Z)V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 296
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/UiSettings;->setOverlookingGesturesEnabled(Z)V

    .line 299
    :cond_d
    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 304
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 307
    :cond_d
    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 312
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 315
    :cond_d
    return-void
.end method

.method public setShowPointOfInterest(Z)V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->showMapPoi(Z)V

    .line 291
    :cond_9
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setTrafficEnabled(Z)V

    .line 284
    :cond_9
    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 320
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getUiSettings()Lcom/baidu/mapapi/map/UiSettings;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 323
    :cond_d
    return-void
.end method

.method public zoomBy(FZI)V
    .registers 6

    .prologue
    .line 211
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_f

    .line 212
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->zoomBy(F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 213
    if-eqz p2, :cond_10

    .line 214
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p3}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    .line 219
    :cond_f
    :goto_f
    return-void

    .line 216
    :cond_10
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_f
.end method

.method public zoomIn()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 224
    invoke-static {}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->zoomIn()Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 227
    :cond_d
    return-void
.end method

.method public zoomOut()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_d

    .line 232
    invoke-static {}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->zoomOut()Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 235
    :cond_d
    return-void
.end method

.method public zoomTo(FZI)V
    .registers 6

    .prologue
    .line 239
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_f

    .line 240
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->zoomTo(F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 241
    if-eqz p2, :cond_10

    .line 242
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p3}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    .line 247
    :cond_f
    :goto_f
    return-void

    .line 244
    :cond_10
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_f
.end method
