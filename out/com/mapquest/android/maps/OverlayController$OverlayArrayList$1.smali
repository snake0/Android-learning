.class Lcom/mapquest/android/maps/OverlayController$OverlayArrayList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList$1;->this$1:Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 240
    check-cast p1, Lcom/mapquest/android/maps/Overlay;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Overlay;->getZIndex()I

    move-result v0

    .line 241
    check-cast p2, Lcom/mapquest/android/maps/Overlay;

    invoke-virtual {p2}, Lcom/mapquest/android/maps/Overlay;->getZIndex()I

    move-result v1

    .line 242
    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    if-ge v0, v1, :cond_14

    const/4 v0, -0x1

    goto :goto_f

    :cond_14
    const/4 v0, 0x1

    goto :goto_f
.end method
