.class public Lcom/baidu/tts/tools/GetCUID;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 29
    const-string v0, "CUID"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 31
    invoke-static {p0}, Lcom/baidu/tts/tools/CommonParam;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "CUID"

    invoke-static {p0, v1, v0}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    :goto_17
    return-object v0

    .line 34
    :cond_18
    const-string v1, "Device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read deviceID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
