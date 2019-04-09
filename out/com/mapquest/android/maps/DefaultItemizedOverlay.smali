.class public Lcom/mapquest/android/maps/DefaultItemizedOverlay;
.super Lcom/mapquest/android/maps/ItemizedOverlay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapquest/android/maps/ItemizedOverlay",
        "<",
        "Lcom/mapquest/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultMarker:Landroid/graphics/drawable/Drawable;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 13
    invoke-static {p1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->items:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->defaultMarker:Landroid/graphics/drawable/Drawable;

    .line 15
    return-void
.end method


# virtual methods
.method public addItem(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 3

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_f

    .line 27
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->defaultMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_f
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->populate()V

    .line 32
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/mapquest/android/maps/ItemizedOverlay;->clear()V

    .line 45
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    return-void
.end method

.method protected createItem(I)Lcom/mapquest/android/maps/OverlayItem;
    .registers 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    return-object v0
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->clear()V

    .line 50
    return-void
.end method

.method protected getIndexToDraw(I)I
    .registers 2

    .prologue
    .line 40
    return p1
.end method

.method protected onTap(I)Z
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/ItemizedOverlay;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v0, :cond_11

    .line 59
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public removeItem(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->populate()V

    .line 37
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
