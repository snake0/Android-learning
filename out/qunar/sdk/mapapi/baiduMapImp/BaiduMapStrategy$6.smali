.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

.field final synthetic val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

.field final synthetic val$height:I

.field final synthetic val$mapCallbacks:[Lqunar/sdk/mapapi/listener/CustomMapCallback;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 6

    .prologue
    .line 937
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    iput p3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$width:I

    iput p4, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$height:I

    iput-object p5, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$mapCallbacks:[Lqunar/sdk/mapapi/listener/CustomMapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 6

    .prologue
    .line 939
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    iget v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$width:I

    iget v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$height:I

    iget-object v4, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$6;->val$mapCallbacks:[Lqunar/sdk/mapapi/listener/CustomMapCallback;

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->zoom2Bounds(Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->access$500(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lcom/baidu/mapapi/model/LatLngBounds;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V

    .line 940
    return-void
.end method
