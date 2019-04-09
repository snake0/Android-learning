.class public Lqunar/sdk/mapapi/gaodeMapImp/GaodeMapView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/IMapView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitOptions()Lqunar/sdk/mapapi/QunarMapInitOptions;
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 42
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method
