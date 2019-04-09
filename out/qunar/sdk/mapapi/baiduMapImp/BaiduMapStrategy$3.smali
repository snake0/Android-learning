.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

.field final synthetic val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;)V
    .registers 3

    .prologue
    .line 377
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$3;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$3;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$3;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$3;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;)V
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->access$200(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;)V

    .line 381
    return-void
.end method
