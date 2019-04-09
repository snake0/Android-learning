.class public Lqunar/sdk/location/LocationFacade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/location/QunarGPSLocationListener;


# static fields
.field static final LOC:Ljava/lang/String; = "loc"

.field private static final REQUEST_LOCATION:I = 0x34

.field private static final SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

.field private static debugLoc:Lqunar/sdk/location/QLocation;

.field private static isDebugModle:Z


# instance fields
.field private context:Landroid/content/Context;

.field private eListener:Lqunar/sdk/location/QunarGPSLocationListener;

.field private gpsCoorType:Lqunar/sdk/location/BDGPSCoorType;

.field private hasRequestPermission:Z

.field private locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

.field protected mDestroy:Z

.field private mHandler:Landroid/os/Handler;

.field protected mPause:Z

.field protected mResume:Z

.field private msgId:I

.field private stopRequestMyLocOnGet:Z

.field private timeout:J

.field private timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lqunar/sdk/location/LocationFacade;->isDebugModle:Z

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lqunar/sdk/location/LocationFacade;->debugLoc:Lqunar/sdk/location/QLocation;

    .line 34
    new-instance v0, Lqunar/sdk/location/LocationFacade$LocSub;

    invoke-direct {v0}, Lqunar/sdk/location/LocationFacade$LocSub;-><init>()V

    sput-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqunar/sdk/location/QunarGPSLocationListener;Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lqunar/sdk/location/LocationFacade;->mHandler:Landroid/os/Handler;

    .line 35
    iput-boolean v2, p0, Lqunar/sdk/location/LocationFacade;->stopRequestMyLocOnGet:Z

    .line 36
    iput-boolean v2, p0, Lqunar/sdk/location/LocationFacade;->mResume:Z

    .line 37
    iput-boolean v2, p0, Lqunar/sdk/location/LocationFacade;->mPause:Z

    .line 38
    iput-boolean v3, p0, Lqunar/sdk/location/LocationFacade;->mDestroy:Z

    .line 41
    sget-object v0, Lqunar/sdk/location/BDGPSCoorType;->JWDTYPE:Lqunar/sdk/location/BDGPSCoorType;

    iput-object v0, p0, Lqunar/sdk/location/LocationFacade;->gpsCoorType:Lqunar/sdk/location/BDGPSCoorType;

    .line 43
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lqunar/sdk/location/LocationFacade;->timeout:J

    .line 45
    iput-boolean v3, p0, Lqunar/sdk/location/LocationFacade;->hasRequestPermission:Z

    .line 56
    iput-object p1, p0, Lqunar/sdk/location/LocationFacade;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    .line 58
    if-eqz p3, :cond_4f

    const-string v0, "loc"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 59
    const-string v0, "loc"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 60
    if-eqz v0, :cond_49

    .line 66
    :try_start_3a
    new-instance v1, Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    sput-object v1, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;
    :try_end_49
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_49} :catch_4a

    .line 74
    :cond_49
    :goto_49
    return-void

    .line 67
    :catch_4a
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_49

    .line 72
    :cond_4f
    invoke-static {p1}, Lqunar/sdk/location/GPSStorageUtils;->getLastGPS(Landroid/content/Context;)Lqunar/sdk/location/QLocation;

    move-result-object v0

    sput-object v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    goto :goto_49
.end method

.method static synthetic access$000(Lqunar/sdk/location/LocationFacade;)Lqunar/sdk/location/QunarGPSLocationListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    return-object v0
.end method

.method static synthetic access$100()Lqunar/sdk/location/LocationFacade$LocSub;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    return-object v0
.end method

.method static synthetic access$200(Lqunar/sdk/location/LocationFacade;)Lqunar/sdk/location/QunarGPSLocationStrategy;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    return-object v0
.end method

.method public static clearGPSLocationListener()V
    .registers 1

    .prologue
    .line 353
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    invoke-virtual {v0}, Lqunar/sdk/location/LocationFacade$LocSub;->deleteObservers()V

    .line 354
    return-void
.end method

.method private createLocStrategy(Lqunar/sdk/location/QunarGPSLocationType;)Lqunar/sdk/location/QunarGPSLocationStrategy;
    .registers 5

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    sget-object v1, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$QunarGPSLocationType:[I

    invoke-virtual {p1}, Lqunar/sdk/location/QunarGPSLocationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 120
    :goto_c
    return-object v0

    .line 115
    :pswitch_d
    new-instance v0, Lqunar/sdk/location/BDLocationStrategy;

    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lqunar/sdk/location/BDLocationStrategy;-><init>(Landroid/content/Context;)V

    goto :goto_c

    .line 113
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public static getNewestCacheLocation()Lqunar/sdk/location/QLocation;
    .registers 1

    .prologue
    .line 319
    sget-object v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    return-object v0
.end method

.method public static gpsIsOpen(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 272
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 273
    const/4 v1, 0x0

    .line 275
    :try_start_9
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    move-result v0

    .line 278
    :goto_f
    return v0

    .line 276
    :catch_10
    move-exception v0

    move v0, v1

    goto :goto_f
.end method

.method public static initGPSCache(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Lqunar/sdk/location/GPSStorageUtils;->getLastGPS(Landroid/content/Context;)Lqunar/sdk/location/QLocation;

    move-result-object v0

    sput-object v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    .line 53
    return-void
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 286
    :try_start_9
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_1b

    move-result v1

    .line 291
    :goto_f
    :try_start_f
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_1e

    move-result v0

    .line 294
    :goto_15
    if-nez v1, :cond_19

    if-eqz v0, :cond_1a

    :cond_19
    const/4 v2, 0x1

    :cond_1a
    return v2

    .line 287
    :catch_1b
    move-exception v1

    move v1, v2

    goto :goto_f

    .line 292
    :catch_1e
    move-exception v0

    move v0, v2

    goto :goto_15
.end method

.method public static setDebug(ZLqunar/sdk/location/QLocation;)V
    .registers 3

    .prologue
    .line 96
    sput-boolean p0, Lqunar/sdk/location/LocationFacade;->isDebugModle:Z

    .line 97
    sput-object p1, Lqunar/sdk/location/LocationFacade;->debugLoc:Lqunar/sdk/location/QLocation;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    .line 99
    return-void
.end method

.method private startGPSLoation(JLqunar/sdk/location/QunarGPSLocationTimeoutCallback;)V
    .registers 6

    .prologue
    .line 220
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0}, Lqunar/sdk/location/QunarGPSLocationStrategy;->startGPSLoction()V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->mDestroy:Z

    .line 222
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->mHandler:Landroid/os/Handler;

    new-instance v1, Lqunar/sdk/location/LocationFacade$1;

    invoke-direct {v1, p0, p3}, Lqunar/sdk/location/LocationFacade$1;-><init>(Lqunar/sdk/location/LocationFacade;Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput v1, p0, Lqunar/sdk/location/LocationFacade;->msgId:I

    .line 238
    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    return-void
.end method

.method private startLoc(ZZI)Z
    .registers 10

    .prologue
    const/16 v4, 0x1388

    const/4 v1, 0x1

    .line 129
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    iget-object v2, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    invoke-virtual {v0, v2}, Lqunar/sdk/location/LocationFacade$LocSub;->addObserver(Lqunar/sdk/location/QunarGPSLocationListener;)V

    .line 140
    if-eqz p1, :cond_2d

    .line 142
    if-ltz p3, :cond_10

    if-nez p3, :cond_2e

    :cond_10
    const/16 v5, 0x7530

    .line 143
    :goto_12
    sget-object v0, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$BDGPSCoorType:[I

    iget-object v2, p0, Lqunar/sdk/location/LocationFacade;->gpsCoorType:Lqunar/sdk/location/BDGPSCoorType;

    invoke-virtual {v2}, Lqunar/sdk/location/BDGPSCoorType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_4e

    .line 156
    :goto_1f
    new-instance v0, Lqunar/sdk/location/BDGPSOption;

    sget-object v2, Lqunar/sdk/location/BDGPSCoorType;->JWDTYPE:Lqunar/sdk/location/BDGPSCoorType;

    sget-object v3, Lqunar/sdk/location/BDGPSLocationMode;->Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;

    invoke-direct/range {v0 .. v5}, Lqunar/sdk/location/BDGPSOption;-><init>(ZLqunar/sdk/location/BDGPSCoorType;Lqunar/sdk/location/BDGPSLocationMode;II)V

    .line 160
    :goto_28
    sget-object v2, Lqunar/sdk/location/QunarGPSLocationType;->BAIDU:Lqunar/sdk/location/QunarGPSLocationType;

    invoke-virtual {p0, v2, v0}, Lqunar/sdk/location/LocationFacade;->createLocStrategy(Lqunar/sdk/location/QunarGPSLocationType;Lqunar/sdk/location/QunarGPSOption;)V

    .line 162
    :cond_2d
    return v1

    :cond_2e
    move v5, p3

    .line 142
    goto :goto_12

    .line 145
    :pswitch_30
    new-instance v0, Lqunar/sdk/location/BDGPSOption;

    sget-object v2, Lqunar/sdk/location/BDGPSCoorType;->JWDTYPE:Lqunar/sdk/location/BDGPSCoorType;

    sget-object v3, Lqunar/sdk/location/BDGPSLocationMode;->Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;

    invoke-direct/range {v0 .. v5}, Lqunar/sdk/location/BDGPSOption;-><init>(ZLqunar/sdk/location/BDGPSCoorType;Lqunar/sdk/location/BDGPSLocationMode;II)V

    goto :goto_28

    .line 149
    :pswitch_3a
    new-instance v0, Lqunar/sdk/location/BDGPSOption;

    sget-object v2, Lqunar/sdk/location/BDGPSCoorType;->GCJTYPE:Lqunar/sdk/location/BDGPSCoorType;

    sget-object v3, Lqunar/sdk/location/BDGPSLocationMode;->Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;

    invoke-direct/range {v0 .. v5}, Lqunar/sdk/location/BDGPSOption;-><init>(ZLqunar/sdk/location/BDGPSCoorType;Lqunar/sdk/location/BDGPSLocationMode;II)V

    goto :goto_28

    .line 153
    :pswitch_44
    new-instance v0, Lqunar/sdk/location/BDGPSOption;

    sget-object v2, Lqunar/sdk/location/BDGPSCoorType;->MKTTYPE:Lqunar/sdk/location/BDGPSCoorType;

    sget-object v3, Lqunar/sdk/location/BDGPSLocationMode;->Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;

    invoke-direct/range {v0 .. v5}, Lqunar/sdk/location/BDGPSOption;-><init>(ZLqunar/sdk/location/BDGPSCoorType;Lqunar/sdk/location/BDGPSLocationMode;II)V

    goto :goto_1f

    .line 143
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_30
        :pswitch_3a
        :pswitch_44
    .end packed-switch
.end method


# virtual methods
.method public createLocStrategy(Lqunar/sdk/location/QunarGPSLocationType;Lqunar/sdk/location/QunarGPSOption;)V
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    if-nez v0, :cond_a

    .line 103
    invoke-direct {p0, p1}, Lqunar/sdk/location/LocationFacade;->createLocStrategy(Lqunar/sdk/location/QunarGPSLocationType;)Lqunar/sdk/location/QunarGPSLocationStrategy;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    .line 106
    :cond_a
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0, p0}, Lqunar/sdk/location/QunarGPSLocationStrategy;->setELocationListener(Lqunar/sdk/location/QunarGPSLocationListener;)V

    .line 107
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0, p2}, Lqunar/sdk/location/QunarGPSLocationStrategy;->setOption(Lqunar/sdk/location/QunarGPSOption;)V

    .line 108
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0, v1}, Lqunar/sdk/location/LocationFacade$LocSub;->addObserver(Lqunar/sdk/location/QunarGPSLocationStrategy;)V

    .line 109
    return-void
.end method

.method getCacheLocation(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0, p1}, Lqunar/sdk/location/QunarGPSLocationStrategy;->getCacheLocation(I)Ljava/util/List;

    move-result-object v0

    .line 268
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lqunar/sdk/location/LocationFacade;->stopPaused()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    invoke-virtual {p0}, Lqunar/sdk/location/LocationFacade;->pauseLoc()V

    .line 307
    :cond_9
    return-void
.end method

.method public onReceiveLocation(Lqunar/sdk/location/QLocation;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const-wide v2, 0x408f380000000000L    # 999.0

    const-wide/16 v4, 0x0

    .line 324
    sget-boolean v0, Lqunar/sdk/location/LocationFacade;->isDebugModle:Z

    if-eqz v0, :cond_3c

    .line 325
    sget-object v0, Lqunar/sdk/location/LocationFacade;->debugLoc:Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_27

    sget-object v0, Lqunar/sdk/location/LocationFacade;->debugLoc:Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_27

    .line 326
    sput-object v6, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    .line 327
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    iput-object v6, v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    .line 347
    :cond_26
    :goto_26
    return-void

    .line 330
    :cond_27
    new-instance p1, Lqunar/sdk/location/QLocation;

    sget-object v0, Lqunar/sdk/location/LocationFacade;->debugLoc:Lqunar/sdk/location/QLocation;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lqunar/sdk/location/LocationFacade;->debugLoc:Lqunar/sdk/location/QLocation;

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 331
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    iput-object p1, v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    .line 333
    :cond_3c
    sput-object p1, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    .line 334
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_26

    .line 337
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    invoke-virtual {v0, v1}, Lqunar/sdk/location/LocationFacade$LocSub;->deleteObserver(Lqunar/sdk/location/QunarGPSLocationListener;)V

    .line 338
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->mDestroy:Z

    if-nez v0, :cond_64

    .line 339
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    invoke-interface {v0, p1}, Lqunar/sdk/location/QunarGPSLocationListener;->onReceiveLocation(Lqunar/sdk/location/QLocation;)V

    .line 342
    :cond_64
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    invoke-virtual {v0}, Lqunar/sdk/location/LocationFacade$LocSub;->setChanged()V

    .line 343
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    invoke-virtual {v0, p1}, Lqunar/sdk/location/LocationFacade$LocSub;->notifyObservers(Lqunar/sdk/location/QLocation;)V

    .line 344
    iget-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->stopRequestMyLocOnGet:Z

    if-eqz v0, :cond_26

    .line 345
    invoke-virtual {p0}, Lqunar/sdk/location/LocationFacade;->stopLoc()V

    goto :goto_26
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 206
    const/16 v0, 0x34

    if-ne p1, v0, :cond_13

    .line 207
    array-length v0, p3

    if-lez v0, :cond_14

    aget v0, p3, v2

    if-nez v0, :cond_14

    .line 208
    iget-wide v0, p0, Lqunar/sdk/location/LocationFacade;->timeout:J

    iget-object v2, p0, Lqunar/sdk/location/LocationFacade;->timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    invoke-virtual {p0, v0, v1, v2}, Lqunar/sdk/location/LocationFacade;->startQunarGPSLocation(JLqunar/sdk/location/QunarGPSLocationTimeoutCallback;)V

    .line 217
    :cond_13
    :goto_13
    return-void

    .line 209
    :cond_14
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->context:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 210
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u60a8\u5f00\u542f\u5b9a\u4f4d\u6743\u9650\uff0c\u5426\u5219\u65e0\u6cd5\u4f7f\u7528\u5b9a\u4f4d\u529f\u80fd"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    if-eqz v0, :cond_13

    .line 213
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    invoke-interface {v0}, Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;->locationTimeOutCallback()V

    goto :goto_13
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lqunar/sdk/location/LocationFacade;->startResumed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    invoke-virtual {p0}, Lqunar/sdk/location/LocationFacade;->startQunarGPSLocation()V

    .line 313
    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 298
    sget-object v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    if-eqz v0, :cond_b

    .line 299
    const-string v0, "loc"

    sget-object v1, Lqunar/sdk/location/QunarGPSLocationStrategy;->newestGPS:Lqunar/sdk/location/QLocation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 301
    :cond_b
    return-void
.end method

.method public pauseLoc()V
    .registers 3

    .prologue
    .line 242
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    invoke-virtual {v0, v1}, Lqunar/sdk/location/LocationFacade$LocSub;->deleteObserver(Lqunar/sdk/location/QunarGPSLocationListener;)V

    .line 244
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    invoke-virtual {v0}, Lqunar/sdk/location/LocationFacade$LocSub;->countObservers()I

    move-result v0

    if-nez v0, :cond_18

    .line 245
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    if-eqz v0, :cond_18

    .line 246
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0}, Lqunar/sdk/location/QunarGPSLocationStrategy;->pauseLocation()V

    .line 249
    :cond_18
    return-void
.end method

.method public requestPermission([Ljava/lang/String;I)V
    .registers 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->hasRequestPermission:Z

    if-nez v0, :cond_16

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->hasRequestPermission:Z

    .line 200
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    invoke-interface {v0, p1, p2}, Lqunar/sdk/location/QunarGPSLocationListener;->requestPermission([Ljava/lang/String;I)V

    .line 202
    :cond_16
    return-void
.end method

.method public setGpsCoorType(Lqunar/sdk/location/BDGPSCoorType;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lqunar/sdk/location/LocationFacade;->gpsCoorType:Lqunar/sdk/location/BDGPSCoorType;

    .line 49
    return-void
.end method

.method public setResumeAndPause(ZZ)V
    .registers 3

    .prologue
    .line 82
    iput-boolean p1, p0, Lqunar/sdk/location/LocationFacade;->mResume:Z

    .line 83
    iput-boolean p2, p0, Lqunar/sdk/location/LocationFacade;->mPause:Z

    .line 84
    return-void
.end method

.method public startQunarGPSLocation()V
    .registers 4

    .prologue
    .line 167
    const-wide/16 v0, 0x3a98

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lqunar/sdk/location/LocationFacade;->startQunarGPSLocation(JLqunar/sdk/location/QunarGPSLocationTimeoutCallback;)V

    .line 168
    return-void
.end method

.method public startQunarGPSLocation(JLqunar/sdk/location/QunarGPSLocationTimeoutCallback;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 172
    .line 174
    long-to-int v0, p1

    .line 178
    iput-wide p1, p0, Lqunar/sdk/location/LocationFacade;->timeout:J

    .line 179
    iput-object p3, p0, Lqunar/sdk/location/LocationFacade;->timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    .line 180
    iput-boolean v2, p0, Lqunar/sdk/location/LocationFacade;->mDestroy:Z

    .line 181
    invoke-direct {p0, v1, v1, v0}, Lqunar/sdk/location/LocationFacade;->startLoc(ZZI)Z

    move-result v0

    .line 182
    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 184
    :try_start_13
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2b

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    invoke-virtual {p0, v0, v1}, Lqunar/sdk/location/LocationFacade;->requestPermission([Ljava/lang/String;I)V

    .line 194
    :cond_2a
    :goto_2a
    return-void

    .line 188
    :cond_2b
    invoke-direct {p0, p1, p2, p3}, Lqunar/sdk/location/LocationFacade;->startGPSLoation(JLqunar/sdk/location/QunarGPSLocationTimeoutCallback;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_2f

    goto :goto_2a

    .line 190
    :catch_2f
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method protected startResumed()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->mResume:Z

    return v0
.end method

.method public stopAfterLocationChanged(Z)V
    .registers 2

    .prologue
    .line 77
    iput-boolean p1, p0, Lqunar/sdk/location/LocationFacade;->stopRequestMyLocOnGet:Z

    .line 78
    return-void
.end method

.method public stopLoc()V
    .registers 4

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->mDestroy:Z

    .line 253
    sget-object v0, Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;

    iget-object v1, p0, Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;

    iget-object v2, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0, v1, v2}, Lqunar/sdk/location/LocationFacade$LocSub;->deleteObserver(Lqunar/sdk/location/QunarGPSLocationListener;Lqunar/sdk/location/QunarGPSLocationStrategy;)V

    .line 254
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    if-eqz v0, :cond_15

    .line 256
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;

    invoke-virtual {v0}, Lqunar/sdk/location/QunarGPSLocationStrategy;->stopLocation()V

    .line 258
    :cond_15
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_20

    .line 259
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lqunar/sdk/location/LocationFacade;->msgId:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/location/LocationFacade;->timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    .line 262
    return-void
.end method

.method protected stopPaused()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lqunar/sdk/location/LocationFacade;->mPause:Z

    return v0
.end method
