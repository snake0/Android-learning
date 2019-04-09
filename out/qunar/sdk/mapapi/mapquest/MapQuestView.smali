.class public Lqunar/sdk/mapapi/mapquest/MapQuestView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/IMapView;


# static fields
.field public static MAPQUEST_KEY:Ljava/lang/String;


# instance fields
.field private initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

.field private mapView:Lcom/mapquest/android/maps/MapView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, ""

    sput-object v0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->MAPQUEST_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqunar/sdk/mapapi/QunarMapInitOptions;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 28
    iput-object p2, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    .line 31
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 33
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.mapquest.maps.API_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1d} :catch_46

    move-result-object v0

    .line 38
    :goto_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 39
    sput-object v0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->MAPQUEST_KEY:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/mapquest/android/maps/MapView;

    invoke-direct {v1, p1, v0}, Lcom/mapquest/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 44
    :goto_2d
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->stopPanning()V

    .line 45
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-boolean v1, p2, Lqunar/sdk/mapapi/QunarMapInitOptions;->zoomControlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 46
    return-void

    .line 42
    :cond_3e
    new-instance v0, Lcom/mapquest/android/maps/MapView;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    goto :goto_2d

    .line 34
    :catch_46
    move-exception v1

    goto :goto_1e
.end method


# virtual methods
.method public getInitOptions()Lqunar/sdk/mapapi/QunarMapInitOptions;
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    if-nez v0, :cond_11

    .line 91
    new-instance v0, Lqunar/sdk/mapapi/QunarMapInitOptions;

    invoke-direct {v0}, Lqunar/sdk/mapapi/QunarMapInitOptions;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    .line 92
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->MAPQUEST:Lqunar/sdk/mapapi/QunarMapType;

    iput-object v1, v0, Lqunar/sdk/mapapi/QunarMapInitOptions;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 94
    :cond_11
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    return-object v0
.end method

.method public bridge synthetic getMapView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/MapQuestView;->getMapView()Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    return-object v0
.end method

.method public getMapView()Lcom/mapquest/android/maps/MapView;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->destroy()V

    .line 58
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onPause()V

    .line 65
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onResume()V

    .line 72
    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onStop()V

    .line 86
    :cond_9
    return-void
.end method
