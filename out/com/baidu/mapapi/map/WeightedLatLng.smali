.class public Lcom/baidu/mapapi/map/WeightedLatLng;
.super Lcom/baidu/mapapi/map/l$a;


# static fields
.field public static final DEFAULT_INTENSITY:D = 1.0


# instance fields
.field private a:Landroid/graphics/Point;

.field public final intensity:D

.field public final latLng:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mapapi/map/WeightedLatLng;-><init>(Lcom/baidu/mapapi/model/LatLng;D)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/model/LatLng;D)V
    .registers 9

    invoke-direct {p0}, Lcom/baidu/mapapi/map/l$a;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "latLng can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->latLng:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->a:Landroid/graphics/Point;

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2d

    iput-wide p2, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    :goto_2c
    return-void

    :cond_2d
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    goto :goto_2c
.end method


# virtual methods
.method a()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->a:Landroid/graphics/Point;

    return-object v0
.end method
