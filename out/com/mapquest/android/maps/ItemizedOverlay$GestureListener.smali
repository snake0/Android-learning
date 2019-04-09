.class Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field private mapView:Lcom/mapquest/android/maps/MapView;

.field final synthetic this$0:Lcom/mapquest/android/maps/ItemizedOverlay;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/ItemizedOverlay;)V
    .registers 2

    .prologue
    .line 402
    iput-object p1, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->this$0:Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 403
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/ItemizedOverlay;Lcom/mapquest/android/maps/ItemizedOverlay$1;)V
    .registers 3

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;-><init>(Lcom/mapquest/android/maps/ItemizedOverlay;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->this$0:Lcom/mapquest/android/maps/ItemizedOverlay;

    iget-object v3, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->mapView:Lcom/mapquest/android/maps/MapView;

    float-to-int v0, v0

    float-to-int v1, v1

    # invokes: Lcom/mapquest/android/maps/ItemizedOverlay;->findItem(Lcom/mapquest/android/maps/MapView;II)I
    invoke-static {v2, v3, v0, v1}, Lcom/mapquest/android/maps/ItemizedOverlay;->access$100(Lcom/mapquest/android/maps/ItemizedOverlay;Lcom/mapquest/android/maps/MapView;II)I

    move-result v0

    .line 413
    const/4 v1, -0x1

    if-le v0, v1, :cond_1a

    .line 414
    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->this$0:Lcom/mapquest/android/maps/ItemizedOverlay;

    # invokes: Lcom/mapquest/android/maps/ItemizedOverlay;->press(I)V
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->access$200(Lcom/mapquest/android/maps/ItemizedOverlay;I)V

    .line 417
    :cond_1a
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 423
    iget-object v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->this$0:Lcom/mapquest/android/maps/ItemizedOverlay;

    iget-object v2, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1, v0, v2}, Lcom/mapquest/android/maps/ItemizedOverlay;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    return v0
.end method

.method setMapView(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lcom/mapquest/android/maps/ItemizedOverlay$GestureListener;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 407
    return-void
.end method
