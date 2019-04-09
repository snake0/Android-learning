.class Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$OnMapLoadListener;


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

.field final synthetic val$marker:Lqunar/sdk/mapapi/entity/QMarker;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 3

    .prologue
    .line 243
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$1;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    iput-object p2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$1;->val$marker:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoad()V
    .registers 5

    .prologue
    .line 246
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$1;->this$0:Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy$1;->val$marker:Lqunar/sdk/mapapi/entity/QMarker;

    iget-object v1, v1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    const/4 v2, 0x1

    const/16 v3, 0x12c

    # invokes: Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->mapCenter(Lqunar/sdk/location/QLocation;ZI)V
    invoke-static {v0, v1, v2, v3}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;->access$000(Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;Lqunar/sdk/location/QLocation;ZI)V

    .line 247
    return-void
.end method
