.class public Lcom/iflytek/aiui/Version;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/aiui/Version$VersionType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/iflytek/aiui/Version$VersionType;->MOBILE_PHONE:Lcom/iflytek/aiui/Version$VersionType;

    sput-object v0, Lcom/iflytek/aiui/Version;->a:Lcom/iflytek/aiui/Version$VersionType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4.5.1045."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/cloud/Version;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^.+\\.(\\d+)$"

    const-string v3, "$1"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionType()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/iflytek/aiui/Version;->a:Lcom/iflytek/aiui/Version$VersionType;

    invoke-virtual {v0}, Lcom/iflytek/aiui/Version$VersionType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMobileVersion()Z
    .registers 2

    sget-object v0, Lcom/iflytek/aiui/Version;->a:Lcom/iflytek/aiui/Version$VersionType;

    sget-object v1, Lcom/iflytek/aiui/Version$VersionType;->MOBILE_PHONE:Lcom/iflytek/aiui/Version$VersionType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setVersionType(Lcom/iflytek/aiui/Version$VersionType;)V
    .registers 1

    sput-object p0, Lcom/iflytek/aiui/Version;->a:Lcom/iflytek/aiui/Version$VersionType;

    return-void
.end method
