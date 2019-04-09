.class Lcom/mapquest/android/maps/TouchEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/MapTouchEventHandler;


# static fields
.field static final ACTION:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private firedMoveStart:Z

.field private firedTouch:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

.field multiTouchDoubleTapHandler:Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/TouchEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->firedMoveStart:Z

    .line 21
    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->firedTouch:Z

    .line 23
    iput-object v2, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDoubleTapHandler:Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;

    .line 26
    iput-object p1, p0, Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 27
    new-instance v0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    .line 28
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/TouchEventHandler$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 29
    new-instance v0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;

    invoke-direct {v0, p0, p1}, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDoubleTapHandler:Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;

    .line 30
    invoke-virtual {p0}, Lcom/mapquest/android/maps/TouchEventHandler;->disableMultitouchRotation()V

    .line 31
    return-void
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mapquest/android/maps/TouchEventHandler;)Z
    .registers 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->firedMoveStart:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mapquest/android/maps/TouchEventHandler;Z)Z
    .registers 2

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/mapquest/android/maps/TouchEventHandler;->firedMoveStart:Z

    return p1
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method protected disableMultitouchRotation()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->removeHandlers()V

    .line 64
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDoubleTapHandler:Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->registerHandler(Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;)V

    .line 65
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    new-instance v1, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;

    iget-object v2, p0, Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-direct {v1, p0, v2}, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->registerHandler(Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;)V

    .line 66
    return-void
.end method

.method protected enableMultitouchRotation()V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->removeHandlers()V

    .line 58
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDoubleTapHandler:Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->registerHandler(Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;)V

    .line 59
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    new-instance v1, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;

    iget-object v2, p0, Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-direct {v1, p0, v2}, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->registerHandler(Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;)V

    .line 60
    return-void
.end method

.method protected fireZoomEndEvent()V
    .registers 2

    .prologue
    .line 69
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 70
    return-void
.end method

.method protected fireZoomStartEvent()V
    .registers 2

    .prologue
    .line 73
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 74
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    iget-object v2, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    invoke-virtual {v2, p1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 49
    :cond_b
    :goto_b
    return v0

    .line 37
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 38
    iget-object v3, p0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    iget v3, v3, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionMask:I

    and-int/2addr v2, v3

    .line 39
    if-ne v2, v1, :cond_24

    .line 40
    iget-boolean v1, p0, Lcom/mapquest/android/maps/TouchEventHandler;->firedMoveStart:Z

    if-eqz v1, :cond_22

    .line 41
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 43
    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->firedMoveStart:Z

    .line 46
    :cond_22
    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->firedTouch:Z

    .line 49
    :cond_24
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b
.end method
