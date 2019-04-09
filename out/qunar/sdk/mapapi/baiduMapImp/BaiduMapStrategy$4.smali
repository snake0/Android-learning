.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

.field final synthetic val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/QunarInfoWindow;)V
    .registers 3

    .prologue
    .line 451
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$4;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$4;->val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick()V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$4;->val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/QunarInfoWindow;->getInfoWindowClickListener()Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_11

    .line 456
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$4;->val$infoWindow:Lqunar/sdk/mapapi/QunarInfoWindow;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarInfoWindow;->getCallbackData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarInfoWindowClickListener;->onInfoWindowClick(Ljava/lang/Object;)V

    .line 460
    :cond_11
    return-void
.end method
