.class Lcom/mapquest/android/maps/ItemizedOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/ItemizedOverlay;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/ItemizedOverlay;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mapquest/android/maps/ItemizedOverlay$1;->this$0:Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    .prologue
    .line 254
    check-cast p1, Ljava/lang/Integer;

    .line 255
    check-cast p2, Ljava/lang/Integer;

    .line 256
    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay$1;->this$0:Lcom/mapquest/android/maps/ItemizedOverlay;

    iget-object v0, v0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/mapquest/android/maps/ItemizedOverlay$1;->this$0:Lcom/mapquest/android/maps/ItemizedOverlay;

    iget-object v0, v0, Lcom/mapquest/android/maps/ItemizedOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
