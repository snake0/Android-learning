.class public Lqunar/sdk/location/QLocation;
.super Landroid/location/Location;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private country:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private isAbroad:Z


# direct methods
.method public constructor <init>(DD)V
    .registers 6

    .prologue
    .line 34
    const-string v0, "bmap"

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/QLocation;->country:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/QLocation;->isAbroad:Z

    .line 35
    invoke-virtual {p0, p1, p2}, Lqunar/sdk/location/QLocation;->setLatitude(D)V

    .line 36
    invoke-virtual {p0, p3, p4}, Lqunar/sdk/location/QLocation;->setLongitude(D)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .registers 3

    .prologue
    .line 24
    const-string v0, "bmap"

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/QLocation;->country:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/QLocation;->isAbroad:Z

    .line 25
    invoke-virtual {p0, p1}, Lqunar/sdk/location/QLocation;->set(Lcom/baidu/location/BDLocation;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/QLocation;->country:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/QLocation;->isAbroad:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lqunar/sdk/location/QLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAbroad()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lqunar/sdk/location/QLocation;->isAbroad:Z

    return v0
.end method

.method public set(Lcom/baidu/location/BDLocation;)V
    .registers 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->reset()V

    .line 41
    const-string v0, "bmap"

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setProvider(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqunar/sdk/location/QLocation;->setLatitude(D)V

    .line 43
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqunar/sdk/location/QLocation;->setLongitude(D)V

    .line 44
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqunar/sdk/location/QLocation;->setAltitude(D)V

    .line 45
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setAccuracy(F)V

    .line 47
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v0

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setBearing(F)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqunar/sdk/location/QLocation;->setTime(J)V

    .line 49
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 50
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v0

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setSpeed(F)V

    .line 54
    :goto_3f
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setCountry(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setCountryCode(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_65

    const-string v0, ""

    iget-object v1, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "0"

    iget-object v1, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 57
    :cond_65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setisAbroad(Z)V

    .line 62
    :goto_69
    return-void

    .line 52
    :cond_6a
    invoke-virtual {p0}, Lqunar/sdk/location/QLocation;->removeSpeed()V

    goto :goto_3f

    .line 59
    :cond_6e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lqunar/sdk/location/QLocation;->setisAbroad(Z)V

    goto :goto_69
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lqunar/sdk/location/QLocation;->country:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lqunar/sdk/location/QLocation;->countryCode:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setisAbroad(Z)V
    .registers 2

    .prologue
    .line 81
    iput-boolean p1, p0, Lqunar/sdk/location/QLocation;->isAbroad:Z

    .line 82
    return-void
.end method
