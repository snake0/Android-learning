.class public Lcom/iflytek/cloud/Setting;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/msc/msc.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/Setting;->a:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/Setting;->a:Ljava/lang/String;

    sput-object v0, Lcom/iflytek/cloud/Setting;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/cloud/Setting;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/cloud/Setting;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationEnable()Z
    .registers 1

    sget-boolean v0, Lcom/iflytek/cloud/Setting;->d:Z

    return v0
.end method

.method public static getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->none:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    :try_start_2
    invoke-static {}, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->values()[Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->b()Lcom/iflytek/cloud/thirdparty/cb$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/cb$a;->ordinal()I

    move-result v2

    aget-object v0, v1, v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static getLogPath()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/Setting;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getSaveTestLog()Z
    .registers 1

    sget-boolean v0, Lcom/iflytek/cloud/Setting;->c:Z

    return v0
.end method

.method public static getShowLog()Z
    .registers 1

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->a()Z

    move-result v0

    return v0
.end method

.method public static setLocale(Ljava/util/Locale;)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/cloud/resource/Resource;->setUILanguage(Ljava/util/Locale;)V

    return-void
.end method

.method public static setLocationEnable(Z)V
    .registers 1

    sput-boolean p0, Lcom/iflytek/cloud/Setting;->d:Z

    return-void
.end method

.method public static setLogLevel(Lcom/iflytek/cloud/Setting$LOG_LEVEL;)V
    .registers 3

    if-eqz p0, :cond_f

    :try_start_2
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb$a;->values()[Lcom/iflytek/cloud/thirdparty/cb$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Lcom/iflytek/cloud/thirdparty/cb$a;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static setLogPath(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/iflytek/cloud/Setting;->b:Ljava/lang/String;

    return-void
.end method

.method public static setSaveTestLog(Z)V
    .registers 1

    sput-boolean p0, Lcom/iflytek/cloud/Setting;->c:Z

    return-void
.end method

.method public static setShowLog(Z)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Z)V

    return-void
.end method
