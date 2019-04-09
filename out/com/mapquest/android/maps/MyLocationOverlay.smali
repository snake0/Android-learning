.class public Lcom/mapquest/android/maps/MyLocationOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final GPS_TIME_OUT:I = 0x2710

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private HALO_COLOR:I

.field private accelerometer:Landroid/hardware/Sensor;

.field animating:I

.field animationFrequency:I

.field animationLength:D

.field animationRadius:D

.field private beaconAnimationFillPaint:Landroid/graphics/Paint;

.field private beaconAnimationOutlinePaint:Landroid/graphics/Paint;

.field private bearing:F

.field private cv:Lcom/mapquest/android/maps/CompassView;

.field private defaultListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

.field private enableCompass:Z

.field private enableMyLocation:Z

.field private followingFlag:Z

.field private lastFix:Landroid/location/Location;

.field private lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

.field private lastGpsFixTime:J

.field private lastNetworkFix:Landroid/location/Location;

.field private listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

.field private locationManager:Landroid/location/LocationManager;

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private magnetometer:Landroid/hardware/Sensor;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private marker:Landroid/graphics/drawable/Drawable;

.field private markerAlignment:I

.field minFingerSize:I

.field private networkAvailable:Z

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private reusable:Landroid/graphics/Point;

.field private runnable:Ljava/lang/Runnable;

.field private sensorManager:Landroid/hardware/SensorManager;

.field startTime:J

.field private userFollowingFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/mapquest/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/MyLocationOverlay;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapquest/android/maps/MapView;)V
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v1, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 160
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 33
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    .line 34
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->bearing:F

    .line 38
    iput-boolean v7, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    .line 39
    iput-boolean v7, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableMyLocation:Z

    .line 41
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    .line 42
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 43
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastNetworkFix:Landroid/location/Location;

    .line 44
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastGpsFixTime:J

    .line 46
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->marker:Landroid/graphics/drawable/Drawable;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->rect:Landroid/graphics/Rect;

    .line 48
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->paint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->reusable:Landroid/graphics/Point;

    .line 51
    const v0, -0xaedeb3

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->HALO_COLOR:I

    .line 52
    iput v5, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->markerAlignment:I

    .line 55
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationFrequency:I

    .line 56
    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationLength:D

    .line 57
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    iput-wide v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationRadius:D

    .line 60
    iput-boolean v7, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->userFollowingFlag:Z

    .line 61
    iput-boolean v7, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z

    .line 62
    iput-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    .line 63
    new-instance v0, Lcom/mapquest/android/maps/MyLocationOverlay$1;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/MyLocationOverlay$1;-><init>(Lcom/mapquest/android/maps/MyLocationOverlay;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mListener:Landroid/hardware/SensorEventListener;

    .line 113
    new-instance v0, Lcom/mapquest/android/maps/MyLocationOverlay$2;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/MyLocationOverlay$2;-><init>(Lcom/mapquest/android/maps/MyLocationOverlay;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->defaultListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    .line 161
    iput-object p2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->minFingerSize:I

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->paint:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 165
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 166
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    .line 167
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->accelerometer:Landroid/hardware/Sensor;

    .line 168
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->magnetometer:Landroid/hardware/Sensor;

    .line 169
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    .line 170
    const-string v0, "location_marker_purple"

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->marker:Landroid/graphics/drawable/Drawable;

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    .line 172
    iget v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->HALO_COLOR:I

    .line 173
    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 175
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    .line 178
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    new-instance v0, Lcom/mapquest/android/maps/CompassView;

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mapquest/android/maps/CompassView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    .line 182
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/CompassView;->setVisibility(I)V

    .line 183
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    const/16 v3, 0x28

    const/16 v4, 0x28

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 184
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    invoke-virtual {p2, v1, v0}, Lcom/mapquest/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iput v6, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animating:I

    .line 186
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->startTime:J

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/mapquest/android/maps/MyLocationOverlay;)Landroid/location/Location;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/MyLocationOverlay;)Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mapquest/android/maps/MyLocationOverlay;Z)Z
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/MyLocationOverlay;)Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->userFollowingFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mapquest/android/maps/MyLocationOverlay;)Lcom/mapquest/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    return-object v0
.end method

.method private checkMapCenter()V
    .registers 3

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->userFollowingFlag:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z

    if-eqz v0, :cond_13

    .line 451
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->animateTo(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 454
    :cond_13
    return-void
.end method

.method private registerProviders()Z
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 263
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 265
    const-string v1, "gps"

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 266
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    move v6, v7

    .line 270
    :goto_1e
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 273
    :goto_26
    const-string v0, "network"

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 274
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 278
    :goto_38
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 281
    :goto_40
    return v7

    :cond_41
    move v7, v6

    goto :goto_38

    :cond_43
    move v7, v6

    goto :goto_40

    :cond_45
    move v6, v0

    goto :goto_1e

    :cond_47
    move v6, v0

    goto :goto_26
.end method


# virtual methods
.method protected animateBeacon(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;ZJ)Z
    .registers 14

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_a

    .line 314
    const/4 v0, 0x0

    .line 346
    :goto_9
    return v0

    .line 316
    :cond_a
    iget v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animating:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 317
    iput-wide p4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->startTime:J

    .line 318
    const/4 v0, 0x2

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animating:I

    .line 321
    :cond_14
    iget-wide v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->startTime:J

    sub-long v0, p4, v0

    iget v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationFrequency:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    .line 322
    iget v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animating:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c0

    long-to-double v2, v0

    iget-wide v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationLength:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_c0

    .line 323
    long-to-double v2, v0

    iget-wide v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationLength:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationRadius:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3f

    .line 325
    const/4 v0, 0x0

    goto :goto_9

    .line 327
    :cond_3f
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    iget-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    iget-object v5, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->reusable:Landroid/graphics/Point;

    invoke-interface {v3, v4, v5}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 328
    const-wide v4, 0x406fe00000000000L    # 255.0

    long-to-double v0, v0

    iget-wide v6, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animationLength:D

    div-double/2addr v0, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 330
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 331
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_86

    .line 332
    iget v0, v3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 335
    :cond_86
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9a

    .line 336
    iget v0, v3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 339
    :cond_9a
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 340
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iget v4, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v0

    iget v5, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 341
    invoke-virtual {p2, v1}, Lcom/mapquest/android/maps/MapView;->invalidate(Landroid/graphics/Rect;)V

    .line 342
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 345
    :cond_c0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapquest/android/maps/MyLocationOverlay;->draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V

    .line 346
    const/4 v0, 0x0

    goto/16 :goto_9
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableMyLocation:Z

    if-eqz v0, :cond_b

    .line 216
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 217
    iput-boolean v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableMyLocation:Z

    .line 220
    :cond_b
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    if-eqz v0, :cond_14

    .line 221
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MyLocationOverlay;->disableCompass()V

    .line 222
    iput-boolean v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    .line 225
    :cond_14
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    .line 226
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    .line 227
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->accelerometer:Landroid/hardware/Sensor;

    .line 228
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->magnetometer:Landroid/hardware/Sensor;

    .line 229
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    .line 230
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 231
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    if-eqz v0, :cond_2b

    .line 232
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/CompassView;->destroyDrawingCache()V

    .line 233
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    .line 236
    :cond_2b
    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 237
    return-void
.end method

.method public disableCompass()V
    .registers 3

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    if-eqz v0, :cond_16

    .line 255
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/CompassView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 257
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 260
    :cond_16
    return-void
.end method

.method public disableMyLocation()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableMyLocation:Z

    .line 292
    return-void
.end method

.method protected dispatchTap()Z
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;ZJ)Z
    .registers 15

    .prologue
    const/4 v7, 0x1

    .line 299
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    if-eqz v0, :cond_a

    .line 300
    iget v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->bearing:F

    invoke-virtual {p0, p1, v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;F)V

    .line 303
    :cond_a
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableMyLocation:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    if-eqz v0, :cond_2b

    .line 304
    invoke-virtual/range {p0 .. p5}, Lcom/mapquest/android/maps/MyLocationOverlay;->animateBeacon(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;ZJ)Z

    move-result v8

    .line 305
    iget-object v3, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    iget-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mapquest/android/maps/MyLocationOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Landroid/location/Location;Lcom/mapquest/android/maps/GeoPoint;J)V

    .line 306
    if-nez v8, :cond_29

    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    if-eqz v0, :cond_29

    move v0, v7

    .line 308
    :goto_28
    return v0

    :cond_29
    move v0, v8

    .line 306
    goto :goto_28

    :cond_2b
    move v0, v7

    .line 308
    goto :goto_28
.end method

.method protected drawCompass(Landroid/graphics/Canvas;F)V
    .registers 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/CompassView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_13

    .line 353
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/CompassView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/CompassView;->invalidate()V

    .line 357
    :cond_13
    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Landroid/location/Location;Lcom/mapquest/android/maps/GeoPoint;J)V
    .registers 12

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->marker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6c

    .line 361
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->reusable:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->marker:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->markerAlignment:I

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/MyLocationOverlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 363
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->marker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 364
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 365
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->rect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->minFingerSize:I

    neg-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->minFingerSize:I

    neg-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 366
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->marker:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/mapquest/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    .line 367
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/mapquest/android/maps/Projection;->metersToEquatorPixels(F)F

    move-result v1

    .line 368
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6c

    .line 369
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 370
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 374
    :cond_6c
    return-void
.end method

.method public enableCompass()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 244
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    if-nez v0, :cond_1a

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    .line 246
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 247
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->magnetometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 250
    :cond_1a
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    return v0
.end method

.method public enableMyLocation()Z
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableMyLocation:Z

    .line 286
    invoke-direct {p0}, Lcom/mapquest/android/maps/MyLocationOverlay;->registerProviders()Z

    move-result v0

    return v0
.end method

.method public getLastFix()Landroid/location/Location;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lcom/mapquest/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    return-object v0
.end method

.method public getOrientation()F
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->bearing:F

    return v0
.end method

.method public isCompassEnabled()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableCompass:Z

    return v0
.end method

.method public isFollowing()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->userFollowingFlag:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .registers 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->enableMyLocation:Z

    return v0
.end method

.method public onAccuracyChanged(II)V
    .registers 3

    .prologue
    .line 407
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 413
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 414
    const-string v5, "gps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastGpsFixTime:J

    .line 428
    :goto_18
    if-eqz v0, :cond_52

    .line 429
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 430
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    if-nez v0, :cond_4d

    .line 431
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    .line 432
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4d

    .line 433
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->runnable:Ljava/lang/Runnable;

    .line 438
    :cond_4d
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 441
    :cond_52
    invoke-direct {p0}, Lcom/mapquest/android/maps/MyLocationOverlay;->checkMapCenter()V

    .line 442
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 447
    :goto_5a
    return-void

    .line 417
    :cond_5b
    const-string v5, "network"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 418
    iget-wide v4, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastGpsFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_7e

    .line 419
    :goto_6c
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastNetworkFix:Landroid/location/Location;

    if-nez v1, :cond_80

    .line 420
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastNetworkFix:Landroid/location/Location;

    .line 425
    :goto_77
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastGpsFixTime:J

    goto :goto_18

    .line 443
    :catch_7c
    move-exception v0

    goto :goto_5a

    :cond_7e
    move v0, v1

    .line 418
    goto :goto_6c

    .line 422
    :cond_80
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastNetworkFix:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_85} :catch_7c

    goto :goto_77

    :cond_86
    move v0, v1

    goto :goto_18
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 480
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 483
    return-void
.end method

.method public onSensorChanged(I[F)V
    .registers 5

    .prologue
    .line 394
    const/4 v0, 0x0

    :try_start_1
    aget v0, p2, v0

    iget v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->bearing:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 404
    :goto_9
    return-void

    .line 398
    :cond_a
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->bearing:F

    .line 399
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->cv:Lcom/mapquest/android/maps/CompassView;

    iget v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->bearing:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/CompassView;->setRotation(F)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_9

    .line 400
    :catch_18
    move-exception v0

    goto :goto_9
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 457
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 458
    packed-switch p2, :pswitch_data_32

    .line 477
    :cond_b
    :goto_b
    return-void

    .line 461
    :pswitch_c
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastNetworkFix:Landroid/location/Location;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->networkAvailable:Z

    if-eqz v0, :cond_b

    .line 462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastGpsFixTime:J

    .line 463
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastNetworkFix:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_b

    .line 466
    :cond_1e
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 467
    packed-switch p2, :pswitch_data_3a

    goto :goto_b

    .line 470
    :pswitch_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->networkAvailable:Z

    goto :goto_b

    .line 473
    :pswitch_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->networkAvailable:Z

    goto :goto_b

    .line 458
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 467
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2a
        :pswitch_2e
    .end packed-switch
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 501
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->reusable:Landroid/graphics/Point;

    invoke-interface {v0, p1, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/mapquest/android/maps/MyLocationOverlay;->dispatchTap()Z

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;

    if-eqz v0, :cond_e

    .line 487
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 488
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 489
    const/4 v0, 0x1

    .line 492
    :goto_d
    return v0

    .line 491
    :cond_e
    iput-object p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->runnable:Ljava/lang/Runnable;

    .line 492
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setBeaconAnimationFillPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 519
    iput-object p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationFillPaint:Landroid/graphics/Paint;

    .line 520
    return-void
.end method

.method public setBeaconAnimationOutlinePaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 515
    iput-object p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->beaconAnimationOutlinePaint:Landroid/graphics/Paint;

    .line 516
    return-void
.end method

.method public setFollowing(Z)V
    .registers 4

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->userFollowingFlag:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z

    .line 200
    if-eqz p1, :cond_24

    .line 201
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MyLocationOverlay;->setupMapViewEventListener()Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    .line 202
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    if-eqz v0, :cond_18

    .line 203
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->addMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    .line 206
    :cond_18
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->animateTo(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 211
    :goto_23
    return-void

    .line 208
    :cond_24
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->listener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->removeMapViewEventListener(Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V

    goto :goto_23
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .prologue
    .line 523
    iput-object p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->marker:Landroid/graphics/drawable/Drawable;

    .line 524
    if-eqz p2, :cond_6

    .line 525
    iput p2, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->markerAlignment:I

    .line 528
    :cond_6
    return-void
.end method

.method protected setupMapViewEventListener()Lcom/mapquest/android/maps/MapView$MapViewEventListener;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->defaultListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    return-object v0
.end method

.method public shouldAnimate(Z)V
    .registers 3

    .prologue
    .line 506
    if-eqz p1, :cond_6

    .line 507
    const/4 v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animating:I

    .line 512
    :goto_5
    return-void

    .line 509
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay;->animating:I

    goto :goto_5
.end method
