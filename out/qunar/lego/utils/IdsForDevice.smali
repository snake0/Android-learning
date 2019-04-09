.class public Lqunar/lego/utils/IdsForDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BAD_IMEI_LIST:[Ljava/lang/String; = null

.field private static final FORMAT_FAILURE_IMEI:Ljava/lang/String; = "[IMEI] Failure -> %s"

.field private static final FORMAT_FAILURE_IMSI:Ljava/lang/String; = "[IMSI] Failure -> %s"

.field private static final FORMAT_FAILURE_SERIAL:Ljava/lang/String; = "[SERIAL] Failure -> %s"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1111"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "baidu"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "00000000"

    aput-object v2, v0, v1

    sput-object v0, Lqunar/lego/utils/IdsForDevice;->BAD_IMEI_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getADID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 125
    :cond_18
    const-string v0, ""
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 130
    :cond_1a
    :goto_1a
    return-object v0

    .line 129
    :catch_1b
    move-exception v0

    .line 130
    const-string v0, ""

    goto :goto_1a
.end method

.method public static getApnName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 135
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    const-string v6, ""

    .line 138
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_4b

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 142
    if-eqz v0, :cond_8a

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 143
    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 145
    :goto_47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    :goto_4a
    return-object v0

    .line 147
    :cond_4b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_88

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_71} :catch_72

    goto :goto_4a

    .line 154
    :catch_72
    move-exception v0

    .line 156
    :try_start_73
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 157
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_82} :catch_84

    move-result-object v0

    goto :goto_4a

    .line 159
    :catch_84
    move-exception v0

    .line 160
    const-string v0, ""

    goto :goto_4a

    :cond_88
    move-object v0, v6

    goto :goto_4a

    :cond_8a
    move-object v0, v6

    goto :goto_47
.end method

.method public static getGSM(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x5

    .line 283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 284
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 285
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 286
    if-nez v0, :cond_25

    .line 287
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_24
    return-object v0

    .line 290
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_69

    .line 292
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 293
    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_6e

    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_6e

    .line 296
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 297
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 298
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 299
    const-string v5, "MCC"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v3, "MNC"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v2, "LAC"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v2, "CID"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_69} :catch_93

    .line 318
    :cond_69
    :goto_69
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 304
    :cond_6e
    if-eqz v0, :cond_69

    :try_start_70
    instance-of v4, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_69

    .line 305
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 306
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    .line 307
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 308
    const-string v5, "MCC"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v3, "MNC"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v2, "LAC"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v2, "CID"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_92} :catch_93

    goto :goto_69

    .line 314
    :catch_93
    move-exception v0

    .line 315
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    goto :goto_69
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p0, :cond_5

    .line 47
    const-string v1, ""

    .line 71
    :cond_4
    :goto_4
    return-object v1

    .line 49
    :cond_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 50
    if-nez v0, :cond_12

    .line 51
    const-string v1, ""

    goto :goto_4

    .line 54
    :cond_12
    const-string v1, ""

    .line 55
    const-string v2, "android.permission.READ_SMS"

    invoke-static {p0, v2}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    :try_start_24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_49

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getImei"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_40} :catch_4e

    .line 67
    :goto_40
    invoke-static {v0}, Lqunar/lego/utils/IdsForDevice;->isBadImei(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 68
    const-string v1, ""

    goto :goto_4

    .line 60
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_4e

    move-result-object v0

    goto :goto_40

    .line 62
    :catch_4e
    move-exception v0

    .line 63
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_40

    :cond_58
    move-object v1, v0

    goto :goto_4
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, ""

    .line 96
    const-string v1, "android.permission.READ_SMS"

    invoke-static {p0, v1}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 97
    if-nez p0, :cond_17

    .line 98
    const-string v0, ""

    .line 111
    :cond_16
    :goto_16
    return-object v0

    .line 100
    :cond_17
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 101
    if-nez v0, :cond_24

    .line 102
    const-string v0, ""

    goto :goto_16

    .line 105
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_16

    .line 106
    :catch_29
    move-exception v1

    .line 107
    const-string v0, ""

    .line 108
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v2

    invoke-virtual {v2, v1}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 187
    const-string v1, ""

    .line 188
    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 190
    :try_start_12
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 191
    if-nez v0, :cond_1d

    .line 201
    :goto_1c
    return-object v1

    .line 194
    :cond_1d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_20} :catch_23

    move-result-object v0

    :goto_21
    move-object v1, v0

    .line 201
    goto :goto_1c

    .line 195
    :catch_23
    move-exception v0

    .line 196
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    .line 197
    const-string v1, ""

    goto :goto_1c

    :cond_2e
    move-object v0, v1

    goto :goto_21
.end method

.method public static getSerial(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, ""

    .line 77
    const-string v1, "android.permission.READ_SMS"

    invoke-static {p0, v1}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3a

    .line 80
    :try_start_18
    const-class v0, Landroid/os/Build;

    const-string v1, "getSerial"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_2d} :catch_2e

    .line 90
    :cond_2d
    :goto_2d
    return-object v0

    .line 81
    :catch_2e
    move-exception v0

    move-object v1, v0

    .line 82
    const-string v0, ""

    .line 83
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v2

    invoke-virtual {v2, v1}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 87
    :cond_3a
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_2d
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 169
    const-string v1, ""

    .line 170
    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 172
    :try_start_12
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    if-nez v0, :cond_1d

    .line 182
    :goto_1c
    return-object v1

    .line 176
    :cond_1d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_20} :catch_23

    move-result-object v0

    :goto_21
    move-object v1, v0

    .line 182
    goto :goto_1c

    .line 177
    :catch_23
    move-exception v0

    .line 178
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    .line 179
    const-string v1, ""

    goto :goto_1c

    :cond_2e
    move-object v0, v1

    goto :goto_21
.end method

.method public static getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 206
    const-string v1, ""

    .line 208
    :try_start_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 209
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 210
    if-nez v0, :cond_15

    .line 218
    :goto_14
    return-object v1

    .line 213
    :cond_15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_18} :catch_1b

    move-result-object v0

    :goto_19
    move-object v1, v0

    .line 218
    goto :goto_14

    .line 215
    :catch_1b
    move-exception v0

    .line 216
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    :cond_23
    move-object v0, v1

    goto :goto_19
.end method

.method public static getWifiInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 247
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 248
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 250
    :try_start_1d
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 251
    if-nez v0, :cond_2a

    .line 252
    const-string v0, "[]"

    .line 279
    :goto_29
    return-object v0

    .line 254
    :cond_2a
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4b

    .line 255
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 256
    const/4 v0, 0x0

    .line 257
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_47} :catch_7c

    .line 258
    const/16 v4, 0xa

    if-le v1, v4, :cond_50

    .line 279
    :cond_4b
    :goto_4b
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 262
    :cond_50
    :try_start_50
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 263
    const-string v5, "SSID"

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v5, "BSSID"

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v5, "level"

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_6d} :catch_71
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_6d} :catch_7c

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 272
    goto :goto_3b

    .line 267
    :catch_71
    move-exception v0

    .line 268
    :try_start_72
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    .line 269
    const-string v0, "[]"
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_7b} :catch_7c

    goto :goto_29

    .line 274
    :catch_7c
    move-exception v0

    .line 275
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method private static isBadImei(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lqunar/lego/utils/IdsForDevice;->BAD_IMEI_LIST:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static ishasSimCard(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 222
    const-string v1, "true"

    .line 223
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 225
    :try_start_a
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 227
    if-nez v0, :cond_15

    .line 243
    :cond_14
    :goto_14
    return-object v1

    .line 230
    :cond_15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 231
    packed-switch v0, :pswitch_data_2e

    move-object v0, v1

    :goto_1d
    move-object v1, v0

    .line 241
    goto :goto_14

    .line 233
    :pswitch_1f
    const-string v0, "false"

    goto :goto_1d

    .line 236
    :pswitch_22
    const-string v0, "false"
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_24} :catch_25

    goto :goto_1d

    .line 239
    :catch_25
    move-exception v0

    .line 240
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 231
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method
