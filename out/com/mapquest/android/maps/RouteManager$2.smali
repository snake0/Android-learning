.class Lcom/mapquest/android/maps/RouteManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/RouteManager;

.field final synthetic val$index:I

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/RouteManager;ILjava/util/List;)V
    .registers 4

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager$2;->this$0:Lcom/mapquest/android/maps/RouteManager;

    iput p2, p0, Lcom/mapquest/android/maps/RouteManager$2;->val$index:I

    iput-object p3, p0, Lcom/mapquest/android/maps/RouteManager$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager$2;->this$0:Lcom/mapquest/android/maps/RouteManager;

    # getter for: Lcom/mapquest/android/maps/RouteManager;->routeRequestLocations:Ljava/util/List;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteManager;->access$200(Lcom/mapquest/android/maps/RouteManager;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/mapquest/android/maps/RouteManager$2;->val$index:I

    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager$2;->val$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Location;->locationJSON:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager$2;->this$0:Lcom/mapquest/android/maps/RouteManager;

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager$2;->this$0:Lcom/mapquest/android/maps/RouteManager;

    # getter for: Lcom/mapquest/android/maps/RouteManager;->routeRequestLocations:Ljava/util/List;
    invoke-static {v1}, Lcom/mapquest/android/maps/RouteManager;->access$200(Lcom/mapquest/android/maps/RouteManager;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/RouteManager;->createRoute(Ljava/util/List;)V

    .line 295
    return-void
.end method
