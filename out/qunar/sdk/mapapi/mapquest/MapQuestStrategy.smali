.class public Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/MapView$MapViewEventListener;
.implements Lqunar/sdk/mapapi/QunarMapV2;


# static fields
.field private static final MAPCHANGE_FINISH:I = 0xff03

.field private static final MAPCHANGE_FINISH_CALLBACK:I = 0xff09


# instance fields
.field private cancleRepeatEvent:Z

.field private customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

.field private isAddMapViewEventListener:Z

.field private isMapLoad:Z

.field private isZoomToBounds:Z

.field private itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$OnMapLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationMarker:Landroid/graphics/drawable/Drawable;

.field private mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

.field private mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

.field private mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

.field private mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

.field private myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;

.field private myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

.field newInnerView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isMapLoad:Z

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    .line 67
    iput-boolean v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    .line 68
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    .line 69
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    .line 71
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-boolean v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->cancleRepeatEvent:Z

    .line 73
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isZoomToBounds:Z

    .line 78
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lqunar/sdk/location/QLocation;ZI)V
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V

    return-void
.end method

.method static synthetic access$102(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Z)Z
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->cancleRepeatEvent:Z

    return p1
.end method

.method static synthetic access$200(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lcom/mapquest/android/maps/DefaultItemizedOverlay;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    return-object v0
.end method

.method static synthetic access$300(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lcom/mapquest/android/maps/OverlayItem;)Z
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->onMarkerClick(Lcom/mapquest/android/maps/OverlayItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lcom/mapquest/android/maps/DefaultItemizedOverlay;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    return-object v0
.end method

.method static synthetic access$500(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lqunar/sdk/mapapi/listener/MyLocationClickListener;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapforceReFefreshFinish()V

    return-void
.end method

.method private addMarkerOperation(Ljava/util/List;Z)V
    .registers 15
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
    const/16 v11, 0x21

    .line 267
    .line 268
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    :cond_e
    :goto_e
    return-void

    .line 271
    :cond_f
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 272
    if-eqz v2, :cond_e

    .line 275
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_23

    .line 276
    const-string v0, "location_marker_purple"

    invoke-static {v2, v0}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    :cond_23
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-nez v0, :cond_49

    .line 279
    new-instance v0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    .line 280
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_49

    .line 281
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    new-instance v1, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;

    invoke-direct {v1, p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;-><init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->setTapListener(Lcom/mapquest/android/maps/Overlay$OverlayTapListener;)V

    .line 296
    :cond_49
    const/4 v0, 0x0

    .line 297
    if-eqz p2, :cond_60

    .line 299
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v1, v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createDrawable(Landroid/content/Context;Lqunar/sdk/mapapi/entity/QMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    invoke-static {v0, v11}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 302
    :cond_60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_65
    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 303
    iget-object v4, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 304
    new-instance v5, Lcom/mapquest/android/maps/OverlayItem;

    new-instance v6, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v4}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    const-string v4, ""

    const-string v7, ""

    invoke-direct {v5, v6, v4, v7}, Lcom/mapquest/android/maps/OverlayItem;-><init>(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-nez p2, :cond_92

    .line 306
    invoke-static {v2, v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createDrawable(Landroid/content/Context;Lqunar/sdk/mapapi/entity/QMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 307
    invoke-static {v1, v11}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 309
    :cond_92
    if-eqz v1, :cond_65

    .line 312
    invoke-virtual {v5, v1}, Lcom/mapquest/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {v0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mapquest/android/maps/OverlayItem;->setExtraInfo(Landroid/os/Bundle;)V

    .line 314
    iget-object v4, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v4, v5}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->addItem(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 315
    invoke-virtual {v0, v5}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 316
    sget-object v4, Lqunar/sdk/mapapi/QunarMapType;->MAPQUEST:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {v0, v4}, Lqunar/sdk/mapapi/entity/QMarker;->setMapType(Lqunar/sdk/mapapi/QunarMapType;)V

    goto :goto_65

    .line 318
    :cond_ac
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto/16 :goto_e
.end method

.method private mapCenter(Lqunar/sdk/location/QLocation;ZI)V
    .registers 10

    .prologue
    .line 322
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_7

    .line 332
    :cond_6
    :goto_6
    return-void

    .line 325
    :cond_7
    if-eqz p2, :cond_31

    .line 326
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->animateTo(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 327
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setZoom(I)V

    goto :goto_6

    .line 329
    :cond_31
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setCenter(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 330
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setZoom(I)V

    goto :goto_6
.end method

.method private mapforceReFefreshFinish()V
    .registers 7

    .prologue
    .line 749
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_27

    .line 750
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 751
    new-instance v1, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 752
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChangeFinish(Lqunar/sdk/location/QLocation;F)V

    .line 754
    :cond_27
    return-void
.end method

.method private onMarkerClick(Lcom/mapquest/android/maps/OverlayItem;)Z
    .registers 9

    .prologue
    .line 198
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_a

    if-nez p1, :cond_c

    .line 199
    :cond_a
    const/4 v0, 0x0

    .line 209
    :goto_b
    return v0

    .line 201
    :cond_c
    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    .line 203
    new-instance v2, Lqunar/sdk/location/QLocation;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 204
    new-instance v1, Lqunar/sdk/mapapi/entity/QMarker;

    invoke-direct {v1}, Lqunar/sdk/mapapi/entity/QMarker;-><init>()V

    .line 205
    iput-object v2, v1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 206
    invoke-virtual {v1, v0}, Lqunar/sdk/mapapi/entity/QMarker;->setExtraInfo(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {v1, p1}, Lqunar/sdk/mapapi/entity/QMarker;->setBitmapDescriptor(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/MarkerClickListener;->onMarkerClick(Lqunar/sdk/mapapi/entity/QMarker;)V

    .line 209
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public addMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 4

    .prologue
    .line 189
    if-nez p1, :cond_3

    .line 195
    :goto_2
    return-void

    .line 191
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->addMarkerOperation(Ljava/util/List;Z)V

    goto :goto_2
.end method

.method public addMarkers(Ljava/util/List;Z)V
    .registers 7
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

    .line 230
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 261
    :cond_9
    :goto_9
    return-void

    .line 233
    :cond_a
    invoke-direct {p0, p1, p2}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->addMarkerOperation(Ljava/util/List;Z)V

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3d

    .line 236
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 237
    if-eqz v0, :cond_9

    .line 239
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 240
    :try_start_1f
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isMapLoaded()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 241
    iget-object v0, v0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    const/4 v2, 0x1

    const/16 v3, 0x12c

    invoke-direct {p0, v0, v2, v3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V

    .line 251
    :goto_2d
    monitor-exit v1

    goto :goto_9

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_2f

    throw v0

    .line 243
    :cond_32
    :try_start_32
    new-instance v2, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$1;

    invoke-direct {v2, p0, v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$1;-><init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lqunar/sdk/mapapi/entity/QMarker;)V

    .line 249
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_2f

    goto :goto_2d

    .line 255
    :cond_3d
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isZoomToBounds:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_9

    .line 259
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapController;->zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V

    goto :goto_9
.end method

.method public addMarkers(Ljava/util/List;ZII)V
    .registers 5
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
    .line 579
    return-void
.end method

.method public addMyLocationData(Lqunar/sdk/location/QLocation;)V
    .registers 8

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v1, :cond_b

    .line 441
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 443
    :cond_b
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-nez v1, :cond_39

    .line 444
    const-string v1, "location_marker_purple"

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->locationMarker:Landroid/graphics/drawable/Drawable;

    .line 445
    new-instance v0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->locationMarker:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    .line 447
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_39

    .line 448
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    new-instance v1, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;

    invoke-direct {v1, p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;-><init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->setTapListener(Lcom/mapquest/android/maps/Overlay$OverlayTapListener;)V

    .line 464
    :cond_39
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->clear()V

    .line 466
    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getIsAbroad()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 468
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    .line 474
    :goto_51
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    new-instance v2, Lcom/mapquest/android/maps/OverlayItem;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/mapquest/android/maps/OverlayItem;-><init>(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->addItem(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 475
    return-void

    .line 471
    :cond_60
    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/utils/projectTransform/CoordConvertLocal;->bd2mar(DD)Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;

    move-result-object v1

    .line 472
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    goto :goto_51
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 479
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    if-eqz v0, :cond_a

    .line 480
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 482
    :cond_a
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_41

    .line 483
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 497
    :cond_1c
    :goto_1c
    return-void

    .line 487
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 488
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-eqz v2, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_21

    .line 491
    :cond_3d
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->destroy()V

    goto :goto_21

    .line 494
    :cond_41
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    if-eqz v0, :cond_1c

    .line 495
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->hide()V

    goto :goto_1c
.end method

.method public destroy(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 638
    if-eqz p1, :cond_44

    const-string v0, "the_guy_want_to_cry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 640
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_20

    .line 641
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->destroyDrawingCache()V

    .line 642
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 643
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    .line 646
    :cond_20
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->clear()V

    .line 647
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-eqz v0, :cond_2c

    .line 648
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->destroy()V

    .line 650
    :cond_2c
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_44

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    .line 652
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapView;->removeMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    .line 653
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->destroyDrawingCache()V

    .line 654
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->destroy()V

    .line 655
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 658
    :cond_44
    return-void
.end method

.method public drawPolygon(Ljava/util/List;IIILjava/lang/String;)V
    .registers 6
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
    .line 559
    return-void
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
    const/4 v9, 0x1

    .line 519
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 549
    :cond_d
    :goto_d
    return-void

    .line 522
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->addMarkerOperation(Ljava/util/List;Z)V

    .line 527
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 528
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 530
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 531
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 532
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 533
    int-to-float v0, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 538
    new-instance v4, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 541
    :cond_63
    new-instance v0, Lcom/mapquest/android/maps/LineOverlay;

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/LineOverlay;-><init>(Landroid/graphics/Paint;)V

    .line 542
    invoke-virtual {v0, v2, v9}, Lcom/mapquest/android/maps/LineOverlay;->setData(Ljava/util/List;Z)V

    .line 543
    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/mapquest/android/maps/LineOverlay;->setShowPoints(ZLandroid/graphics/Paint;)V

    .line 544
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 547
    invoke-static {v2}, Lcom/mapquest/android/maps/BoundingBox;->calculateBoundingBoxGeoPoint(Ljava/util/List;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapController;->zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V

    goto :goto_d
.end method

.method public varargs drawPolyline(Ljava/util/List;Ljava/util/List;IIII[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 8
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
    .line 554
    return-void
.end method

.method public executeListener()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$OnMapLoadListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getMapCenter()Lqunar/sdk/location/QLocation;
    .registers 7

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v1, :cond_18

    .line 176
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    .line 177
    new-instance v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 179
    :cond_18
    return-object v0
.end method

.method public getZoomLevel()F
    .registers 3

    .prologue
    .line 165
    const/high16 v0, 0x40400000    # 3.0f

    .line 166
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v1, :cond_d

    .line 167
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    int-to-float v0, v0

    .line 169
    :cond_d
    return v0
.end method

.method public hideInfoWindow()V
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    if-eqz v0, :cond_9

    .line 358
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->hide()V

    .line 360
    :cond_9
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1d

    .line 361
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->destroyDrawingCache()V

    .line 362
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 363
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_1d
    return-void
.end method

.method public isAutoMarkersZoom(Z)V
    .registers 2

    .prologue
    .line 221
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isZoomToBounds:Z

    .line 222
    return-void
.end method

.method public isMapLoaded()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isMapLoad:Z

    return v0
.end method

.method public longTouch(Lcom/mapquest/android/maps/MapView;Landroid/graphics/Point;)V
    .registers 9

    .prologue
    .line 676
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->cancleRepeatEvent:Z

    if-eqz v0, :cond_10

    .line 677
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->cancleRepeatEvent:Z

    .line 686
    :goto_f
    return-void

    .line 680
    :cond_10
    const/4 v0, 0x0

    .line 681
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v1, :cond_32

    if-eqz p2, :cond_32

    .line 682
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    .line 683
    new-instance v0, Lqunar/sdk/location/QLocation;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 685
    :cond_32
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/MapLongClickListener;->onMapLongClick(Lqunar/sdk/location/QLocation;)V

    goto :goto_f
.end method

.method public varargs mapBound(Ljava/util/List;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 5
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
    .line 574
    return-void
.end method

.method public mapCenterTo(II)V
    .registers 3

    .prologue
    .line 584
    return-void
.end method

.method public mapLoaded(Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    .line 690
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_9

    .line 706
    :cond_8
    :goto_8
    return-void

    .line 693
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isMapLoad:Z

    .line 694
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

    invoke-interface {v0}, Lqunar/sdk/mapapi/listener/MapLoadedCallback;->onMapLoaded()V

    .line 695
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 696
    :try_start_14
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 697
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$OnMapLoadListener;
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_3f

    .line 699
    :try_start_32
    invoke-interface {v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$OnMapLoadListener;->onMapLoad()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_3f

    goto :goto_26

    .line 700
    :catch_36
    move-exception v0

    goto :goto_26

    .line 703
    :cond_38
    :try_start_38
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 705
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

.method public move(Lcom/mapquest/android/maps/MapView;)V
    .registers 7

    .prologue
    const v4, 0xff09

    const v3, 0xff03

    .line 761
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    if-nez v0, :cond_13

    .line 774
    :cond_12
    :goto_12
    return-void

    .line 764
    :cond_13
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChange(Lqunar/sdk/location/QLocation;F)V

    .line 767
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 768
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->removeMessages(I)V

    .line 770
    :cond_2d
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v4}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 771
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v4}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->removeMessages(I)V

    .line 773
    :cond_3a
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->sendEmptyMessage(I)Z

    goto :goto_12
.end method

.method public moveEnd(Lcom/mapquest/android/maps/MapView;)V
    .registers 8

    .prologue
    const v2, 0xff09

    const v1, 0xff03

    .line 778
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    if-nez v0, :cond_13

    .line 793
    :cond_12
    :goto_12
    return-void

    .line 781
    :cond_13
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 782
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->removeMessages(I)V

    .line 784
    :cond_20
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v2}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 785
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-virtual {v0, v2}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;->removeMessages(I)V

    .line 787
    :cond_2d
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_12

    .line 790
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 791
    new-instance v1, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 792
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChangeFinish(Lqunar/sdk/location/QLocation;F)V

    goto :goto_12
.end method

.method public moveStart(Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    .line 797
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    if-nez v0, :cond_d

    .line 801
    :cond_c
    :goto_c
    return-void

    .line 800
    :cond_d
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/MapStatusChangeListener;->onMapStatusChangeStart(Lqunar/sdk/location/QLocation;F)V

    goto :goto_c
.end method

.method public reSetBitmap(Lqunar/sdk/mapapi/entity/QMarkerV2;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 624
    return-void
.end method

.method public reSetDraggable(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 3

    .prologue
    .line 619
    return-void
.end method

.method public reSetMarkAnchor(Lqunar/sdk/mapapi/entity/QMarkerV2;FF)V
    .registers 4

    .prologue
    .line 604
    return-void
.end method

.method public reSetMarkFlat(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 3

    .prologue
    .line 614
    return-void
.end method

.method public reSetMarkPerspective(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 3

    .prologue
    .line 609
    return-void
.end method

.method public reSetMarkPosition(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/location/QLocation;)V
    .registers 3

    .prologue
    .line 589
    return-void
.end method

.method public reSetMarkRotate(Lqunar/sdk/mapapi/entity/QMarker;F)V
    .registers 3

    .prologue
    .line 594
    return-void
.end method

.method public reSetMarkTitle(Lqunar/sdk/mapapi/entity/QMarkerV2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 599
    return-void
.end method

.method public reSetOpacity(Lqunar/sdk/mapapi/entity/QMarkerV2;F)V
    .registers 3

    .prologue
    .line 629
    return-void
.end method

.method public removeMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 4

    .prologue
    .line 348
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-nez v0, :cond_7

    .line 353
    :cond_6
    :goto_6
    return-void

    .line 351
    :cond_7
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->getBitmapDescriptor()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->removeItem(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 352
    invoke-virtual {p1}, Lqunar/sdk/mapapi/entity/QMarker;->recycle()V

    goto :goto_6
.end method

.method public removeMarkers(Ljava/util/List;)V
    .registers 4
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
    .line 336
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 344
    :cond_8
    :goto_8
    return-void

    .line 340
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QMarker;

    .line 341
    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->removeMarker(Lqunar/sdk/mapapi/entity/QMarker;)V

    goto :goto_d

    .line 343
    :cond_1d
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto :goto_8
.end method

.method public removePolygon(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 569
    return-void
.end method

.method public setOnMapClickListener(Lqunar/sdk/mapapi/listener/MapClickListener;)V
    .registers 3

    .prologue
    .line 94
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_7

    .line 104
    :cond_6
    :goto_6
    return-void

    .line 97
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_6

    .line 98
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

    .line 99
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    if-nez v0, :cond_6

    .line 100
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapView;->addMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    goto :goto_6
.end method

.method public setOnMapLoadedCallback(Lqunar/sdk/mapapi/listener/MapLoadedCallback;)V
    .registers 3

    .prologue
    .line 122
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_7

    .line 132
    :cond_6
    :goto_6
    return-void

    .line 125
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_6

    .line 126
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapLoadedCallback:Lqunar/sdk/mapapi/listener/MapLoadedCallback;

    .line 127
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    if-nez v0, :cond_6

    .line 128
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapView;->addMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    goto :goto_6
.end method

.method public setOnMapLongClickListener(Lqunar/sdk/mapapi/listener/MapLongClickListener;)V
    .registers 3

    .prologue
    .line 108
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_7

    .line 118
    :cond_6
    :goto_6
    return-void

    .line 111
    :cond_7
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_6

    .line 112
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapLongClickListener:Lqunar/sdk/mapapi/listener/MapLongClickListener;

    .line 113
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    if-nez v0, :cond_6

    .line 114
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapView;->addMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    goto :goto_6
.end method

.method public setOnMapStatusChangeListener(Lqunar/sdk/mapapi/listener/MapStatusChangeListener;)V
    .registers 3

    .prologue
    .line 144
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_7

    .line 153
    :cond_6
    :goto_6
    return-void

    .line 147
    :cond_7
    new-instance v0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;-><init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->handler:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$MapChangeHandler;

    .line 148
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapStatusChangeListener:Lqunar/sdk/mapapi/listener/MapStatusChangeListener;

    .line 149
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    if-nez v0, :cond_6

    .line 150
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapView;->addMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->isAddMapViewEventListener:Z

    goto :goto_6
.end method

.method public setOnMarkerClickListener(Lqunar/sdk/mapapi/listener/MarkerClickListener;)V
    .registers 3

    .prologue
    .line 136
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_7

    .line 140
    :cond_6
    :goto_6
    return-void

    .line 139
    :cond_7
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->markerClickListener:Lqunar/sdk/mapapi/listener/MarkerClickListener;

    goto :goto_6
.end method

.method public setOnMarkerDragListener(Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;)V
    .registers 2

    .prologue
    .line 810
    return-void
.end method

.method public setOnMyLocationClickListener(Lqunar/sdk/mapapi/listener/MyLocationClickListener;)V
    .registers 3

    .prologue
    .line 157
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_7

    .line 161
    :cond_6
    :goto_6
    return-void

    .line 160
    :cond_7
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;

    goto :goto_6
.end method

.method public setViewPadding(IIII)V
    .registers 5

    .prologue
    .line 634
    return-void
.end method

.method public showCustomInfoWindow(Landroid/view/View;Lqunar/sdk/location/QLocation;I)V
    .registers 10

    .prologue
    const/4 v5, -0x1

    .line 412
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->hideInfoWindow()V

    .line 413
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 435
    :cond_a
    :goto_a
    return-void

    .line 416
    :cond_b
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p2}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    .line 417
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    if-nez v1, :cond_2b

    .line 418
    new-instance v1, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-direct {v1, v2}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    .line 419
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setAnimated(Z)V

    .line 421
    :cond_2b
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {v1, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setGeoPoint(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 422
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setInterceptTouch(Z)V

    .line 423
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_a

    .line 427
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_49

    .line 428
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    .line 430
    :cond_49
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 432
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setInnerView(Landroid/widget/RelativeLayout;)V

    .line 434
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {v1, v0, p3}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->showAnnotationView(Lcom/mapquest/android/maps/GeoPoint;I)V

    goto :goto_a
.end method

.method public showInfoWindow(Lqunar/sdk/mapapi/QunarInfoWindow;)V
    .registers 12

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 369
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->hideInfoWindow()V

    .line 370
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_b

    if-nez p1, :cond_c

    .line 408
    :cond_b
    :goto_b
    return-void

    .line 373
    :cond_c
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getView()Landroid/view/View;

    move-result-object v1

    .line 375
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 378
    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getMarker()Lqunar/sdk/mapapi/entity/QMarker;

    move-result-object v2

    iget-object v2, v2, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 379
    new-instance v3, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    .line 380
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    if-nez v2, :cond_3f

    .line 381
    new-instance v2, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    iget-object v4, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-direct {v2, v4}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    .line 382
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {v2, v8}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setAnimated(Z)V

    .line 384
    :cond_3f
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {v2, v3}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setGeoPoint(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 385
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {v2, v8}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setInterceptTouch(Z)V

    .line 387
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_54

    .line 388
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    .line 390
    :cond_54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 392
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 394
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 395
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->newInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setInnerView(Landroid/widget/RelativeLayout;)V

    .line 396
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    new-instance v1, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$3;

    invoke-direct {v1, p0, p1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$3;-><init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lqunar/sdk/mapapi/QunarInfoWindow;)V

    invoke-virtual {v0, v1}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->customAnnotationView:Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getOffsetPixelY()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->showAnnotationView(Lcom/mapquest/android/maps/GeoPoint;I)V

    goto :goto_b
.end method

.method public touch(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    .line 666
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_9

    .line 672
    :cond_8
    :goto_8
    return-void

    .line 669
    :cond_9
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_8

    .line 670
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapClickListener:Lqunar/sdk/mapapi/listener/MapClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/MapClickListener;->onMapClick(Lqunar/sdk/location/QLocation;)V

    goto :goto_8
.end method

.method public twoPoint2Line(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;II)V
    .registers 11

    .prologue
    .line 502
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_5

    .line 514
    :goto_4
    return-void

    .line 505
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->addMarkerOperation(Ljava/util/List;Z)V

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    iget-object v0, p1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p2, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    .line 513
    invoke-virtual/range {v0 .. v5}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->drawPolyline(Ljava/util/List;IILqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;)V

    goto :goto_4
.end method

.method public updatePolygon(IIILjava/lang/String;)V
    .registers 5

    .prologue
    .line 564
    return-void
.end method

.method public zoomEnd(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 712
    return-void
.end method

.method public zoomStart(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 718
    return-void
.end method
