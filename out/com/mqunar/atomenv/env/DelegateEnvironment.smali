.class public Lcom/mqunar/atomenv/env/DelegateEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/atomenv/IEnvironment;


# instance fields
.field public environment:Lcom/mqunar/atomenv/IEnvironment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/atomenv/IEnvironment;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    .line 20
    return-void
.end method


# virtual methods
.method public getBaiduVoiceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBaiduVoiceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBetaLatitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBetaLongitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBetaString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarAboutTouchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getCarAboutTouchUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarPullUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getCarPullUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getCid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/mqunar/atomenv/model/Config;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getConfig()Lcom/mqunar/atomenv/model/Config;

    move-result-object v0

    return-object v0
.end method

.method public getConfigJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getConfigJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDBPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getDBPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getGid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHotDogUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getHotDogUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHotelUploadPicUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getHotelUploadPicUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalLifeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getLocalLifeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOuterCarUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getOuterCarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getPayUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getPid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeWap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSchemeWap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()Lcom/mqunar/atomenv/model/ServerTime;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getServerTime()Lcom/mqunar/atomenv/model/ServerTime;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplashAdUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSplashAdUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplashWebUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSplashWebUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getVid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWXAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getWXAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoSwapImage()Z
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isAutoSwapImage()Z

    move-result v0

    return v0
.end method

.method public isBeta()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isBeta()Z

    move-result v0

    return v0
.end method

.method public isDev()Z
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isDev()Z

    move-result v0

    return v0
.end method

.method public isRelease()Z
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isRelease()Z

    move-result v0

    return v0
.end method

.method public putAutoSwapImage(Z)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putAutoSwapImage(Z)V

    .line 89
    return-void
.end method

.method public putDBPath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putDBPath(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public putSplashAdUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putSplashAdUrl(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public putTint(J)V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/atomenv/IEnvironment;->putTint(J)V

    .line 103
    return-void
.end method

.method public putTstr(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putTstr(Ljava/lang/String;)V

    .line 108
    return-void
.end method
