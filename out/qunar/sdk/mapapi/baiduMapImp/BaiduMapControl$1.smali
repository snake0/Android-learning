.class Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;

.field final synthetic val$animationEnable:Z

.field final synthetic val$durationMs:I

.field final synthetic val$point:Lqunar/sdk/location/QLocation;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lqunar/sdk/location/QLocation;ZI)V
    .registers 5

    .prologue
    .line 58
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;

    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->val$point:Lqunar/sdk/location/QLocation;

    iput-boolean p3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->val$animationEnable:Z

    iput p4, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->val$durationMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->val$point:Lqunar/sdk/location/QLocation;

    iget-boolean v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->val$animationEnable:Z

    iget v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$1;->val$durationMs:I

    # invokes: Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V
    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;->access$000(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;Lqunar/sdk/location/QLocation;ZI)V

    .line 62
    return-void
.end method
