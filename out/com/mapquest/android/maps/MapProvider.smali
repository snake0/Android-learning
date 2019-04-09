.class Lcom/mapquest/android/maps/MapProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

.field public static OSM:Lcom/mapquest/android/maps/MapProvider;

.field public static TOMTOM:Lcom/mapquest/android/maps/MapProvider;


# instance fields
.field protected geocodeUrl:Ljava/lang/String;

.field protected mapConfigUrl:Ljava/lang/String;

.field protected platformApiKey:Ljava/lang/String;

.field protected tileFallbackUrl:Ljava/lang/String;

.field protected trafficUrl:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4
    new-instance v0, Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "OSM"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/MapProvider;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    .line 5
    new-instance v0, Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "MAPQUEST"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/MapProvider;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    .line 6
    new-instance v0, Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "TOMTOM"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/MapProvider;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    .line 62
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "http://otile1.mqcdn.com/tiles/1.0.0/"

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->tileFallbackUrl:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, ""

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->trafficUrl:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->OSM:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, ""

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->platformApiKey:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "http://mtile01.mqcdn.com/tiles/1.0.0/vy/"

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->tileFallbackUrl:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "http://www.mapquestapi.com/traffic/v1"

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->trafficUrl:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->MAPQUEST:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "Amjtd%7Cluu2216rn1%2C8w%3Do5-lz7l5"

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->platformApiKey:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "http://ttiles01.mqcdn.com/tiles/1.0.0/vy/"

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->tileFallbackUrl:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "http://traffic.tt.mapquest.com/traffic/v1"

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->trafficUrl:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/mapquest/android/maps/MapProvider;->TOMTOM:Lcom/mapquest/android/maps/MapProvider;

    const-string v1, "Cmjtd%7Cluua2qu2nd%2Cb5%3Do5-gzb0"

    iput-object v1, v0, Lcom/mapquest/android/maps/MapProvider;->platformApiKey:Ljava/lang/String;

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->mapConfigUrl:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->tileFallbackUrl:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->geocodeUrl:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->trafficUrl:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->platformApiKey:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/mapquest/android/maps/MapProvider;->value:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    if-ne p0, p1, :cond_5

    .line 41
    :cond_4
    :goto_4
    return v0

    .line 29
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 30
    goto :goto_4

    .line 32
    :cond_9
    check-cast p1, Lcom/mapquest/android/maps/MapProvider;

    .line 33
    iget-object v2, p0, Lcom/mapquest/android/maps/MapProvider;->value:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 34
    iget-object v2, p1, Lcom/mapquest/android/maps/MapProvider;->value:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 35
    goto :goto_4

    .line 37
    :cond_15
    iget-object v2, p0, Lcom/mapquest/android/maps/MapProvider;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/mapquest/android/maps/MapProvider;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 38
    goto :goto_4
.end method

.method public getGeocodeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->geocodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->platformApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTileFallbackUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->tileFallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafficUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->trafficUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mapquest/android/maps/MapProvider;->value:Ljava/lang/String;

    return-object v0
.end method
