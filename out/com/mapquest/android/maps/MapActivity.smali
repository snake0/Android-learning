.class public abstract Lcom/mapquest/android/maps/MapActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.mapquest.android.maps.mapactivity"


# instance fields
.field private mapViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapquest/android/maps/MapView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapActivity;->mapViews:Ljava/util/ArrayList;

    .line 13
    return-void
.end method

.method private copyMapViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapquest/android/maps/MapView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mapquest/android/maps/MapActivity;->mapViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method addMapView(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mapquest/android/maps/MapActivity;->mapViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method getKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mapquest/android/maps/MapActivity;->mapViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 97
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, ""

    goto :goto_1a
.end method

.method protected isLocationDisplayed()Z
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapActivity;->copyMapViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 18
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 20
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 22
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 24
    instance-of v0, v0, Lcom/mapquest/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_1c

    .line 25
    const/4 v0, 0x1

    .line 30
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected abstract isRouteDisplayed()Z
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapActivity;->copyMapViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 71
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 73
    if-eqz v0, :cond_8

    .line 74
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->destroy()V

    goto :goto_8

    .line 78
    :cond_1a
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapActivity;->copyMapViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 40
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onPause()V

    goto :goto_8

    .line 43
    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 44
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapActivity;->copyMapViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 51
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onResume()V

    goto :goto_8

    .line 54
    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapActivity;->copyMapViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 62
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onStop()V

    goto :goto_8

    .line 65
    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 66
    return-void
.end method

.method removeMapView(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mapquest/android/maps/MapActivity;->mapViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
