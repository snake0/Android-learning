.class public Lcom/mqunar/cock/utils/AndroidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->a:Ljava/lang/String;

    .line 35
    const-string v0, "unknown"

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getADID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 111
    :cond_18
    invoke-static {p0}, Lcom/mqunar/cock/utils/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 118
    :cond_1c
    :goto_1c
    return-object v0

    .line 115
    :catch_1d
    move-exception v0

    .line 118
    const-string v0, ""

    goto :goto_1c
.end method

.method public static getApnName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 125
    const-string v6, ""

    .line 127
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/cock/utils/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

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

    .line 129
    if-eqz v1, :cond_41

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 132
    if-eqz v0, :cond_7a

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 134
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 137
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :goto_40
    return-object v0

    .line 140
    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/cock/utils/AndroidUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_78

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_40

    .line 147
    :catch_62
    move-exception v0

    .line 149
    :try_start_63
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 151
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_40

    .line 153
    :catch_74
    move-exception v0

    .line 154
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
    .line 22
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 23
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->a:Ljava/lang/String;

    .line 32
    :goto_a
    return-object v0

    .line 26
    :cond_b
    :try_start_b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 28
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->a:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_19} :catch_1c

    .line 32
    :goto_19
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->a:Ljava/lang/String;

    goto :goto_a

    .line 29
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method public static getMac()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 80
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->c:Ljava/lang/String;

    .line 98
    :goto_a
    return-object v0

    .line 82
    :cond_b
    const-string v0, ""

    .line 84
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 86
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 88
    :cond_25
    if-eqz v0, :cond_33

    .line 89
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_25

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->c:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_33} :catch_36

    .line 98
    :cond_33
    :goto_33
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->c:Ljava/lang/String;

    goto :goto_a

    .line 95
    :catch_36
    move-exception v0

    goto :goto_33
.end method

.method public static getSN()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 39
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    .line 73
    :goto_c
    return-object v0

    .line 42
    :cond_d
    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1e

    .line 43
    new-instance v0, Lcom/mqunar/cock/utils/a;

    invoke-direct {v0}, Lcom/mqunar/cock/utils/a;-><init>()V

    invoke-virtual {v0}, Lcom/mqunar/cock/utils/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    .line 51
    :cond_1e
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_25} :catch_a5

    move-result v0

    if-eqz v0, :cond_97

    .line 53
    :try_start_28
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
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

    .line 55
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

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    .line 56
    const-string v0, "unknown"

    sget-object v2, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 57
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

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    .line 59
    :cond_77
    const-string v0, "unknown"

    sget-object v2, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 60
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

    sput-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_97} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_97} :catch_a5

    .line 67
    :cond_97
    :goto_97
    :try_start_97
    const-string v0, "unknown"

    sget-object v1, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 68
    const-string v0, ""
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a3} :catch_a5

    goto/16 :goto_c

    .line 70
    :catch_a5
    move-exception v0

    .line 73
    :cond_a6
    sget-object v0, Lcom/mqunar/cock/utils/AndroidUtils;->b:Ljava/lang/String;

    goto/16 :goto_c

    .line 63
    :catch_aa
    move-exception v0

    goto :goto_97
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
    const-string v1, ""

    .line 168
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 169
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v0

    .line 173
    :goto_e
    return-object v0

    .line 170
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_e
.end method
