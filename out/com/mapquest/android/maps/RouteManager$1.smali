.class Lcom/mapquest/android/maps/RouteManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/RouteManager;

.field final synthetic val$routeResponse:Lcom/mapquest/android/maps/RouteResponse;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/RouteManager;Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 3

    .prologue
    .line 283
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager$1;->this$0:Lcom/mapquest/android/maps/RouteManager;

    iput-object p2, p0, Lcom/mapquest/android/maps/RouteManager$1;->val$routeResponse:Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager$1;->this$0:Lcom/mapquest/android/maps/RouteManager;

    # getter for: Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteManager;->access$100(Lcom/mapquest/android/maps/RouteManager;)Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 286
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager$1;->this$0:Lcom/mapquest/android/maps/RouteManager;

    # getter for: Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteManager;->access$100(Lcom/mapquest/android/maps/RouteManager;)Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager$1;->val$routeResponse:Lcom/mapquest/android/maps/RouteResponse;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/RouteManager$RouteCallback;->onError(Lcom/mapquest/android/maps/RouteResponse;)V

    .line 289
    :cond_13
    return-void
.end method
