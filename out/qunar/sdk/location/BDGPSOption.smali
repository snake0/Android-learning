.class public Lqunar/sdk/location/BDGPSOption;
.super Lqunar/sdk/location/QunarGPSOption;
.source "SourceFile"


# instance fields
.field private coorType:Lqunar/sdk/location/BDGPSCoorType;

.field private locationMode:Lqunar/sdk/location/BDGPSLocationMode;

.field private openGps:Z


# direct methods
.method public constructor <init>(ZLqunar/sdk/location/BDGPSCoorType;Lqunar/sdk/location/BDGPSLocationMode;II)V
    .registers 7

    .prologue
    .line 15
    invoke-direct {p0}, Lqunar/sdk/location/QunarGPSOption;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/BDGPSOption;->openGps:Z

    .line 16
    iput-boolean p1, p0, Lqunar/sdk/location/BDGPSOption;->openGps:Z

    .line 17
    iput-object p2, p0, Lqunar/sdk/location/BDGPSOption;->coorType:Lqunar/sdk/location/BDGPSCoorType;

    .line 18
    iput-object p3, p0, Lqunar/sdk/location/BDGPSOption;->locationMode:Lqunar/sdk/location/BDGPSLocationMode;

    .line 19
    iput p4, p0, Lqunar/sdk/location/BDGPSOption;->scanSpan:I

    .line 20
    iput p5, p0, Lqunar/sdk/location/BDGPSOption;->timeout:I

    .line 21
    return-void
.end method


# virtual methods
.method public getCoorType()Lqunar/sdk/location/BDGPSCoorType;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lqunar/sdk/location/BDGPSOption;->coorType:Lqunar/sdk/location/BDGPSCoorType;

    return-object v0
.end method

.method public getLocationMode()Lqunar/sdk/location/BDGPSLocationMode;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lqunar/sdk/location/BDGPSOption;->locationMode:Lqunar/sdk/location/BDGPSLocationMode;

    return-object v0
.end method

.method public isOpenGps()Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lqunar/sdk/location/BDGPSOption;->openGps:Z

    return v0
.end method
