.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;

.field final synthetic val$animationEnable:Z

.field final synthetic val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

.field final synthetic val$durationMs:I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V
    .registers 7

    .prologue
    .line 132
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    iput p3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$width:I

    iput p4, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$height:I

    iput-boolean p5, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$animationEnable:Z

    iput p6, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$durationMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 7

    .prologue
    .line 135
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$bounds:Lcom/baidu/mapapi/model/LatLngBounds;

    iget v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$width:I

    iget v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$height:I

    iget-boolean v4, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$animationEnable:Z

    iget v5, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$2;->val$durationMs:I

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->mapBounds(Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V
    invoke-static/range {v0 .. v5}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->access$100(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lcom/baidu/mapapi/model/LatLngBounds;IIZI)V

    .line 136
    return-void
.end method
