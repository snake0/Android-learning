.class Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

.field final synthetic val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lqunar/sdk/mapapi/QunarInfoWindow;)V
    .registers 3

    .prologue
    .line 396
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$3;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$3;->val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 399
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$3;->val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/QunarInfoWindow;->getInfoWindowClickListener()Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_11

    .line 401
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$3;->val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getCallbackData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;->onInfoWindowClick(Ljava/lang/Object;)V

    .line 405
    :cond_11
    return-void
.end method
