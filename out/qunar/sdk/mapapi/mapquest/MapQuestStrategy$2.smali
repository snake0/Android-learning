.class Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/Overlay$OverlayTapListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    .line 286
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    const/4 v1, 0x1

    # setter for: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->cancleRepeatEvent:Z
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$102(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Z)Z

    .line 287
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    # getter for: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$200(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->getLastFocusedIndex()I

    move-result v0

    .line 288
    const/4 v1, -0x1

    if-le v0, v1, :cond_22

    .line 289
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    # getter for: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->itemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;
    invoke-static {v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$200(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->getItem(I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$2;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    # invokes: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->onMarkerClick(Lcom/mapquest/android/maps/OverlayItem;)Z
    invoke-static {v1, v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$300(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lcom/mapquest/android/maps/OverlayItem;)Z

    .line 292
    :cond_22
    return-void
.end method
