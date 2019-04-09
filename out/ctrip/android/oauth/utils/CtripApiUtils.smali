.class public Lctrip/android/oauth/utils/CtripApiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Ctrip.OAuth.SDK.CtripApiUtils"

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lctrip/android/oauth/utils/CtripApiUtils;->hexDigits:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not be instantiated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 45
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 46
    if-eqz p0, :cond_3f

    .line 47
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 48
    array-length v4, v3

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_3f

    aget-object v0, v3, v1

    .line 49
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    const/4 v5, 0x0

    :try_start_1c
    aget-object v5, v0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v6, v0

    if-le v6, v7, :cond_37

    const/4 v6, 0x1

    aget-object v0, v0, v6

    const-string v6, "UTF-8"

    .line 52
    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_30
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 52
    :cond_37
    const-string v0, ""
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_39} :catch_3a

    goto :goto_30

    .line 53
    :catch_3a
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_33

    .line 58
    :cond_3f
    return-object v2
.end method

.method public static getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 64
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_20

    move-result-object v2

    .line 69
    const/4 v0, 0x0

    :goto_c
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_26

    .line 70
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 71
    if-eqz v3, :cond_23

    .line 72
    invoke-static {v3}, Lctrip/android/oauth/utils/CtripApiUtils;->hexdigest([B)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1f
    return-object v0

    .line 66
    :catch_20
    move-exception v0

    move-object v0, v1

    .line 67
    goto :goto_1f

    .line 69
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_26
    move-object v0, v1

    .line 75
    goto :goto_1f
.end method

.method public static hexdigest([B)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 95
    const/4 v1, 0x0

    .line 97
    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 98
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 99
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 100
    const/16 v2, 0x20

    new-array v4, v2, [C

    move v2, v0

    .line 102
    :goto_14
    const/16 v5, 0x10

    if-ge v0, v5, :cond_33

    .line 103
    aget-byte v5, v3, v0

    .line 104
    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lctrip/android/oauth/utils/CtripApiUtils;->hexDigits:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v4, v2

    .line 105
    add-int/lit8 v2, v6, 0x1

    sget-object v7, Lctrip/android/oauth/utils/CtripApiUtils;->hexDigits:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v4, v6

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 107
    :cond_33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    .line 111
    :goto_38
    return-object v0

    .line 108
    :catch_39
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_38
.end method

.method public static isIntentFromCtrip(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_4

    .line 91
    :cond_3
    :goto_3
    return v0

    .line 86
    :cond_4
    const-string v1, "ctrip_token_key"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static parseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lctrip/android/oauth/utils/CtripApiUtils;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 41
    :goto_d
    return-object v0

    .line 39
    :catch_e
    move-exception v0

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_d
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lctrip/android/oauth/utils/CtripApiUtils;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 27
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lctrip/android/oauth/utils/CtripApiUtils;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_18} :catch_19

    .line 31
    :goto_18
    return-object v0

    .line 29
    :catch_19
    move-exception v0

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_18
.end method

.method public static validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    if-nez p2, :cond_c

    .line 132
    const-string v1, "Ctrip.OAuth.SDK.CtripApiUtils"

    const-string v2, "ignore ctrip app signature validation"

    invoke-static {v1, v2}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_b
    return v0

    .line 135
    :cond_c
    array-length v3, p1

    move v2, v1

    .line 137
    :goto_e
    if-ge v2, v3, :cond_45

    .line 138
    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 139
    const-string v5, "Ctrip.OAuth.SDK.CtripApiUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check signature:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v5, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 141
    const-string v1, "Ctrip.OAuth.SDK.CtripApiUtils"

    const-string v2, "pass"

    invoke-static {v1, v2}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 137
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_45
    move v0, v1

    .line 146
    goto :goto_b
.end method

.method public static validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 115
    if-nez p2, :cond_b

    .line 116
    const-string v0, "Ctrip.OAuth.SDK.CtripApiUtils"

    const-string v1, "ignore ctrip app signature validation"

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    .line 126
    :goto_a
    return v0

    .line 121
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_14} :catch_1c

    move-result-object v0

    .line 126
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, v0, p2}, Lctrip/android/oauth/utils/CtripApiUtils;->validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z

    move-result v0

    goto :goto_a

    .line 122
    :catch_1c
    move-exception v0

    .line 123
    const/4 v0, 0x0

    goto :goto_a
.end method
