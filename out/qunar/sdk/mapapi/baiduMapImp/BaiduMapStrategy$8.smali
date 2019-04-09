.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

.field final synthetic val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;II)V
    .registers 5

    .prologue
    .line 1010
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    iput p3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->val$width:I

    iput p4, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 6

    .prologue
    .line 1013
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    iget v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->val$width:I

    iget v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$8;->val$height:I

    const/4 v4, 0x0

    new-array v4, v4, [Lqunar/sdk/mapapi/listener/CustomMapCallback;

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->access$500(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V

    .line 1014
    return-void
.end method
