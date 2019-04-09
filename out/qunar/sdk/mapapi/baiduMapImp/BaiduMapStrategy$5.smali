.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

.field final synthetic val$gpsLocation:Lqunar/sdk/location/QLocation;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/location/QLocation;)V
    .registers 3

    .prologue
    .line 656
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$5;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$5;->val$gpsLocation:Lqunar/sdk/location/QLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$5;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$5;->val$gpsLocation:Lqunar/sdk/location/QLocation;

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->addLocationData(Lqunar/sdk/location/QLocation;)V
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;->access$400(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;Lqunar/sdk/location/QLocation;)V

    .line 660
    return-void
.end method
