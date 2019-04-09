.class public Lcom/mapquest/android/maps/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private platformApiKey:Ljava/lang/String;

.field private satellite:Z

.field private satelliteLabeled:Z

.field private trafficMinimumZoomLevel:I

.field private trafficURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Configuration;->satelliteLabeled:Z

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/Configuration;->satellite:Z

    .line 7
    iput-object v1, p0, Lcom/mapquest/android/maps/Configuration;->apiKey:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/mapquest/android/maps/Configuration;->platformApiKey:Ljava/lang/String;

    .line 9
    const/4 v0, 0x5

    iput v0, p0, Lcom/mapquest/android/maps/Configuration;->trafficMinimumZoomLevel:I

    .line 10
    const-string v0, "http://www.mapquestapi.com/traffic/v1"

    iput-object v0, p0, Lcom/mapquest/android/maps/Configuration;->trafficURL:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/mapquest/android/maps/Configuration;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 14
    return-void
.end method


# virtual methods
.method getApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mapquest/android/maps/Configuration;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method getPlatformApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mapquest/android/maps/Configuration;->platformApiKey:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/mapquest/android/maps/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/mapquest/android/maps/Configuration;->platformApiKey:Ljava/lang/String;

    goto :goto_8
.end method

.method getTrafficMinimumZoomLevel()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/mapquest/android/maps/Configuration;->trafficMinimumZoomLevel:I

    return v0
.end method

.method getTrafficURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mapquest/android/maps/Configuration;->trafficURL:Ljava/lang/String;

    return-object v0
.end method

.method public isSatellite()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mapquest/android/maps/Configuration;->satellite:Z

    return v0
.end method

.method public isSatelliteLabeled()Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/mapquest/android/maps/Configuration;->satelliteLabeled:Z

    return v0
.end method

.method setApiKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mapquest/android/maps/Configuration;->apiKey:Ljava/lang/String;

    .line 22
    return-void
.end method

.method setPlatformApiKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mapquest/android/maps/Configuration;->platformApiKey:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSatellite(Z)V
    .registers 5

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mapquest/android/maps/Configuration;->satellite:Z

    .line 41
    iget-object v0, p0, Lcom/mapquest/android/maps/Configuration;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-boolean v1, p0, Lcom/mapquest/android/maps/Configuration;->satellite:Z

    iget-boolean v2, p0, Lcom/mapquest/android/maps/Configuration;->satelliteLabeled:Z

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/MapView;->setSatellite(ZZ)V

    .line 42
    return-void
.end method

.method public setSatelliteLabeled(Z)V
    .registers 5

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/mapquest/android/maps/Configuration;->satelliteLabeled:Z

    if-eq v0, p1, :cond_f

    .line 30
    iput-boolean p1, p0, Lcom/mapquest/android/maps/Configuration;->satelliteLabeled:Z

    .line 31
    iget-object v0, p0, Lcom/mapquest/android/maps/Configuration;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-boolean v1, p0, Lcom/mapquest/android/maps/Configuration;->satellite:Z

    iget-boolean v2, p0, Lcom/mapquest/android/maps/Configuration;->satelliteLabeled:Z

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/MapView;->setSatellite(ZZ)V

    .line 33
    :cond_f
    return-void
.end method

.method setTrafficMinimumZoomLevel(I)V
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/mapquest/android/maps/Configuration;->trafficMinimumZoomLevel:I

    .line 50
    return-void
.end method

.method setTrafficURL(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mapquest/android/maps/Configuration;->trafficURL:Ljava/lang/String;

    .line 58
    return-void
.end method
