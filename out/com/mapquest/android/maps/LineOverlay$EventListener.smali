.class Lcom/mapquest/android/maps/LineOverlay$EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/MapView$MapViewEventListener;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/LineOverlay;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/LineOverlay;)V
    .registers 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay$EventListener;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/LineOverlay$1;)V
    .registers 3

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/LineOverlay$EventListener;-><init>(Lcom/mapquest/android/maps/LineOverlay;)V

    return-void
.end method


# virtual methods
.method public longTouch(Lcom/mapquest/android/maps/MapView;Landroid/graphics/Point;)V
    .registers 3

    .prologue
    .line 456
    return-void
.end method

.method public mapLoaded(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 482
    return-void
.end method

.method public move(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 459
    return-void
.end method

.method public moveEnd(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 462
    return-void
.end method

.method public moveStart(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 465
    return-void
.end method

.method public touch(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 468
    return-void
.end method

.method public zoomEnd(Lcom/mapquest/android/maps/MapView;)V
    .registers 6

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$EventListener;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->simplify:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$200(Lcom/mapquest/android/maps/LineOverlay;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$EventListener;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$500(Lcom/mapquest/android/maps/LineOverlay;)Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 472
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$EventListener;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$500(Lcom/mapquest/android/maps/LineOverlay;)Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->removeMessages(I)V

    .line 473
    new-instance v0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;

    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay$EventListener;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mapquest/android/maps/LineOverlay$Simplifier;-><init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/Projection;Lcom/mapquest/android/maps/LineOverlay$1;)V

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapView;->post(Ljava/lang/Runnable;)Z

    .line 476
    :cond_2c
    return-void
.end method

.method public zoomStart(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 479
    return-void
.end method
