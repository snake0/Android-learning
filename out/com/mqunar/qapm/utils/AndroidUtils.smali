.class public Lcom/mqunar/qapm/utils/AndroidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QAPM_OPEN_PAGE_KEY:I = 0x6ffedcbb

.field public static final UNCONNECT:Ljava/lang/String; = "unconnect"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static final a:Landroid/net/Uri;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->a:Landroid/net/Uri;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->b:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->c:Ljava/lang/String;

    .line 43
    const-string v0, "unknown"

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 263
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 266
    :try_start_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    .line 267
    :catch_d
    move-exception v0

    .line 269
    throw v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    packed-switch p0, :pswitch_data_34

    .line 287
    const-string v0, "Unknown"

    .line 317
    :goto_5
    return-object v0

    .line 289
    :pswitch_6
    const-string v0, "GPRS"

    goto :goto_5

    .line 291
    :pswitch_9
    const-string v0, "EDGE"

    goto :goto_5

    .line 293
    :pswitch_c
    const-string v0, "UMTS"

    goto :goto_5

    .line 295
    :pswitch_f
    const-string v0, "CDMA"

    goto :goto_5

    .line 297
    :pswitch_12
    const-string v0, "EVDO rev 0"

    goto :goto_5

    .line 299
    :pswitch_15
    const-string v0, "EVDO rev A"

    goto :goto_5

    .line 301
    :pswitch_18
    const-string v0, "1xRTT"

    goto :goto_5

    .line 303
    :pswitch_1b
    const-string v0, "HSDPA"

    goto :goto_5

    .line 305
    :pswitch_1e
    const-string v0, "HSUPA"

    goto :goto_5

    .line 307
    :pswitch_21
    const-string v0, "HSPA"

    goto :goto_5

    .line 309
    :pswitch_24
    const-string v0, "IDEN"

    goto :goto_5

    .line 311
    :pswitch_27
    const-string v0, "EVDO rev B"

    goto :goto_5

    .line 313
    :pswitch_2a
    const-string v0, "LTE"

    goto :goto_5

    .line 315
    :pswitch_2d
    const-string v0, "HRPD"

    goto :goto_5

    .line 317
    :pswitch_30
    const-string v0, "HSPAP"

    goto :goto_5

    .line 284
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

.method private static a(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_12

    .line 446
    const v1, 0x6ffedcbb

    invoke-static {v0, v1}, Lcom/mqunar/qapm/utils/AndroidUtils;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a(Landroid/view/View;I)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 455
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 456
    check-cast v0, Ljava/lang/String;

    .line 458
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Landroid/net/NetworkInfo;)Z
    .registers 2

    .prologue
    .line 228
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

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 274
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 275
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 277
    :cond_18
    const-string v0, "unknown"

    .line 279
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

    .line 280
    :goto_43
    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eqz v1, :cond_4f

    const-string v0, "wifi"

    :cond_4f
    return-object v0

    .line 279
    :cond_50
    const/4 v1, 0x0

    goto :goto_43
.end method

.method private static b(Landroid/net/NetworkInfo;)Z
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 241
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 238
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 232
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

.method private static c(Landroid/net/NetworkInfo;)Z
    .registers 2

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 258
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 251
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 246
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

.method public static carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Lcom/mqunar/qapm/utils/AndroidUtils;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->a(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 205
    const-string v0, "unconnect"

    .line 212
    :goto_c
    return-object v0

    .line 200
    :catch_d
    move-exception v0

    .line 201
    const-string v0, "Unknown"

    goto :goto_c

    .line 206
    :cond_11
    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->b(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 207
    invoke-static {p0}, Lcom/mqunar/qapm/utils/AndroidUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 208
    :cond_1c
    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->c(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 209
    const-string v0, "wifi"

    goto :goto_c

    .line 212
    :cond_25
    const-string v0, "Unknown"

    goto :goto_c
.end method

.method public static getADID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 131
    :cond_18
    invoke-static {p0}, Lcom/mqunar/qapm/utils/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 138
    :cond_1c
    :goto_1c
    return-object v0

    .line 135
    :catch_1d
    move-exception v0

    .line 138
    const-string v0, ""

    goto :goto_1c
.end method

.method public static getApnName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 145
    const-string v6, ""

    .line 147
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/qapm/utils/AndroidUtils;->a:Landroid/net/Uri;

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

    .line 149
    if-eqz v1, :cond_41

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 152
    if-eqz v0, :cond_7a

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 154
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 157
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 177
    :goto_40
    return-object v0

    .line 160
    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/qapm/utils/AndroidUtils;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_78

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_40

    .line 167
    :catch_62
    move-exception v0

    .line 169
    :try_start_63
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_40

    .line 173
    :catch_74
    move-exception v0

    .line 174
    const-string v0, ""

    goto :goto_40

    :cond_78
    move-object v0, v6

    goto :goto_40

    :cond_7a
    move-object v0, v6

    goto :goto_3d
.end method

.method public static getAtomName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 431
    :try_start_1
    const-string v0, "com.mqunar.core.QunarApkLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 432
    const-string v0, "getPkgName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 433
    if-nez v0, :cond_25

    .line 434
    const-string v0, "getPackageName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 436
    :cond_25
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 437
    const-string v2, "com.mqunar."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "atom."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    move-result-object v0

    .line 440
    :goto_46
    return-object v0

    .line 438
    :catch_47
    move-exception v0

    move-object v0, v1

    .line 440
    goto :goto_46
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 48
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->b:Ljava/lang/String;

    .line 56
    :goto_a
    return-object v0

    .line 51
    :cond_b
    :try_start_b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->b:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_19} :catch_1c

    .line 56
    :goto_19
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->b:Ljava/lang/String;

    goto :goto_a

    .line 53
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method public static getMac()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 100
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->c:Ljava/lang/String;

    .line 118
    :goto_a
    return-object v0

    .line 102
    :cond_b
    const-string v0, ""

    .line 104
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 106
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 108
    :cond_25
    if-eqz v0, :cond_33

    .line 109
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_25

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->c:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_33} :catch_36

    .line 118
    :cond_33
    :goto_33
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->c:Ljava/lang/String;

    goto :goto_a

    .line 115
    :catch_36
    move-exception v0

    goto :goto_33
.end method

.method public static getPageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 353
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_b

    .line 354
    const-string v0, "AndroidUtils"

    const-string v1, "Warning! getPageName but context is application!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object v1, p0

    .line 357
    :goto_c
    instance-of v0, v1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_14

    .line 358
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_b6

    .line 369
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 371
    :try_start_1c
    const-string v0, "com.mqunar.core.basectx.launcherfragment.TransparentFragmentActivityBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 372
    const-string v3, "com.mqunar.core.basectx.launcherfragment.LauncherFragmentActivityBase"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 373
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 374
    const-string v3, "_fragmentName"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 375
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_45} :catch_eb

    move-result v3

    if-nez v3, :cond_e8

    .line 393
    :cond_48
    :goto_48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/qapm/utils/AndroidUtils;->getAtomName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f8

    const-string v3, "."

    .line 397
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_f8

    .line 400
    :try_start_5e
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 401
    invoke-static {v3}, Lcom/mqunar/qapm/utils/AndroidUtils;->getAtomName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_69} :catch_f0

    move-result-object v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 408
    :goto_6d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    :cond_8a
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_b5

    .line 414
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/mqunar/qapm/utils/AndroidUtils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_b5
    return-object v2

    :cond_b6
    move-object v0, v1

    .line 361
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 362
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    move-object v1, p0

    goto/16 :goto_c

    .line 380
    :cond_c8
    :try_start_c8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 381
    const-string v0, "_fragmentName"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 382
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_e5} :catch_eb

    move-result v3

    if-eqz v3, :cond_48

    :cond_e8
    :goto_e8
    move-object v0, v2

    goto/16 :goto_48

    .line 388
    :catch_eb
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e8

    .line 403
    :catch_f0
    move-exception v3

    .line 404
    const-string v3, "AndroidUtils"

    const-string v4, "found class crash"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_6d
.end method

.method public static getSN()Ljava/lang/String;
    .registers 5

    .prologue
    .line 60
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 61
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    .line 95
    :goto_c
    return-object v0

    .line 64
    :cond_d
    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1e

    .line 65
    new-instance v0, Lcom/mqunar/qapm/utils/a;

    invoke-direct {v0}, Lcom/mqunar/qapm/utils/a;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/mqunar/qapm/utils/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    .line 73
    :cond_1e
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_25} :catch_a5

    move-result v0

    if-eqz v0, :cond_97

    .line 75
    :try_start_28
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
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

    .line 77
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

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    .line 78
    const-string v0, "unknown"

    sget-object v2, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 79
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

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    .line 81
    :cond_77
    const-string v0, "unknown"

    sget-object v2, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 82
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

    sput-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_97} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_97} :catch_a5

    .line 89
    :cond_97
    :goto_97
    :try_start_97
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 90
    const-string v0, ""
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a3} :catch_a5

    goto/16 :goto_c

    .line 92
    :catch_a5
    move-exception v0

    .line 95
    :cond_a6
    sget-object v0, Lcom/mqunar/qapm/utils/AndroidUtils;->d:Ljava/lang/String;

    goto/16 :goto_c

    .line 85
    :catch_aa
    move-exception v0

    goto :goto_97
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    const-string v1, ""

    .line 188
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 189
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v0

    .line 193
    :goto_e
    return-object v0

    .line 190
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_e
.end method

.method public static getTraceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/mqunar/qapm/utils/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    if-nez v0, :cond_25

    .line 346
    const-string v0, ""

    .line 348
    :cond_25
    return-object v0
.end method

.method public static replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 473
    :goto_6
    return-object p0

    .line 466
    :cond_7
    const-string v0, "|"

    const-string v1, "\uff5c"

    .line 467
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "\uff0a"

    .line 468
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, "\uff1a"

    .line 469
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, "\uff06"

    .line 470
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\u3001\uff2e"

    .line 471
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^"

    const-string v2, "\uff3e"

    .line 472
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 326
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 328
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v3, :cond_35

    aget-byte v4, v1, v0

    .line 329
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_29

    .line 330
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_29
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 333
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    .line 336
    :goto_39
    return-object v0

    .line 334
    :catch_3a
    move-exception v0

    .line 336
    const-string v0, ""

    goto :goto_39
.end method

.method public static wanType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 219
    :try_start_0
    invoke-static {p0}, Lcom/mqunar/qapm/utils/AndroidUtils;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->a(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v0, "unconnect"

    :goto_c
    return-object v0

    .line 220
    :catch_d
    move-exception v0

    .line 221
    const-string v0, "Unknown"

    goto :goto_c

    .line 224
    :cond_11
    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->c(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "wifi"

    goto :goto_c

    :cond_1a
    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->b(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_29
    const-string v0, "Unknown"

    goto :goto_c
.end method
