.class public final Lcom/baidu/location/LocationClientOption;
.super Ljava/lang/Object;


# static fields
.field public static final GpsFirst:I = 0x1

.field public static final GpsOnly:I = 0x3

.field public static final LOC_SENSITIVITY_HIGHT:I = 0x1

.field public static final LOC_SENSITIVITY_LOW:I = 0x3

.field public static final LOC_SENSITIVITY_MIDDLE:I = 0x2

.field public static final MIN_AUTO_NOTIFY_INTERVAL:I = 0x2710

.field public static final MIN_SCAN_SPAN:I = 0x3e8

.field public static final NetWorkFirst:I = 0x2


# instance fields
.field protected a:Lcom/baidu/location/LocationClientOption$LocationMode;

.field public addrType:Ljava/lang/String;

.field public autoNotifyLocSensitivity:F

.field public autoNotifyMaxInterval:I

.field public autoNotifyMinDistance:I

.field public autoNotifyMinTimeInterval:I

.field public coorType:Ljava/lang/String;

.field public disableLocCache:Z

.field public enableSimulateGps:Z

.field public isIgnoreCacheException:Z

.field public isIgnoreKillProcess:Z

.field public isNeedAltitude:Z

.field public isNeedAptag:Z

.field public isNeedAptagd:Z

.field public isNeedPoiRegion:Z

.field public isNeedRegular:Z

.field public location_change_notify:Z

.field public mIsNeedDeviceDirect:Z

.field public openGps:Z

.field public priority:I

.field public prodName:Ljava/lang/String;

.field public scanSpan:I

.field public serviceName:Ljava/lang/String;

.field public timeOut:I

.field public wifiCacheTimeOut:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    const-string v0, "detail"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->timeOut:I

    const-string v0, "SDK6.0"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    const-string v0, "com.baidu.location.service_v2.9"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->serviceName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/LocationClientOption;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    const-string v0, "detail"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->timeOut:I

    const-string v0, "SDK6.0"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    const-string v0, "com.baidu.location.service_v2.9"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->serviceName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->openGps:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->timeOut:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->timeOut:I

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->priority:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->serviceName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->a:Lcom/baidu/location/LocationClientOption$LocationMode;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Lcom/baidu/location/LocationClientOption$LocationMode;

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    return-void
.end method


# virtual methods
.method public SetIgnoreCacheException(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    return-void
.end method

.method a()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    return v0
.end method

.method b()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    return v0
.end method

.method public disableCache(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    return-void
.end method

.method public getAddrType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoNotifyMinDistance()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    return v0
.end method

.method public getAutoNotifyMinTimeInterval()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    return v0
.end method

.method public getCoorType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationMode()Lcom/baidu/location/LocationClientOption$LocationMode;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Lcom/baidu/location/LocationClientOption$LocationMode;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    return v0
.end method

.method public getProdName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    return-object v0
.end method

.method public getScanSpan()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->timeOut:I

    return v0
.end method

.method public isDisableCache()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    return v0
.end method

.method public isLocationNotify()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    return v0
.end method

.method public isOpenGps()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    return v0
.end method

.method public optionEquals(Lcom/baidu/location/LocationClientOption;)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->openGps:Z

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->timeOut:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->timeOut:I

    if-ne v0, v1, :cond_9a

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->priority:I

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->disableLocCache:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    if-ne v0, v1, :cond_9a

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Lcom/baidu/location/LocationClientOption$LocationMode;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->a:Lcom/baidu/location/LocationClientOption$LocationMode;

    if-ne v0, v1, :cond_9a

    const/4 v0, 0x1

    :goto_99
    return v0

    :cond_9a
    const/4 v0, 0x0

    goto :goto_99
.end method

.method public setAddrType(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    goto :goto_6

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    goto :goto_6
.end method

.method public setCoorType(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "bd09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method public setEnableSimulateGps(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    return-void
.end method

.method public setIgnoreKillProcess(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    return-void
.end method

.method public setIsNeedAddress(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "all"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    :goto_6
    return-void

    :cond_7
    const-string v0, "noaddr"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    goto :goto_6
.end method

.method public setIsNeedAltitude(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    return-void
.end method

.method public setIsNeedLocationDescribe(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    return-void
.end method

.method public setIsNeedLocationPoiList(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    return-void
.end method

.method public setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V
    .registers 5

    const/4 v2, 0x1

    sget-object v0, Lcom/baidu/location/LocationClientOption$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/location/LocationClientOption$LocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal this mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    iput v2, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    :goto_29
    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->a:Lcom/baidu/location/LocationClientOption$LocationMode;

    return-void

    :pswitch_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    goto :goto_29

    :pswitch_33
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    goto :goto_29

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2c
        :pswitch_33
    .end packed-switch
.end method

.method public setLocationNotify(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    return-void
.end method

.method public setNeedDeviceDirect(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    return-void
.end method

.method public setOpenAutoNotifyMode()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/baidu/location/LocationClientOption;->setOpenAutoNotifyMode(III)V

    return-void
.end method

.method public setOpenAutoNotifyMode(III)V
    .registers 9

    const/16 v4, 0x2710

    const v0, 0x2bf20

    if-le p1, v0, :cond_9

    add-int/lit16 v0, p1, 0x3e8

    :cond_9
    if-ge v0, v4, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal this maxLocInterval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , maxLocInterval must >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    packed-switch p3, :pswitch_data_62

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal this locSensitivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4a
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    :goto_4e
    iput v0, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMaxInterval:I

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinTimeInterval:I

    iput p2, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyMinDistance:I

    return-void

    :pswitch_55
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    goto :goto_4e

    :pswitch_5b
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->autoNotifyLocSensitivity:F

    goto :goto_4e

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_55
        :pswitch_5b
    .end packed-switch
.end method

.method public setOpenGps(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    return-void
.end method

.method public setPriority(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    :cond_6
    iput p1, p0, Lcom/baidu/location/LocationClientOption;->priority:I

    :cond_8
    return-void
.end method

.method public setProdName(Ljava/lang/String;)V
    .registers 4

    const/16 v1, 0x40

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_d
    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    return-void
.end method

.method public setScanSpan(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    return-void
.end method

.method public setSema(ZZZ)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    iput-boolean p2, p0, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    iput-boolean p3, p0, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public setTimeOut(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->timeOut:I

    return-void
.end method

.method public setWifiCacheTimeOut(I)V
    .registers 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_6

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    :cond_6
    return-void
.end method
