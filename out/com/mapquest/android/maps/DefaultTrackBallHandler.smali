.class Lcom/mapquest/android/maps/DefaultTrackBallHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private trackballZoomMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->trackballZoomMode:Z

    .line 13
    iput-object p1, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 14
    return-void
.end method


# virtual methods
.method public handleTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 18
    if-nez v0, :cond_2a

    .line 19
    iget-boolean v0, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->trackballZoomMode:Z

    if-nez v0, :cond_28

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->trackballZoomMode:Z

    .line 20
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 21
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 22
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "state"

    iget-boolean v4, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->trackballZoomMode:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendMessage(Landroid/os/Message;)V

    .line 44
    :cond_27
    :goto_27
    return v1

    .line 19
    :cond_28
    const/4 v0, 0x0

    goto :goto_10

    .line 24
    :cond_2a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    .line 25
    iget-boolean v0, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->trackballZoomMode:Z

    if-eqz v0, :cond_59

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v2, v0

    .line 28
    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_27

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4f

    .line 33
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->zoomOut()Z

    goto :goto_27

    .line 35
    :cond_4f
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->zoomIn()Z

    goto :goto_27

    .line 38
    :cond_59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    neg-float v0, v0

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    neg-float v2, v2

    .line 40
    iget-object v3, p0, Lcom/mapquest/android/maps/DefaultTrackBallHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v3

    float-to-int v0, v0

    float-to-int v2, v2

    invoke-virtual {v3, v0, v2}, Lcom/mapquest/android/maps/MapController;->scrollBy(II)V

    goto :goto_27
.end method
