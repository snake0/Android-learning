.class public Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;
.implements Lqunar/sdk/mapapi/QunarMapV2;


# static fields
.field private static final MAPCHANGE_FINISH:I = 0xff03

.field private static final MAPCHANGE_FINISH_CALLBACK:I = 0xff09

.field private static final POLYGON_EXT_INFO:Ljava/lang/String; = "polygon_ext_info"


# instance fields
.field private bdMap:Lcom/baidu/mapapi/map/BaiduMap;

.field private good4recycle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

.field private infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private isMapLoad:Z

.field private isZoomToBounds:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

.field private mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

.field private mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

.field private mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

.field private mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

.field private markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

.field private markerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;"
        }
    .end annotation
.end field

.field private myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;

.field private polygonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/Polygon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoad:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->good4recycle:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isZoomToBounds:Z

    .line 95
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarkerOperation(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    return-void
.end method

.method static synthetic access$100(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/location/QLocation;ZI)V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V

    return-void
.end method

.method static synthetic access$200(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-void
.end method

.method static synthetic access$300(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;)V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapforceReFefreshFinish()V

    return-void
.end method

.method static synthetic access$400(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/location/QLocation;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addLocationData(Lqunar/sdk/location/QLocation;)V

    return-void
.end method

.method static synthetic access$500(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V

    return-void
.end method

.method private addLocationData(Lqunar/sdk/location/QLocation;)V
    .registers 5

    .prologue
    .line 669
    new-instance v0, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v0

    .line 672
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 673
    return-void
.end method

.method private addMarkerOperation(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .registers 9

    .prologue
    .line 279
    iget-object v0, p1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 280
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 281
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorX()F

    move-result v2

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->isPerspective()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getRotate()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getzIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 286
    instance-of v0, p1, Lqunar/sdk/mapapi/entity/QMarkerV2;

    if-eqz v0, :cond_79

    move-object v0, p1

    .line 287
    check-cast v0, Lqunar/sdk/mapapi/entity/QMarkerV2;

    move-object v1, v2

    .line 288
    check-cast v1, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOpacity()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->alpha(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarkerV2;->isFlat()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->flat(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarkerV2;->isDraggable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    .line 294
    :cond_79
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7e

    .line 303
    :goto_7d
    return-void

    .line 297
    :cond_7e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    move-object v0, v1

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p1, v1}, Lqunar/sdk/mapapi/entity/QMarker;->setOverlayOption(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 302
    sget-object v0, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {p1, v0}, Lqunar/sdk/mapapi/entity/QMarker;->setMapType(Lqunar/sdk/mapapi/QunarMapType;)V

    goto :goto_7d
.end method

.method private mapCenter(Lqunar/sdk/location/QLocation;ZI)V
    .registers 9

    .prologue
    .line 397
    if-nez p1, :cond_3

    .line 407
    :goto_2
    return-void

    .line 399
    :cond_3
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 400
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngZoom(Lcom/baidu/mapapi/model/LatLng;F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 402
    if-eqz p2, :cond_1e

    .line 403
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0, p3}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    goto :goto_2

    .line 405
    :cond_1e
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_2
.end method

.method private mapforceReFefreshFinish()V
    .registers 8

    .prologue
    .line 550
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-nez v0, :cond_5

    .line 559
    :cond_4
    :goto_4
    return-void

    .line 553
    :cond_5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 555
    iget-object v1, v0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 556
    new-instance v2, Lqunar/sdk/location/QLocation;

    iget-wide v3, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 557
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    iget v0, v0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-interface {v1, v2, v0}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChangeFinish(Lqunar/sdk/location/QLocation;F)V

    goto :goto_4
.end method

.method private zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .registers 5

    .prologue
    .line 390
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_f

    .line 392
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    .line 394
    :cond_f
    return-void
.end method

.method private varargs zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 9

    .prologue
    .line 1038
    if-lez p2, :cond_1b

    if-lez p3, :cond_1b

    .line 1039
    invoke-static {p1, p2, p3}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;II)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 1043
    :goto_8
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_25

    .line 1044
    array-length v1, p4

    if-lez v1, :cond_20

    .line 1045
    array-length v2, p4

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_20

    aget-object v3, p4, v1

    .line 1046
    invoke-interface {v3}, Lqunar/sdk/mapapi/listener/CustomMapCallback;->onCallback()V

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1041
    :cond_1b
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    goto :goto_8

    .line 1049
    :cond_20
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 1051
    :cond_25
    return-void
.end method


# virtual methods
.method public addMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 3

    .prologue
    .line 239
    if-nez p1, :cond_3

    .line 251
    :cond_2
    :goto_2
    return-void

    .line 246
    :cond_3
    invoke-static {p1}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p0, p1, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarker(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    goto :goto_2
.end method

.method public addMarker(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .registers 6

    .prologue
    .line 254
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 272
    :cond_4
    :goto_4
    return-void

    .line 258
    :cond_5
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 259
    :try_start_8
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 260
    invoke-direct {p0, p1, p2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarkerOperation(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 271
    :goto_11
    monitor-exit v1

    goto :goto_4

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0

    .line 262
    :cond_16
    :try_start_16
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;

    invoke-direct {v0, p0, p1, p2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 269
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13

    goto :goto_11
.end method

.method public addMarkers(Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 387
    :cond_a
    :goto_a
    return-void

    .line 321
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3d

    .line 322
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 323
    if-eqz v0, :cond_a

    .line 325
    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarker(Lqunar/sdk/mapapi/entity/QMarker;)V

    .line 326
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 327
    :try_start_1f
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 328
    iget-object v0, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    const/4 v2, 0x1

    const/16 v3, 0x12c

    invoke-direct {p0, v0, v2, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V

    .line 339
    :goto_2d
    monitor-exit v1

    goto :goto_a

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_2f

    throw v0

    .line 330
    :cond_32
    :try_start_32
    new-instance v2, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$2;

    invoke-direct {v2, p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$2;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/entity/QMarker;)V

    .line 337
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_2f

    goto :goto_2d

    .line 345
    :cond_3d
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 347
    if-eqz p2, :cond_74

    .line 349
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v2

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 351
    invoke-virtual {p0, v0, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarker(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 353
    iget-object v0, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 354
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 355
    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_52

    .line 359
    :cond_74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 360
    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 361
    invoke-virtual {p0, v0, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarker(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 363
    iget-object v0, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 364
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 365
    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_78

    .line 369
    :cond_9e
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isZoomToBounds:Z

    if-eqz v0, :cond_a

    .line 372
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 374
    :try_start_a9
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 375
    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;)V

    .line 386
    :goto_b2
    monitor-exit v1

    goto/16 :goto_a

    :catchall_b5
    move-exception v0

    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_b5

    throw v0

    .line 377
    :cond_b8
    :try_start_b8
    new-instance v2, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$3;

    invoke-direct {v2, p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$3;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;)V

    .line 384
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_b5

    goto :goto_b2
.end method

.method public addMarkers(Ljava/util/List;ZII)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 951
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1020
    :cond_a
    :goto_a
    return-void

    .line 954
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3d

    .line 955
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 956
    if-eqz v0, :cond_a

    .line 958
    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarker(Lqunar/sdk/mapapi/entity/QMarker;)V

    .line 959
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 960
    :try_start_1f
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 961
    iget-object v0, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    const/4 v2, 0x1

    const/16 v3, 0x12c

    invoke-direct {p0, v0, v2, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V

    .line 972
    :goto_2d
    monitor-exit v1

    goto :goto_a

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_2f

    throw v0

    .line 963
    :cond_32
    :try_start_32
    new-instance v2, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$7;

    invoke-direct {v2, p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$7;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/entity/QMarker;)V

    .line 970
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_2f

    goto :goto_2d

    .line 978
    :cond_3d
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 980
    if-eqz p2, :cond_74

    .line 982
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v2

    .line 983
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 984
    invoke-virtual {p0, v0, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarker(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 986
    iget-object v0, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 987
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 988
    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_52

    .line 992
    :cond_74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 993
    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 994
    invoke-virtual {p0, v0, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarker(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 996
    iget-object v0, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 997
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 998
    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_78

    .line 1002
    :cond_9e
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isZoomToBounds:Z

    if-eqz v0, :cond_a

    .line 1005
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    .line 1006
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 1007
    :try_start_a9
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 1008
    const/4 v2, 0x0

    new-array v2, v2, [Lqunar/sdk/mapapi/listener/CustomMapCallback;

    invoke-direct {p0, v0, p3, p4, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V

    .line 1019
    :goto_b5
    monitor-exit v1

    goto/16 :goto_a

    :catchall_b8
    move-exception v0

    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_a9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 1010
    :cond_bb
    :try_start_bb
    new-instance v2, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;

    invoke-direct {v2, p0, v0, p3, p4}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;II)V

    .line 1017
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_b8

    goto :goto_b5
.end method

.method public addMyLocationData(Lqunar/sdk/location/QLocation;)V
    .registers 5

    .prologue
    .line 648
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 665
    :cond_6
    :goto_6
    return-void

    .line 652
    :cond_7
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 653
    :try_start_a
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 654
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addLocationData(Lqunar/sdk/location/QLocation;)V

    .line 664
    :goto_13
    monitor-exit v1

    goto :goto_6

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0

    .line 656
    :cond_18
    :try_start_18
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$5;

    invoke-direct {v0, p0, p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$5;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/location/QLocation;)V

    .line 662
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_15

    goto :goto_13
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 677
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 679
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->good4recycle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 680
    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarker;->recycle()V

    goto :goto_b

    .line 683
    :cond_1b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Polygon;

    .line 684
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polygon;->remove()V

    goto :goto_21

    .line 687
    :cond_31
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    if-eqz v0, :cond_3b

    .line 688
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 690
    :cond_3b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_44

    .line 691
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    .line 693
    :cond_44
    return-void
.end method

.method public destroy(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1244
    if-eqz p1, :cond_1f

    const-string v0, "the_guy_want_to_cry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1246
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_16

    .line 1247
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 1248
    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 1250
    :cond_16
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_1f

    .line 1251
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->clear()V

    .line 1252
    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 1255
    :cond_1f
    return-void
.end method

.method public drawPolygon(Ljava/util/List;IIILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 888
    :cond_4
    :goto_4
    return-void

    .line 864
    :cond_5
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 869
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 870
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 871
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 876
    :cond_33
    new-instance v0, Lcom/baidu/mapapi/map/PolygonOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/PolygonOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolygonOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolygonOptions;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/map/Stroke;

    invoke-direct {v1, p2, p3}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolygonOptions;->stroke(Lcom/baidu/mapapi/map/Stroke;)Lcom/baidu/mapapi/map/PolygonOptions;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/baidu/mapapi/map/PolygonOptions;->fillColor(I)Lcom/baidu/mapapi/map/PolygonOptions;

    move-result-object v0

    .line 882
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 883
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Polygon;

    .line 884
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 885
    const-string v2, "polygon_ext_info"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 886
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Polygon;->setExtraInfo(Landroid/os/Bundle;)V

    .line 887
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public drawPolyline(Ljava/util/List;IILqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;II",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 765
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_6

    .line 815
    :cond_5
    :goto_5
    return-void

    .line 768
    :cond_6
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 769
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 772
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 773
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 774
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 775
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 777
    :cond_39
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 778
    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 779
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 781
    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 786
    new-instance v0, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    .line 788
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 791
    invoke-static {p4}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_ef

    .line 793
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorX()F

    move-result v5

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->isPerspective()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->getRotate()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p4}, Lqunar/sdk/mapapi/entity/QMarker;->getzIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 797
    invoke-virtual {p4, v0}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 799
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->good4recycle:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_ef
    invoke-static {p5}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_14b

    .line 803
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorX()F

    move-result v3

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorY()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->isPerspective()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->getRotate()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p5}, Lqunar/sdk/mapapi/entity/QMarker;->getzIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 807
    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 808
    invoke-virtual {p5, v0}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->good4recycle:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_14b
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    .line 813
    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;)V

    goto/16 :goto_5
.end method

.method public varargs drawPolyline(Ljava/util/List;Ljava/util/List;IIII[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;IIII[",
            "Lqunar/sdk/mapapi/listener/CustomMapCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 820
    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v3, :cond_5

    .line 858
    :goto_4
    return-void

    .line 823
    :cond_5
    new-instance v4, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v4}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 824
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 826
    if-eqz p2, :cond_95

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_95

    .line 827
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqunar/sdk/mapapi/entity/QMarker;

    .line 828
    iget-object v7, v3, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    if-eqz v7, :cond_1b

    .line 829
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    iget-object v8, v3, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-virtual {v8}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v8

    iget-object v10, v3, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-virtual {v10}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 831
    invoke-virtual {v4, v7}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 833
    invoke-static {v3}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v8

    .line 834
    new-instance v9, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v9}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorX()F

    move-result v10

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->isPerspective()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->getRotate()F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->isVisible()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    invoke-virtual {v3}, Lqunar/sdk/mapapi/entity/QMarker;->getzIndex()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 838
    invoke-virtual {v3, v8}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 839
    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v7}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    goto :goto_1b

    .line 844
    :cond_95
    if-eqz p1, :cond_c1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c1

    .line 845
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqunar/sdk/location/QLocation;

    .line 846
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v3}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 847
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-virtual {v4, v7}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_a1

    .line 852
    :cond_c1
    new-instance v3, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v3, p3}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    .line 854
    iget-object v5, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v5, v3}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 856
    invoke-virtual {v4}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v3

    .line 857
    move/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V

    goto/16 :goto_4
.end method

.method public executeListener()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public getMapCenter()Lqunar/sdk/location/QLocation;
    .registers 7

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 698
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_16

    .line 699
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 700
    iget-object v1, v0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 701
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-wide v2, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 703
    :cond_16
    return-object v0
.end method

.method public getZoomLevel()F
    .registers 3

    .prologue
    .line 708
    const/high16 v0, 0x40400000    # 3.0f

    .line 709
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_e

    .line 710
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 711
    iget v0, v0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    .line 713
    :cond_e
    return v0
.end method

.method public hideInfoWindow()V
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_15

    .line 438
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    .line 440
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_15

    .line 441
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 445
    :cond_15
    return-void
.end method

.method public isAutoMarkersZoom(Z)V
    .registers 2

    .prologue
    .line 311
    iput-boolean p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isZoomToBounds:Z

    .line 312
    return-void
.end method

.method public isMapLoaded()Z
    .registers 2

    .prologue
    .line 518
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoad:Z

    return v0
.end method

.method public varargs mapBound(Ljava/util/List;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;II[",
            "Lqunar/sdk/mapapi/listener/CustomMapCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 925
    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 926
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 927
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 928
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 929
    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_11

    .line 932
    :cond_2e
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v2

    .line 933
    iget-object v6, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v6

    .line 934
    :try_start_35
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 935
    invoke-direct {p0, v2, p2, p3, p4}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V

    .line 945
    :goto_3e
    monitor-exit v6

    .line 947
    :cond_3f
    return-void

    .line 937
    :cond_40
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V

    .line 942
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 945
    :catchall_4f
    move-exception v0

    monitor-exit v6
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public mapCenterTo(II)V
    .registers 6

    .prologue
    .line 1024
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 1034
    :cond_4
    :goto_4
    return-void

    .line 1026
    :cond_5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 1027
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 1028
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

    .line 1029
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_4

    .line 1032
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_4
.end method

.method public onMapClick(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 7

    .prologue
    .line 178
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_9

    .line 185
    :cond_8
    :goto_8
    return-void

    .line 181
    :cond_9
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_8

    .line 182
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-wide v1, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 183
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/MapClickListener;->onMapClick(Lqunar/sdk/location/QLocation;)V

    goto :goto_8
.end method

.method public onMapLoaded()V
    .registers 4

    .prologue
    .line 498
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_9

    .line 514
    :cond_8
    :goto_8
    return-void

    .line 501
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoad:Z

    .line 502
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

    invoke-interface {v0}, Lqunar/sdk/mapapi/listener/MapLoadedCallback;->onMapLoaded()V

    .line 503
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 504
    :try_start_14
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 505
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_3f

    .line 507
    :try_start_32
    invoke-interface {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;->onMapLoad()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_3f

    goto :goto_26

    .line 508
    :catch_36
    move-exception v0

    goto :goto_26

    .line 511
    :cond_38
    :try_start_38
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 513
    :cond_3d
    monitor-exit v1

    goto :goto_8

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public onMapLongClick(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 7

    .prologue
    .line 202
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_9

    .line 207
    :cond_8
    :goto_8
    return-void

    .line 205
    :cond_9
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-wide v1, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 206
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/MapLongClickListener;->onMapLongClick(Lqunar/sdk/location/QLocation;)V

    goto :goto_8
.end method

.method public onMapPoiClick(Lcom/baidu/mapapi/map/MapPoi;)Z
    .registers 3

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public onMapStatusChange(Lcom/baidu/mapapi/map/MapStatus;)V
    .registers 10

    .prologue
    const v7, 0xff09

    const v6, 0xff03

    .line 566
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_10

    if-nez p1, :cond_11

    .line 587
    :cond_10
    :goto_10
    return-void

    .line 570
    :cond_11
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    instance-of v0, v0, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;

    if-eqz v0, :cond_43

    .line 571
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    check-cast v0, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;

    .line 572
    new-instance v1, Lqunar/sdk/location/QMapStatus;

    invoke-direct {v1, p1}, Lqunar/sdk/location/QMapStatus;-><init>(Lcom/baidu/mapapi/map/MapStatus;)V

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;->onMapStatusChange(Lqunar/sdk/location/QMapStatus;)V

    .line 580
    :goto_23
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v6}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 581
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v6}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->removeMessages(I)V

    .line 583
    :cond_30
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v7}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 584
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v7}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->removeMessages(I)V

    .line 586
    :cond_3d
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v6}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->sendEmptyMessage(I)Z

    goto :goto_10

    .line 574
    :cond_43
    iget-object v0, p1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 575
    new-instance v1, Lqunar/sdk/location/QLocation;

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 576
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    iget v2, p1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChange(Lqunar/sdk/location/QLocation;F)V

    goto :goto_23
.end method

.method public onMapStatusChangeFinish(Lcom/baidu/mapapi/map/MapStatus;)V
    .registers 8

    .prologue
    const v2, 0xff09

    const v1, 0xff03

    .line 591
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 592
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->removeMessages(I)V

    .line 594
    :cond_13
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 595
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-virtual {v0, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;->removeMessages(I)V

    .line 597
    :cond_20
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_2a

    if-nez p1, :cond_2b

    .line 609
    :cond_2a
    :goto_2a
    return-void

    .line 601
    :cond_2b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    instance-of v0, v0, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;

    if-eqz v0, :cond_3e

    .line 602
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    check-cast v0, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;

    .line 603
    new-instance v1, Lqunar/sdk/location/QMapStatus;

    invoke-direct {v1, p1}, Lqunar/sdk/location/QMapStatus;-><init>(Lcom/baidu/mapapi/map/MapStatus;)V

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;->onMapStatusChangeFinish(Lqunar/sdk/location/QMapStatus;)V

    goto :goto_2a

    .line 605
    :cond_3e
    iget-object v0, p1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 606
    new-instance v1, Lqunar/sdk/location/QLocation;

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 607
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    iget v2, p1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChangeFinish(Lqunar/sdk/location/QLocation;F)V

    goto :goto_2a
.end method

.method public onMapStatusChangeStart(Lcom/baidu/mapapi/map/MapStatus;)V
    .registers 8

    .prologue
    .line 618
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 630
    :cond_a
    :goto_a
    return-void

    .line 622
    :cond_b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    instance-of v0, v0, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;

    if-eqz v0, :cond_1e

    .line 623
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    check-cast v0, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;

    .line 624
    new-instance v1, Lqunar/sdk/location/QMapStatus;

    invoke-direct {v1, p1}, Lqunar/sdk/location/QMapStatus;-><init>(Lcom/baidu/mapapi/map/MapStatus;)V

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/MapStatusChangeListenerV2;->onMapStatusChangeStart(Lqunar/sdk/location/QMapStatus;)V

    goto :goto_a

    .line 626
    :cond_1e
    iget-object v0, p1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 627
    new-instance v1, Lqunar/sdk/location/QLocation;

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 628
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    iget v2, p1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChangeStart(Lqunar/sdk/location/QLocation;F)V

    goto :goto_a
.end method

.method public onMapStatusChangeStart(Lcom/baidu/mapapi/map/MapStatus;I)V
    .registers 3

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->onMapStatusChangeStart(Lcom/baidu/mapapi/map/MapStatus;)V

    .line 640
    return-void
.end method

.method public onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .registers 9

    .prologue
    .line 214
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_a

    if-nez p1, :cond_c

    .line 215
    :cond_a
    const/4 v0, 0x0

    .line 226
    :goto_b
    return v0

    .line 217
    :cond_c
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 218
    if-nez v0, :cond_26

    .line 219
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 220
    new-instance v0, Lqunar/sdk/mapapi/entity/QMarker;

    invoke-direct {v0}, Lqunar/sdk/mapapi/entity/QMarker;-><init>()V

    .line 221
    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/entity/QMarker;->setExtraInfo(Landroid/os/Bundle;)V

    .line 223
    :cond_26
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 224
    new-instance v2, Lqunar/sdk/location/QLocation;

    iget-wide v3, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v2, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 225
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/MarkerClickListener;->onMarkerClick(Lqunar/sdk/mapapi/entity/QMarker;)V

    .line 226
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onMarkerDrag(Lcom/baidu/mapapi/map/Marker;)V
    .registers 9

    .prologue
    .line 1193
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 1206
    :cond_a
    :goto_a
    return-void

    .line 1196
    :cond_b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarkerV2;

    .line 1197
    if-nez v0, :cond_25

    .line 1198
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1199
    new-instance v0, Lqunar/sdk/mapapi/entity/QMarkerV2;

    invoke-direct {v0}, Lqunar/sdk/mapapi/entity/QMarkerV2;-><init>()V

    .line 1200
    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setExtraInfo(Landroid/os/Bundle;)V

    .line 1202
    :cond_25
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 1203
    new-instance v2, Lqunar/sdk/location/QLocation;

    iget-wide v3, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v2, v0, Lqunar/sdk/mapapi/entity/QMarkerV2;->position:Lqunar/sdk/location/QLocation;

    .line 1204
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;->onMarkerDrag(Lqunar/sdk/mapapi/entity/QMarkerV2;)V

    goto :goto_a
.end method

.method public onMarkerDragEnd(Lcom/baidu/mapapi/map/Marker;)V
    .registers 9

    .prologue
    .line 1210
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 1223
    :cond_a
    :goto_a
    return-void

    .line 1213
    :cond_b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarkerV2;

    .line 1214
    if-nez v0, :cond_25

    .line 1215
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1216
    new-instance v0, Lqunar/sdk/mapapi/entity/QMarkerV2;

    invoke-direct {v0}, Lqunar/sdk/mapapi/entity/QMarkerV2;-><init>()V

    .line 1217
    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setExtraInfo(Landroid/os/Bundle;)V

    .line 1219
    :cond_25
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 1220
    new-instance v2, Lqunar/sdk/location/QLocation;

    iget-wide v3, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v2, v0, Lqunar/sdk/mapapi/entity/QMarkerV2;->position:Lqunar/sdk/location/QLocation;

    .line 1221
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;->onMarkerDragEnd(Lqunar/sdk/mapapi/entity/QMarkerV2;)V

    goto :goto_a
.end method

.method public onMarkerDragStart(Lcom/baidu/mapapi/map/Marker;)V
    .registers 9

    .prologue
    .line 1227
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 1240
    :cond_a
    :goto_a
    return-void

    .line 1230
    :cond_b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarkerV2;

    .line 1231
    if-nez v0, :cond_25

    .line 1232
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1233
    new-instance v0, Lqunar/sdk/mapapi/entity/QMarkerV2;

    invoke-direct {v0}, Lqunar/sdk/mapapi/entity/QMarkerV2;-><init>()V

    .line 1234
    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setExtraInfo(Landroid/os/Bundle;)V

    .line 1236
    :cond_25
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 1237
    new-instance v2, Lqunar/sdk/location/QLocation;

    iget-wide v3, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v2, v0, Lqunar/sdk/mapapi/entity/QMarkerV2;->position:Lqunar/sdk/location/QLocation;

    .line 1238
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;->onMarkerDragStart(Lqunar/sdk/mapapi/entity/QMarkerV2;)V

    goto :goto_a
.end method

.method public onMyLocationClick()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;

    invoke-interface {v0}, Lqunar/sdk/mapapi/listener/MyLocationClickListener;->onMyLocationClick()V

    .line 234
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public reSetBitmap(Lqunar/sdk/mapapi/entity/QMarkerV2;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 1157
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1158
    if-eqz v0, :cond_8

    if-nez p2, :cond_9

    .line 1166
    :cond_8
    :goto_8
    return-void

    .line 1161
    :cond_9
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_8

    .line 1162
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1163
    invoke-static {p2}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 1164
    iput-object p2, p1, Lqunar/sdk/mapapi/entity/QMarkerV2;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_8
.end method

.method public reSetDraggable(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 5

    .prologue
    .line 1144
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1145
    if-nez v0, :cond_7

    .line 1153
    :cond_6
    :goto_6
    return-void

    .line 1148
    :cond_7
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_6

    .line 1149
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1150
    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/Marker;->setDraggable(Z)V

    .line 1151
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setDraggable(Z)V

    goto :goto_6
.end method

.method public reSetMarkAnchor(Lqunar/sdk/mapapi/entity/QMarkerV2;FF)V
    .registers 6

    .prologue
    .line 1104
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1105
    if-nez v0, :cond_7

    .line 1114
    :cond_6
    :goto_6
    return-void

    .line 1108
    :cond_7
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_6

    .line 1109
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1110
    invoke-virtual {v0, p2, p3}, Lcom/baidu/mapapi/map/Marker;->setAnchor(FF)V

    .line 1111
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setAnchorX(F)V

    .line 1112
    invoke-virtual {p1, p3}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setAnchorY(F)V

    goto :goto_6
.end method

.method public reSetMarkFlat(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 5

    .prologue
    .line 1131
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1132
    if-nez v0, :cond_7

    .line 1140
    :cond_6
    :goto_6
    return-void

    .line 1135
    :cond_7
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_6

    .line 1136
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1137
    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/Marker;->setFlat(Z)V

    .line 1138
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setFlat(Z)V

    goto :goto_6
.end method

.method public reSetMarkPerspective(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 5

    .prologue
    .line 1118
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1119
    if-nez v0, :cond_7

    .line 1127
    :cond_6
    :goto_6
    return-void

    .line 1122
    :cond_7
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_6

    .line 1123
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1124
    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/Marker;->setPerspective(Z)V

    .line 1125
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setPerspective(Z)V

    goto :goto_6
.end method

.method public reSetMarkPosition(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/location/QLocation;)V
    .registers 9

    .prologue
    .line 1064
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_8

    if-nez p2, :cond_9

    .line 1074
    :cond_8
    :goto_8
    return-void

    .line 1068
    :cond_9
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_8

    .line 1069
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p2}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1070
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1071
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    .line 1072
    iput-object p2, p1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    goto :goto_8
.end method

.method public reSetMarkRotate(Lqunar/sdk/mapapi/entity/QMarker;F)V
    .registers 5

    .prologue
    .line 1078
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1079
    if-nez v0, :cond_7

    .line 1087
    :cond_6
    :goto_6
    return-void

    .line 1082
    :cond_7
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_6

    .line 1083
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1084
    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/Marker;->setRotate(F)V

    .line 1085
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarker;->setRotate(F)V

    goto :goto_6
.end method

.method public reSetMarkTitle(Lqunar/sdk/mapapi/entity/QMarkerV2;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1091
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_8

    if-nez p2, :cond_9

    .line 1100
    :cond_8
    :goto_8
    return-void

    .line 1095
    :cond_9
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_8

    .line 1096
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1097
    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/Marker;->setTitle(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setTitle(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public reSetOpacity(Lqunar/sdk/mapapi/entity/QMarkerV2;F)V
    .registers 5

    .prologue
    .line 1170
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarkerV2;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    .line 1171
    if-nez v0, :cond_7

    .line 1179
    :cond_6
    :goto_6
    return-void

    .line 1174
    :cond_7
    instance-of v1, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_6

    .line 1175
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1176
    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/Marker;->setAlpha(F)V

    .line 1177
    invoke-virtual {p1, p2}, Lqunar/sdk/mapapi/entity/QMarkerV2;->setOpacity(F)V

    goto :goto_6
.end method

.method public removeMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 4

    .prologue
    .line 424
    if-nez p1, :cond_3

    .line 433
    :goto_2
    return-void

    .line 427
    :cond_3
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getOverlayOption()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 428
    if-eqz v0, :cond_14

    .line 429
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_14
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->remove()V

    .line 432
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->recycle()V

    goto :goto_2
.end method

.method public removeMarkers(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 421
    :cond_8
    return-void

    .line 413
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 414
    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarker;->getOverlayOption()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Marker;

    .line 415
    if-eqz v1, :cond_2a

    .line 416
    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_2a
    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarker;->remove()V

    .line 419
    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarker;->recycle()V

    goto :goto_d
.end method

.method public removePolygon(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 909
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 921
    :cond_4
    return-void

    .line 911
    :cond_5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 915
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Polygon;

    .line 916
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polygon;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polygon;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "polygon_ext_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 918
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polygon;->remove()V

    goto :goto_17
.end method

.method public setOnMapClickListener(Lqunar/sdk/mapapi/listener/MapClickListener;)V
    .registers 3

    .prologue
    .line 108
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 115
    :cond_6
    :goto_6
    return-void

    .line 111
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_6

    .line 112
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

    .line 113
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;)V

    goto :goto_6
.end method

.method public setOnMapLoadedCallback(Lqunar/sdk/mapapi/listener/MapLoadedCallback;)V
    .registers 3

    .prologue
    .line 130
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 137
    :cond_6
    :goto_6
    return-void

    .line 133
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_6

    .line 134
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

    .line 135
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapLoadedCallback(Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;)V

    goto :goto_6
.end method

.method public setOnMapLongClickListener(Lqunar/sdk/mapapi/listener/MapLongClickListener;)V
    .registers 3

    .prologue
    .line 119
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 126
    :cond_6
    :goto_6
    return-void

    .line 122
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_6

    .line 123
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

    .line 124
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapLongClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;)V

    goto :goto_6
.end method

.method public setOnMapStatusChangeListener(Lqunar/sdk/mapapi/listener/MapStatusChangeListener;)V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 160
    :cond_4
    :goto_4
    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_4

    .line 156
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->handler:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$MapChangeHandler;

    .line 157
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    .line 158
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez p1, :cond_17

    const/4 p0, 0x0

    :cond_17
    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapStatusChangeListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;)V

    goto :goto_4
.end method

.method public setOnMarkerClickListener(Lqunar/sdk/mapapi/listener/MarkerClickListener;)V
    .registers 3

    .prologue
    .line 141
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 148
    :cond_6
    :goto_6
    return-void

    .line 144
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_6

    .line 145
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

    .line 146
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V

    goto :goto_6
.end method

.method public setOnMarkerDragListener(Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;)V
    .registers 3

    .prologue
    .line 1183
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 1189
    :cond_6
    :goto_6
    return-void

    .line 1187
    :cond_7
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapMarkerDragCallback:Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;

    .line 1188
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerDragListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;)V

    goto :goto_6
.end method

.method public setOnMyLocationClickListener(Lqunar/sdk/mapapi/listener/MyLocationClickListener;)V
    .registers 3

    .prologue
    .line 164
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_7

    .line 171
    :cond_6
    :goto_6
    return-void

    .line 167
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_6

    .line 168
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;

    .line 169
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMyLocationClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;)V

    goto :goto_6
.end method

.method public setViewPadding(IIII)V
    .registers 6

    .prologue
    .line 1055
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 1060
    :cond_4
    :goto_4
    return-void

    .line 1057
    :cond_5
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->isMapLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1058
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/mapapi/map/BaiduMap;->setViewPadding(IIII)V

    goto :goto_4
.end method

.method public showCustomInfoWindow(Landroid/view/View;Lqunar/sdk/location/QLocation;I)V
    .registers 9

    .prologue
    .line 489
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 494
    :cond_8
    :goto_8
    return-void

    .line 491
    :cond_9
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p2}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 492
    new-instance v1, Lcom/baidu/mapapi/map/InfoWindow;

    invoke-direct {v1, p1, v0, p3}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Landroid/view/View;Lcom/baidu/mapapi/model/LatLng;I)V

    .line 493
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V

    goto :goto_8
.end method

.method public showInfoWindow(Lqunar/sdk/mapapi/QunarInfoWindow;)V
    .registers 9

    .prologue
    .line 449
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 485
    :cond_6
    :goto_6
    return-void

    .line 451
    :cond_7
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$4;

    invoke-direct {v0, p0, p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$4;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/QunarInfoWindow;)V

    .line 463
    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getMarker()Lqunar/sdk/mapapi/entity/QMarker;

    move-result-object v1

    iget-object v1, v1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 464
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 465
    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getView()Landroid/view/View;

    move-result-object v1

    .line 468
    :try_start_23
    sget-object v3, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$9;->$SwitchMap$qunar$sdk$mapapi$utils$MarkerParamerCase:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getParamerCase()Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    move-result-object v4

    invoke-virtual {v4}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_2f} :catch_4f

    packed-switch v3, :pswitch_data_5c

    .line 480
    :goto_32
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v1, :cond_6

    .line 483
    new-instance v1, Lcom/baidu/mapapi/map/InfoWindow;

    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getOffsetPixelY()I

    move-result v4

    neg-int v4, v4

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;)V

    .line 484
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V

    goto :goto_6

    .line 470
    :pswitch_48
    :try_start_48
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    goto :goto_32

    .line 477
    :catch_4f
    move-exception v0

    goto :goto_6

    .line 473
    :pswitch_51
    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->infoWindowBitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;
    :try_end_5b
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_5b} :catch_4f

    goto :goto_32

    .line 468
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_51
    .end packed-switch
.end method

.method public twoPoint2Line(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;II)V
    .registers 12

    .prologue
    .line 719
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 760
    :goto_4
    return-void

    .line 722
    :cond_5
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 723
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    iget-object v4, p1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-virtual {v4}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 724
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 725
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    iget-object v3, p2, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-virtual {v3}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v3

    iget-object v5, p2, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-virtual {v5}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 726
    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 729
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 730
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v4, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v4, p3}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    .line 735
    iget-object v4, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 737
    invoke-static {p1}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 738
    if-eqz v3, :cond_af

    .line 739
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorX()F

    move-result v5

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->isPerspective()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getRotate()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->isVisible()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getzIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 743
    invoke-virtual {p1, v3}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 744
    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 745
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->good4recycle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_af
    invoke-static {p2}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_10b

    .line 749
    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorX()F

    move-result v4

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->getAnchorY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->isPerspective()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->getRotate()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {p2}, Lqunar/sdk/mapapi/entity/QMarker;->getzIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 753
    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 754
    invoke-virtual {p2, v1}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 755
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->good4recycle:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_10b
    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    .line 759
    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;)V

    goto/16 :goto_4
.end method

.method public updatePolygon(IIILjava/lang/String;)V
    .registers 9

    .prologue
    .line 892
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 905
    :cond_4
    return-void

    .line 894
    :cond_5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->polygonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Polygon;

    .line 899
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polygon;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polygon;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "polygon_ext_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 901
    new-instance v2, Lcom/baidu/mapapi/map/Stroke;

    invoke-direct {v2, p1, p2}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/Polygon;->setStroke(Lcom/baidu/mapapi/map/Stroke;)V

    .line 902
    invoke-virtual {v0, p3}, Lcom/baidu/mapapi/map/Polygon;->setFillColor(I)V

    goto :goto_17
.end method
