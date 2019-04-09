.class public Lqunar/sdk/location/TempLoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public country:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public isAbroad:Z

.field public mLatitude:D

.field public mLongitude:D

.field public mTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lqunar/sdk/location/TempLoc;->mLatitude:D

    .line 9
    iput-wide v0, p0, Lqunar/sdk/location/TempLoc;->mLongitude:D

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lqunar/sdk/location/TempLoc;->mTime:J

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/TempLoc;->country:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/TempLoc;->countryCode:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/TempLoc;->isAbroad:Z

    .line 17
    return-void
.end method

.method public constructor <init>(DDJ)V
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lqunar/sdk/location/TempLoc;->mLatitude:D

    .line 9
    iput-wide v0, p0, Lqunar/sdk/location/TempLoc;->mLongitude:D

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lqunar/sdk/location/TempLoc;->mTime:J

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/TempLoc;->country:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/TempLoc;->countryCode:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/TempLoc;->isAbroad:Z

    .line 20
    iput-wide p1, p0, Lqunar/sdk/location/TempLoc;->mLatitude:D

    .line 21
    iput-wide p3, p0, Lqunar/sdk/location/TempLoc;->mLongitude:D

    .line 22
    iput-wide p5, p0, Lqunar/sdk/location/TempLoc;->mTime:J

    .line 23
    return-void
.end method
