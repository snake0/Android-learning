.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

.field final synthetic val$bitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field final synthetic val$marker:Lqunar/sdk/mapapi/entity/QMarker;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .registers 4

    .prologue
    .line 262
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;->val$marker:Lqunar/sdk/mapapi/entity/QMarker;

    iput-object p3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;->val$bitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;->val$marker:Lqunar/sdk/mapapi/entity/QMarker;

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$1;->val$bitmapDescriptor:Lcom/baidu/mapapi/map/BitmapDescriptor;

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addMarkerOperation(Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    invoke-static {v0, v1, v2}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->access$000(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/entity/QMarker;Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    .line 266
    return-void
.end method
