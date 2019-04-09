.class Lcom/mapquest/android/maps/MyLocationOverlay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/MapView$MapViewEventListener;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/MyLocationOverlay;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MyLocationOverlay;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChangeDistance(Lcom/mapquest/android/maps/MapView;)Ljava/lang/Float;
    .registers 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    # getter for: Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;
    invoke-static {v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$300(Lcom/mapquest/android/maps/MyLocationOverlay;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    if-nez v0, :cond_e

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 149
    :goto_d
    return-object v0

    .line 147
    :cond_e
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getMapCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    # getter for: Lcom/mapquest/android/maps/MyLocationOverlay;->lastFixGeoPoint:Lcom/mapquest/android/maps/GeoPoint;
    invoke-static {v2}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$300(Lcom/mapquest/android/maps/MyLocationOverlay;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v0, v2, v3}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public longTouch(Lcom/mapquest/android/maps/MapView;Landroid/graphics/Point;)V
    .registers 3

    .prologue
    .line 157
    return-void
.end method

.method public mapLoaded(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 124
    return-void
.end method

.method public move(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 154
    return-void
.end method

.method public moveEnd(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    # getter for: Lcom/mapquest/android/maps/MyLocationOverlay;->userFollowingFlag:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$200(Lcom/mapquest/android/maps/MyLocationOverlay;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    # getter for: Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$100(Lcom/mapquest/android/maps/MyLocationOverlay;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 135
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/MyLocationOverlay$2;->getChangeDistance(Lcom/mapquest/android/maps/MapView;)Ljava/lang/Float;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_24

    .line 137
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    const/4 v1, 0x1

    # setter for: Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$102(Lcom/mapquest/android/maps/MyLocationOverlay;Z)Z

    .line 141
    :cond_24
    return-void
.end method

.method public moveStart(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    # getter for: Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;
    invoke-static {v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$000(Lcom/mapquest/android/maps/MyLocationOverlay;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    # getter for: Lcom/mapquest/android/maps/MyLocationOverlay;->lastFix:Landroid/location/Location;
    invoke-static {v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$000(Lcom/mapquest/android/maps/MyLocationOverlay;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1e

    .line 128
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$2;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    const/4 v1, 0x0

    # setter for: Lcom/mapquest/android/maps/MyLocationOverlay;->followingFlag:Z
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/MyLocationOverlay;->access$102(Lcom/mapquest/android/maps/MyLocationOverlay;Z)Z

    .line 131
    :cond_1e
    return-void
.end method

.method public touch(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 121
    return-void
.end method

.method public zoomEnd(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 118
    return-void
.end method

.method public zoomStart(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 115
    return-void
.end method
