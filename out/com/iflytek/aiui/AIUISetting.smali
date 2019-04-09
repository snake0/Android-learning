.class public final Lcom/iflytek/aiui/AIUISetting;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/aiui/AIUISetting;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/aiui/AIUISetting;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audio/raw/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/aiui/AIUISetting;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAIUIPath()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/aiui/AIUISetting;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getRawAudioPath()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/aiui/AIUISetting;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getSaveDataLog()Z
    .registers 1

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/aj;->c()Z

    move-result v0

    return v0
.end method

.method public static setDataLogPath(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/aj;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setRawAudioPath(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/iflytek/aiui/AIUISetting;->b:Ljava/lang/String;

    return-void
.end method

.method public static setSaveDataLog(Z)V
    .registers 7

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, Lcom/iflytek/aiui/AIUISetting;->setSaveDataLog(ZJJI)V

    return-void
.end method

.method public static setSaveDataLog(ZJJI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/iflytek/cloud/thirdparty/aj;->a(ZJJI)V

    return-void
.end method

.method public static setShowLog(Z)V
    .registers 2

    invoke-static {p0}, Lcom/iflytek/cloud/Setting;->setShowLog(Z)V

    invoke-static {}, Lcom/iflytek/aiui/Version;->isMobileVersion()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/as;->a(Z)V

    invoke-static {p0}, Lcom/iflytek/alsa/jni/AlsaJni;->showJniLog(Z)V

    :cond_f
    return-void
.end method
