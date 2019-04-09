.class public Lcom/iflytek/cloud/Version;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/iflytek/cloud/Version;->a:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/iflytek/cloud/Version;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getModeVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    sget-object v1, Lcom/iflytek/cloud/SpeechUtility;->DEF_ENGINE_MODE:Lcom/iflytek/cloud/thirdparty/bh$a;

    if-ne v0, v1, :cond_9

    const-string v0, "6"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "5"

    goto :goto_8
.end method

.method private static getMscVersion()Ljava/lang/String;
    .registers 4

    const-string v0, "0"

    sget-object v1, Lcom/iflytek/cloud/Version;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :try_start_a
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_82

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    const-string v1, "ver_msc"

    const-string v1, "ver_msc"

    const-string v2, "gb2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/iflytek/msc/MSC;->QMSPGetVersion([BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v1

    iget v2, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v2, :cond_5f

    new-instance v0, Ljava/lang/String;

    const-string v2, "gb2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get msc full version name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_5c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/Version;->b:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_5c} :catch_78

    :cond_5c
    :goto_5c
    sget-object v0, Lcom/iflytek/cloud/Version;->b:Ljava/lang/String;

    return-object v0

    :cond_5f
    :try_start_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get msc version error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_77} :catch_78

    goto :goto_5c

    :catch_78
    move-exception v0

    const-string v1, "get msc version exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_5c

    :cond_82
    :try_start_82
    const-string v0, "get msc version msc is not load."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_87} :catch_78

    goto :goto_5c
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/Version;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "0"

    sget-object v1, Lcom/iflytek/cloud/Version;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/cloud/Version;->getModeVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1126"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/cloud/Version;->getMscVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/Version;->a:Ljava/lang/String;

    :cond_45
    sget-object v0, Lcom/iflytek/cloud/Version;->a:Ljava/lang/String;

    return-object v0
.end method
