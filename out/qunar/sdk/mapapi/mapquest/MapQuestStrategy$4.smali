.class Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;
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
    .line 450
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    .line 453
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    const/4 v1, 0x1

    # setter for: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->cancleRepeatEvent:Z
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$102(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Z)Z

    .line 454
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    # getter for: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$400(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->getLastFocusedIndex()I

    move-result v0

    .line 455
    const/4 v1, -0x1

    if-le v0, v1, :cond_24

    .line 456
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    # getter for: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$500(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lqunar/sdk/mapapi/listener/MyLocationClickListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 457
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$4;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    # getter for: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->myLocationClickListener:Lqunar/sdk/mapapi/listener/MyLocationClickListener;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$500(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;)Lqunar/sdk/mapapi/listener/MyLocationClickListener;

    move-result-object v0

    invoke-interface {v0}, Lqunar/sdk/mapapi/listener/MyLocationClickListener;->onMyLocationClick()V

    .line 460
    :cond_24
    return-void
.end method
