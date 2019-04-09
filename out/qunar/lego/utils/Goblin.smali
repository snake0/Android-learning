.class public Lqunar/lego/utils/Goblin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final javaLock:Ljava/lang/Object;

.field private static javaString:Ljava/lang/String;

.field private static nativeJson:Ljava/lang/String;

.field private static final nativeJsonLock:Ljava/lang/Object;

.field private static ua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqunar/lego/utils/Goblin;->nativeJsonLock:Ljava/lang/Object;

    .line 318
    const-string v0, "goblin_3_1_14"

    .line 320
    :try_start_10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_13} :catch_14

    .line 329
    :goto_13
    return-void

    .line 321
    :catch_14
    move-exception v0

    .line 322
    const-string v0, "JNI"

    const-string v1, "failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SHR()Ljava/lang/String;
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    invoke-static {p0}, Lqunar/lego/utils/Goblin;->getJavaInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lqunar/lego/utils/Goblin;->javaString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lqunar/lego/utils/Goblin;->nativeJsonLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lqunar/lego/utils/Goblin;->nativeJson:Ljava/lang/String;

    return-object p0
.end method

.method public static native d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native dPoll(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native da([B)[B
.end method

.method public static native dn([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native dn1([BLjava/lang/String;)[B
.end method

.method public static native drift([B)[B
.end method

.method public static native duch(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native ePoll(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native ea([B)[B
.end method

.method public static native eg([B)[B
.end method

.method public static native es(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native espirt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCrc32(Ljava/lang/String;)I
.end method

.method private static getCurrentUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 279
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_88

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_14
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_8e

    .line 288
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_38

    .line 291
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_38
    :goto_38
    const-string v0, "REL"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 300
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_52

    .line 302
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_52
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_62

    .line 308
    const-string v2, " Build/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    const-string v2, "android:string/web_user_agent"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 313
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "Mobile "

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_88
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 296
    :cond_8e
    const-string v0, "en"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38
.end method

.method public static native getInfoNative()Ljava/lang/String;
.end method

.method private static getJavaInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 158
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 160
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 161
    const-string v5, "pn"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v5, "vc"

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v5, "lt"

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    const-string v5, "ft"

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 165
    const-string v5, "il"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v5, "vn"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v5, "f"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_64} :catch_65

    goto :goto_1b

    .line 170
    :catch_65
    move-exception v0

    .line 173
    :cond_66
    :try_start_66
    const-string v0, "apps"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_6b} :catch_219

    .line 179
    :goto_6b
    :try_start_6b
    invoke-static {p0}, Lqunar/lego/utils/Goblin;->getCurrentUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/Goblin;->ua:Ljava/lang/String;

    .line 180
    const-string v0, "ua"

    sget-object v2, Lqunar/lego/utils/Goblin;->ua:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_78} :catch_21f

    .line 186
    :goto_78
    :try_start_78
    const-string v0, "gid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v0, "sid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v0, "pid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v0, "vid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v0, "cid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v0, "uid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v0, "usid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getUSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v0, "adid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getADID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "apn"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v0, "bat"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getBattery(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v0, "build"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getBuild()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v0, "imsi"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v0, "ip"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v0, "loc"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v0, "mac"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v0, "mno"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getMno(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v0, "model"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v0, "network"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v0, "osVersion"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v0, "platform"

    const-string v2, "adr"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v0, "ssn"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getSsn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v0, "wh"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getWh(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "volume"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getVolume(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v0, "wifi"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getLinkedWifi(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v0, "bsid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getBaseStationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v0, "cpu"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getCpuName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v0, "image"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getImageCount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v0, "tel"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getTel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v0, "wifis"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, p0, v3}, Lqunar/lego/utils/GetInfoUtils;->getWifiList(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v0, "gyroscope"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getGyroscopeSensorData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v0, "light"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getLightSensorData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "orientation"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getOrientationSensorData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_217
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_217} :catch_225

    move-result-object v0

    .line 223
    :goto_218
    return-object v0

    .line 174
    :catch_219
    move-exception v0

    .line 175
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6b

    .line 181
    :catch_21f
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_78

    .line 221
    :catch_225
    move-exception v0

    .line 222
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    .line 223
    const-string v0, "{}"

    goto :goto_218
.end method

.method private static getJavaString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    sget-object v1, Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_3
    sget-object v0, Lqunar/lego/utils/Goblin;->javaString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-nez v0, :cond_f

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    .line 90
    :try_start_a
    sget-object v0, Lqunar/lego/utils/Goblin;->javaLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_1c

    .line 96
    :cond_f
    :goto_f
    :try_start_f
    sget-object v0, Lqunar/lego/utils/Goblin;->javaString:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string v0, ""

    :goto_15
    monitor-exit v1

    return-object v0

    .line 91
    :catch_17
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_f

    .line 97
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v0

    .line 96
    :cond_1f
    :try_start_1f
    sget-object v0, Lqunar/lego/utils/Goblin;->javaString:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1c

    goto :goto_15
.end method

.method public static getNativeJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    sget-object v1, Lqunar/lego/utils/Goblin;->nativeJsonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_3
    sget-object v0, Lqunar/lego/utils/Goblin;->nativeJson:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-nez v0, :cond_c

    .line 76
    :try_start_7
    sget-object v0, Lqunar/lego/utils/Goblin;->nativeJsonLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_14
    .catchall {:try_start_7 .. :try_end_c} :catchall_19

    .line 82
    :cond_c
    :goto_c
    :try_start_c
    sget-object v0, Lqunar/lego/utils/Goblin;->nativeJson:Ljava/lang/String;

    if-nez v0, :cond_1c

    const-string v0, ""

    :goto_12
    monitor-exit v1

    return-object v0

    .line 77
    :catch_14
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 83
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v0

    .line 82
    :cond_1c
    :try_start_1c
    sget-object v0, Lqunar/lego/utils/Goblin;->nativeJson:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_19

    goto :goto_12
.end method

.method public static native getPayKey()Ljava/lang/String;
.end method

.method public static getRiskControlInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 231
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 233
    :try_start_5
    const-string v1, "gid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v1, "sid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v1, "pid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v1, "vid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v1, "cid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v1, "uid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v1, "usid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getUSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v1, "apn"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v1, "bat"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getBattery(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v1, "imsi"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v1, "ip"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v1, "loc"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v1, "mac"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v1, "mno"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getMno(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v1, "model"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v1, "network"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v1, "osVersion"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v1, "platform"

    const-string v2, "adr"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v1, "wh"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getWh(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v1, "volume"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getVolume(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v1, "wifi"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getLinkedWifi(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v1, "bsid"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getBaseStationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "cpu"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/GetInfoUtils;->getCpuName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v1, "image"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getImageCount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "tel"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getTel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v1, "wifis"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, p0, v3}, Lqunar/lego/utils/GetInfoUtils;->getWifiList(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v1, "gyroscope"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getGyroscopeSensorData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v1, "light"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getLightSensorData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v1, "orientation"

    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getInstance()Lqunar/lego/utils/GetInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lqunar/lego/utils/GetInfoUtils;->getOrientationSensorData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_17c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17c} :catch_17e

    move-result-object v0

    .line 268
    :goto_17d
    return-object v0

    .line 265
    :catch_17e
    move-exception v0

    .line 267
    invoke-static {}, Lqunar/lego/utils/ACRAErrorReporterBridge;->getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;->handleSilentException(Ljava/lang/Throwable;)V

    .line 268
    const-string v0, "{}"

    goto :goto_17d
.end method

.method public static native like(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native like1()Ljava/lang/String;
.end method

.method public static loadInfo(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 109
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lqunar/lego/utils/Goblin$1;

    invoke-direct {v1, p0}, Lqunar/lego/utils/Goblin$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lqunar/lego/utils/Goblin$2;

    invoke-direct {v1}, Lqunar/lego/utils/Goblin$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    .line 143
    :goto_14
    return-void

    .line 139
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public static native report(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native roller(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native sand([B)[B
.end method

.method public static native ve(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native version()Ljava/lang/String;
.end method
