.class public Lcom/mqunar/atomenv/AndroidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREFERRED_APN_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mqunar/atomenv/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getADID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 107
    :cond_1c
    invoke-static {}, Lcom/mqunar/atomenv/AndroidUtils;->getIMEI()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 114
    :cond_20
    :goto_20
    return-object v0

    .line 111
    :catch_21
    move-exception v0

    .line 114
    const-string v0, ""

    goto :goto_20
.end method

.method public static getApnName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 120
    const-string v6, ""

    .line 122
    :try_start_2
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/atomenv/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

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

    .line 124
    if-eqz v1, :cond_45

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 127
    if-eqz v0, :cond_86

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_86

    .line 129
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 132
    :goto_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    :goto_44
    return-object v0

    .line 135
    :cond_45
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/atomenv/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_84

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_69} :catch_6a

    goto :goto_44

    .line 142
    :catch_6a
    move-exception v0

    .line 144
    :try_start_6b
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_80

    move-result-object v0

    goto :goto_44

    .line 148
    :catch_80
    move-exception v0

    .line 149
    const-string v0, ""

    goto :goto_44

    :cond_84
    move-object v0, v6

    goto :goto_44

    :cond_86
    move-object v0, v6

    goto :goto_41
.end method

.method public static getIMEI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    :try_start_1
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 29
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    .line 33
    :goto_11
    return-object v0

    .line 30
    :catch_12
    move-exception v0

    move-object v0, v1

    goto :goto_11
.end method

.method public static getMac()Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    const-string v0, ""

    .line 77
    const-string v1, ""

    .line 79
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 80
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 81
    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 83
    :cond_1c
    if-eqz v1, :cond_28

    .line 85
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1c

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_27} :catch_29

    move-result-object v0

    .line 95
    :cond_28
    :goto_28
    return-object v0

    .line 92
    :catch_29
    move-exception v1

    goto :goto_28
.end method

.method public static getSN()Ljava/lang/String;
    .registers 7

    .prologue
    .line 38
    const-string v2, "unknown"

    .line 40
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_11

    .line 41
    new-instance v1, Lcom/mqunar/atomenv/a;

    invoke-direct {v1}, Lcom/mqunar/atomenv/a;-><init>()V

    invoke-virtual {v1}, Lcom/mqunar/atomenv/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 49
    :cond_11
    const-string v1, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_16} :catch_8c

    move-result v1

    if-eqz v1, :cond_96

    .line 51
    :try_start_19
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 53
    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_46} :catch_91
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_46} :catch_8c

    .line 54
    :try_start_46
    const-string v2, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 55
    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "gsm.device.sn"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_64} :catch_94
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_64} :catch_8f

    move-object v2, v1

    .line 57
    :goto_65
    :try_start_65
    const-string v1, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 58
    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ril.serialnumber"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_81} :catch_91
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_81} :catch_8c

    .line 65
    :goto_81
    :try_start_81
    const-string v2, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 66
    const-string v1, ""
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_8b} :catch_8f

    .line 71
    :cond_8b
    :goto_8b
    return-object v1

    .line 68
    :catch_8c
    move-exception v1

    move-object v1, v2

    goto :goto_8b

    :catch_8f
    move-exception v2

    goto :goto_8b

    .line 61
    :catch_91
    move-exception v1

    move-object v1, v2

    goto :goto_81

    :catch_94
    move-exception v2

    goto :goto_81

    :cond_96
    move-object v1, v2

    goto :goto_81

    :cond_98
    move-object v2, v1

    goto :goto_65
.end method

.method public static getSimOperator()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    const-string v1, ""

    .line 162
    :try_start_2
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 163
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_13

    move-result-object v0

    .line 167
    :goto_12
    return-object v0

    .line 164
    :catch_13
    move-exception v0

    move-object v0, v1

    goto :goto_12
.end method
