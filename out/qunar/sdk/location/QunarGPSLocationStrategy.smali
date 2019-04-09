.class abstract Lqunar/sdk/location/QunarGPSLocationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static newestGPS:Lqunar/sdk/location/QLocation;


# instance fields
.field protected context:Landroid/content/Context;

.field protected distance:F

.field protected eLoc:Lqunar/sdk/location/QLocation;

.field protected locationListener:Lqunar/sdk/location/QunarGPSLocationListener;

.field protected option:Lqunar/sdk/location/QunarGPSOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/location/QunarGPSLocationStrategy;->distance:F

    .line 20
    iput-object p1, p0, Lqunar/sdk/location/QunarGPSLocationStrategy;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public abstract forceStopLocation()V
.end method

.method public abstract getCacheLocation(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationType()Lqunar/sdk/location/QunarGPSLocationType;
.end method

.method protected abstract pauseLocation()V
.end method

.method public setELocationListener(Lqunar/sdk/location/QunarGPSLocationListener;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lqunar/sdk/location/QunarGPSLocationStrategy;->locationListener:Lqunar/sdk/location/QunarGPSLocationListener;

    .line 29
    return-void
.end method

.method public setOption(Lqunar/sdk/location/QunarGPSOption;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lqunar/sdk/location/QunarGPSLocationStrategy;->option:Lqunar/sdk/location/QunarGPSOption;

    .line 25
    return-void
.end method

.method protected abstract startGPSLoction()V
.end method

.method protected abstract stopLocation()V
.end method
