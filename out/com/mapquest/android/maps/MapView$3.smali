.class Lcom/mapquest/android/maps/MapView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView$3;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 2

    .prologue
    .line 354
    return-void
.end method

.method public onZoom(Z)V
    .registers 3

    .prologue
    .line 345
    if-eqz p1, :cond_c

    .line 346
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$3;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;
    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->access$000(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->zoomIn()Z

    .line 351
    :goto_b
    return-void

    .line 348
    :cond_c
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$3;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;
    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->access$000(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->zoomOut()Z

    goto :goto_b
.end method
