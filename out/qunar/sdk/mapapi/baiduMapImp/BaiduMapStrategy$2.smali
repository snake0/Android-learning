.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

.field final synthetic val$marker:Lqunar/sdk/mapapi/entity/QMarker;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 3

    .prologue
    .line 330
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$2;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$2;->val$marker:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 5

    .prologue
    .line 333
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$2;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$2;->val$marker:Lqunar/sdk/mapapi/entity/QMarker;

    iget-object v1, v1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    const/4 v2, 0x1

    const/16 v3, 0x12c

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V
    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->access$100(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/location/QLocation;ZI)V

    .line 334
    return-void
.end method
