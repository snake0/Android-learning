.class Lcom/mapquest/android/maps/MapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView$1;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$1;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->mapController:Lcom/mapquest/android/maps/MapController;
    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->access$000(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->zoomIn()Z

    .line 323
    return-void
.end method
