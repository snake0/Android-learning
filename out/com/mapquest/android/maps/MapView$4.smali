.class Lcom/mapquest/android/maps/MapView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/MapView;

.field final synthetic val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapView$MapViewEventListener;)V
    .registers 3

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    iput-object p2, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1542
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->isPause:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->access$100(Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1593
    :goto_9
    return v3

    .line 1545
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_70

    goto :goto_9

    .line 1547
    :sswitch_10
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->mapLoaded(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_9

    .line 1566
    :sswitch_18
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->touch(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_9

    .line 1569
    :sswitch_20
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1570
    const/4 v0, 0x0

    .line 1571
    if-eqz v1, :cond_3f

    .line 1572
    const-string v0, "data"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 1573
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    .line 1575
    :cond_3f
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v1, v2, v0}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->longTouch(Lcom/mapquest/android/maps/MapView;Landroid/graphics/Point;)V

    goto :goto_9

    .line 1578
    :sswitch_47
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->zoomStart(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_9

    .line 1581
    :sswitch_4f
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->zoomEnd(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_9

    .line 1584
    :sswitch_57
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->moveStart(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_9

    .line 1587
    :sswitch_5f
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->move(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_9

    .line 1590
    :sswitch_67
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$4;->val$eventListener:Lcom/mapquest/android/maps/MapView$MapViewEventListener;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$4;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/MapView$MapViewEventListener;->moveEnd(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_9

    .line 1545
    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_10
        0x3 -> :sswitch_18
        0x4 -> :sswitch_20
        0xb -> :sswitch_47
        0xc -> :sswitch_4f
        0x15 -> :sswitch_57
        0x16 -> :sswitch_5f
        0x17 -> :sswitch_67
    .end sparse-switch
.end method
