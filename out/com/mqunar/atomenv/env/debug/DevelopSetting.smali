.class public Lcom/mqunar/atomenv/env/debug/DevelopSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/atomenv/env/ISettings;


# static fields
.field private static a:Lcom/mqunar/atomenv/env/debug/DevelopSetting;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Lcom/mqunar/atomenv/env/debug/DevelopSetting;

    invoke-direct {v0}, Lcom/mqunar/atomenv/env/debug/DevelopSetting;-><init>()V

    sput-object v0, Lcom/mqunar/atomenv/env/debug/DevelopSetting;->a:Lcom/mqunar/atomenv/env/debug/DevelopSetting;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/mqunar/atomenv/env/debug/DevelopSetting;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/mqunar/atomenv/env/debug/DevelopSetting;->a:Lcom/mqunar/atomenv/env/debug/DevelopSetting;

    return-object v0
.end method


# virtual methods
.method public cleanLocation()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method public getBaiduVoiceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBool()Z
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getCarAboutTouchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarPullUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHotDogUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHotelUploadPicUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInt1()I
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getInt2()I
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalLifeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOuterCarUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeWap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplashAdTime()I
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public getSplashTime()I
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public isShowBackButton()Z
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isShowBaiduVoidLog()Z
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isShowNetWorkLog()Z
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public isShowUELog()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public removeInt1()V
    .registers 1

    .prologue
    .line 178
    return-void
.end method

.method public removeInt2()V
    .registers 1

    .prologue
    .line 193
    return-void
.end method

.method public setBaiduVoiceUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    return-void
.end method

.method public setBool(Z)V
    .registers 2

    .prologue
    .line 203
    return-void
.end method

.method public setCarPullUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    return-void
.end method

.method public setCarTouchUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 163
    return-void
.end method

.method public setHotDogUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    return-void
.end method

.method public setHotelPicUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    return-void
.end method

.method public setInt1(I)V
    .registers 2

    .prologue
    .line 173
    return-void
.end method

.method public setInt2(I)V
    .registers 2

    .prologue
    .line 188
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 113
    return-void
.end method

.method public setLocalLifeUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 103
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 248
    return-void
.end method

.method public setOuterCarUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 93
    return-void
.end method

.method public setPayUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 143
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 293
    return-void
.end method

.method public setSchemeWap(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 303
    return-void
.end method

.method public setShowBackButton(Z)V
    .registers 2

    .prologue
    .line 223
    return-void
.end method

.method public setShowBaiduVoidLog(Z)V
    .registers 2

    .prologue
    .line 243
    return-void
.end method

.method public setShowNetWorkLog(Z)V
    .registers 2

    .prologue
    .line 263
    return-void
.end method

.method public setShowUELog(Z)V
    .registers 2

    .prologue
    .line 233
    return-void
.end method

.method public setSplashAdTime(I)V
    .registers 2

    .prologue
    .line 283
    return-void
.end method

.method public setSplashTime(I)V
    .registers 2

    .prologue
    .line 273
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 213
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 133
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 153
    return-void
.end method
