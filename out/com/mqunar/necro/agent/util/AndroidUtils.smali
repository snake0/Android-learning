.class public Lcom/mqunar/necro/agent/util/AndroidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID:Ljava/lang/String; = "Android"

.field private static final PREFERRED_APN_URI:Landroid/net/Uri;

.field public static final UNCONNECT:Ljava/lang/String; = "unconnect"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static final WIFI:Ljava/lang/String; = "wifi"

.field private static imei:Ljava/lang/String;

.field private static log:Lcom/mqunar/necro/agent/logging/AgentLog;

.field private static macSerial:Ljava/lang/String;

.field private static sn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 33
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->imei:Ljava/lang/String;

    .line 50
    const-string v0, "unknown"

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->macSerial:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 205
    :try_start_0
    invoke-static {p0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 211
    const-string v0, "unconnect"

    .line 218
    :goto_c
    return-object v0

    .line 206
    :catch_d
    move-exception v0

    .line 207
    const-string v0, "Unknown"

    goto :goto_c

    .line 212
    :cond_11
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isWan(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 213
    invoke-static {p0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->carrierNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 214
    :cond_1c
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 215
    const-string v0, "wifi"

    goto :goto_c

    .line 217
    :cond_25
    sget-object v1, Lcom/mqunar/necro/agent/util/AndroidUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Unknown network type: {0} [{1}]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 218
    const-string v0, "Unknown"

    goto :goto_c
.end method

.method private static carrierNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 280
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 281
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 283
    :cond_18
    const-string v0, "unknown"

    .line 285
    :cond_1a
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "google_sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk_x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    :cond_42
    const/4 v1, 0x1

    .line 286
    :goto_43
    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eqz v1, :cond_4f

    const-string v0, "wifi"

    :cond_4f
    return-object v0

    .line 285
    :cond_50
    const/4 v1, 0x0

    goto :goto_43
.end method

.method private static connectionNameFromNetworkSubtype(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    packed-switch p0, :pswitch_data_34

    .line 293
    const-string v0, "Unknown"

    .line 323
    :goto_5
    return-object v0

    .line 295
    :pswitch_6
    const-string v0, "GPRS"

    goto :goto_5

    .line 297
    :pswitch_9
    const-string v0, "EDGE"

    goto :goto_5

    .line 299
    :pswitch_c
    const-string v0, "UMTS"

    goto :goto_5

    .line 301
    :pswitch_f
    const-string v0, "CDMA"

    goto :goto_5

    .line 303
    :pswitch_12
    const-string v0, "EVDO rev 0"

    goto :goto_5

    .line 305
    :pswitch_15
    const-string v0, "EVDO rev A"

    goto :goto_5

    .line 307
    :pswitch_18
    const-string v0, "1xRTT"

    goto :goto_5

    .line 309
    :pswitch_1b
    const-string v0, "HSDPA"

    goto :goto_5

    .line 311
    :pswitch_1e
    const-string v0, "HSUPA"

    goto :goto_5

    .line 313
    :pswitch_21
    const-string v0, "HSPA"

    goto :goto_5

    .line 315
    :pswitch_24
    const-string v0, "IDEN"

    goto :goto_5

    .line 317
    :pswitch_27
    const-string v0, "EVDO rev B"

    goto :goto_5

    .line 319
    :pswitch_2a
    const-string v0, "LTE"

    goto :goto_5

    .line 321
    :pswitch_2d
    const-string v0, "HRPD"

    goto :goto_5

    .line 323
    :pswitch_30
    const-string v0, "HSPAP"

    goto :goto_5

    .line 290
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method public static getADID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 126
    :cond_18
    invoke-static {p0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 133
    :cond_1c
    :goto_1c
    return-object v0

    .line 130
    :catch_1d
    move-exception v0

    .line 133
    const-string v0, ""

    goto :goto_1c
.end method

.method public static getApnName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 140
    const-string v6, ""

    .line 142
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/necro/agent/util/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

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

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_41

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 147
    if-eqz v0, :cond_7a

    .line 148
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 149
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 152
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 172
    :goto_40
    return-object v0

    .line 155
    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/necro/agent/util/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_78

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_40

    .line 162
    :catch_62
    move-exception v0

    .line 164
    :try_start_63
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 166
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_40

    .line 168
    :catch_74
    move-exception v0

    .line 169
    const-string v0, ""

    goto :goto_40

    :cond_78
    move-object v0, v6

    goto :goto_40

    :cond_7a
    move-object v0, v6

    goto :goto_3d
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->imei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 38
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->imei:Ljava/lang/String;

    .line 47
    :goto_a
    return-object v0

    .line 41
    :cond_b
    :try_start_b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->imei:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_19} :catch_1c

    .line 47
    :goto_19
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->imei:Ljava/lang/String;

    goto :goto_a

    .line 44
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method public static getMac()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->macSerial:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 95
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->macSerial:Ljava/lang/String;

    .line 113
    :goto_a
    return-object v0

    .line 97
    :cond_b
    const-string v0, ""

    .line 99
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 101
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 103
    :cond_25
    if-eqz v0, :cond_33

    .line 104
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_25

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->macSerial:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_33} :catch_36

    .line 113
    :cond_33
    :goto_33
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->macSerial:Ljava/lang/String;

    goto :goto_a

    .line 110
    :catch_36
    move-exception v0

    goto :goto_33
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 269
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 272
    :try_start_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    .line 273
    :catch_d
    move-exception v0

    .line 274
    sget-object v1, Lcom/mqunar/necro/agent/util/AndroidUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Cannot determine network state. Enable android.permission.ACCESS_NETWORK_STATE in your manifest."

    invoke-interface {v1, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 275
    throw v0
.end method

.method public static getSN()Ljava/lang/String;
    .registers 5

    .prologue
    .line 53
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 54
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    .line 88
    :goto_c
    return-object v0

    .line 57
    :cond_d
    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1e

    .line 58
    new-instance v0, Lcom/mqunar/necro/agent/util/AndroidUtils$1;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils$1;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils$1;->getSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    .line 66
    :cond_1e
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_25} :catch_a5

    move-result v0

    if-eqz v0, :cond_97

    .line 68
    :try_start_28
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 70
    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ro.serialno"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    .line 71
    const-string v0, "unknown"

    sget-object v2, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 72
    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gsm.device.sn"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    .line 74
    :cond_77
    const-string v0, "unknown"

    sget-object v2, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 75
    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ril.serialnumber"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_97} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_97} :catch_a5

    .line 82
    :cond_97
    :goto_97
    :try_start_97
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 83
    const-string v0, ""
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a3} :catch_a5

    goto/16 :goto_c

    .line 85
    :catch_a5
    move-exception v0

    .line 88
    :cond_a6
    sget-object v0, Lcom/mqunar/necro/agent/util/AndroidUtils;->sn:Ljava/lang/String;

    goto/16 :goto_c

    .line 78
    :catch_aa
    move-exception v0

    goto :goto_97
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    const-string v1, ""

    .line 183
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 184
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v0

    .line 188
    :goto_e
    return-object v0

    .line 185
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_e
.end method

.method public static getTraceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    if-nez v0, :cond_25

    .line 352
    const-string v0, ""

    .line 354
    :cond_25
    return-object v0
.end method

.method private static isConnected(Landroid/net/NetworkInfo;)Z
    .registers 2

    .prologue
    .line 234
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 192
    if-eqz p0, :cond_15

    .line 193
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 194
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_15

    .line 196
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 199
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static isWan(Landroid/net/NetworkInfo;)Z
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 247
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 244
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 238
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private static isWifi(Landroid/net/NetworkInfo;)Z
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 264
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 257
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 252
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 332
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 334
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v3, :cond_35

    aget-byte v4, v1, v0

    .line 335
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_29

    .line 336
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_29
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 339
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    .line 342
    :goto_39
    return-object v0

    .line 340
    :catch_3a
    move-exception v0

    .line 342
    const-string v0, ""

    goto :goto_39
.end method

.method public static wanType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
    :try_start_0
    invoke-static {p0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v0, "unconnect"

    :goto_c
    return-object v0

    .line 226
    :catch_d
    move-exception v0

    .line 227
    const-string v0, "Unknown"

    goto :goto_c

    .line 230
    :cond_11
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "wifi"

    goto :goto_c

    :cond_1a
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isWan(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->connectionNameFromNetworkSubtype(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_29
    const-string v0, "Unknown"

    goto :goto_c
.end method
