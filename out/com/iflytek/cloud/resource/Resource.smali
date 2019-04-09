.class public Lcom/iflytek/cloud/resource/Resource;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_ERROR_CODE:I = 0x0

.field public static final TAG_ERROR_UNKNOWN:I = 0x1

.field public static final TEXT_AGAIN:I = 0x9

.field public static final TEXT_CANCEL:I = 0x4

.field public static final TEXT_DETAIL:I = 0x3

.field public static final TEXT_HELP_LINK:I = 0x1

.field public static final TEXT_HELP_RECO:I = 0xd

.field public static final TEXT_HELP_SMS:I = 0xc

.field public static final TEXT_KNOW:I = 0x2

.field public static final TEXT_MORE:I = 0x7

.field public static final TEXT_PLAYBACK:I = 0xa

.field public static final TEXT_POWER_LINK:I = 0x0

.field public static final TEXT_RETRIEVE:I = 0xb

.field public static final TEXT_RETRY:I = 0x8

.field public static final TEXT_SET:I = 0x6

.field public static final TEXT_STOP:I = 0x5

.field public static final TITLE_AUDIO_PLAYING:I = 0x6

.field public static final TITLE_AUDIO_REQUEST:I = 0x4

.field public static final TITLE_CONNECTING:I = 0x1

.field public static final TITLE_DATA_UPLOAD:I = 0x7

.field public static final TITLE_ERROR:I = 0x5

.field public static final TITLE_HELP:I = 0x0

.field public static final TITLE_RECOGNIZE_WAITING:I = 0x3

.field public static final TITLE_RECORDING:I = 0x2

.field private static a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    sput-object v0, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getErrorDescription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/resource/a;->c:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/iflytek/cloud/resource/b;->c:[Ljava/lang/String;

    :cond_e
    :goto_e
    if-lez p0, :cond_23

    array-length v1, v0

    if-ge p0, v1, :cond_23

    aget-object v0, v0, p0

    :goto_15
    return-object v0

    :cond_16
    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/cloud/resource/c;->c:[Ljava/lang/String;

    goto :goto_e

    :cond_23
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/cloud/resource/Resource;->getErrorTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static getErrorTag(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/resource/a;->d:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/iflytek/cloud/resource/b;->d:[Ljava/lang/String;

    :cond_e
    :goto_e
    if-ltz p0, :cond_23

    array-length v1, v0

    if-ge p0, v1, :cond_23

    aget-object v0, v0, p0

    :goto_15
    return-object v0

    :cond_16
    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/cloud/resource/c;->d:[Ljava/lang/String;

    goto :goto_e

    :cond_23
    const-string v0, ""

    goto :goto_15
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getText(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/resource/a;->a:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/iflytek/cloud/resource/b;->a:[Ljava/lang/String;

    :cond_e
    :goto_e
    if-ltz p0, :cond_23

    array-length v1, v0

    if-ge p0, v1, :cond_23

    aget-object v0, v0, p0

    :goto_15
    return-object v0

    :cond_16
    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/cloud/resource/c;->a:[Ljava/lang/String;

    goto :goto_e

    :cond_23
    const-string v0, ""

    goto :goto_15
.end method

.method public static getTitle(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/resource/a;->b:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/iflytek/cloud/resource/b;->b:[Ljava/lang/String;

    :cond_e
    :goto_e
    if-ltz p0, :cond_23

    array-length v1, v0

    if-ge p0, v1, :cond_23

    aget-object v0, v0, p0

    :goto_15
    return-object v0

    :cond_16
    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/cloud/resource/c;->b:[Ljava/lang/String;

    goto :goto_e

    :cond_23
    const-string v0, ""

    goto :goto_15
.end method

.method public static matchLanguage(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x1

    const-string v0, ""

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_9
    sget-object v2, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    invoke-static {v0}, Lcom/iflytek/cloud/resource/Resource;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/resource/Resource;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_16

    :cond_2b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static setErrorDescription(ILjava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/iflytek/cloud/resource/a;->c:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/iflytek/cloud/resource/b;->c:[Ljava/lang/String;

    :cond_e
    :goto_e
    if-lez p0, :cond_15

    array-length v1, v0

    if-ge p0, v1, :cond_15

    aput-object p1, v0, p0

    :cond_15
    return-void

    :cond_16
    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/cloud/resource/c;->c:[Ljava/lang/String;

    goto :goto_e
.end method

.method public static setText(ILjava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/iflytek/cloud/resource/a;->a:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/iflytek/cloud/resource/b;->a:[Ljava/lang/String;

    :cond_e
    :goto_e
    if-ltz p0, :cond_15

    array-length v1, v0

    if-ge p0, v1, :cond_15

    aput-object p1, v0, p0

    :cond_15
    return-void

    :cond_16
    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/cloud/resource/c;->a:[Ljava/lang/String;

    goto :goto_e
.end method

.method public static setTitle(ILjava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/iflytek/cloud/resource/a;->b:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/iflytek/cloud/resource/b;->b:[Ljava/lang/String;

    :cond_e
    :goto_e
    if-ltz p0, :cond_15

    array-length v1, v0

    if-ge p0, v1, :cond_15

    aput-object p1, v0, p0

    :cond_15
    return-void

    :cond_16
    sget-object v1, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/cloud/resource/c;->b:[Ljava/lang/String;

    goto :goto_e
.end method

.method public static setUILanguage(Ljava/util/Locale;)V
    .registers 2

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1b
    sput-object p0, Lcom/iflytek/cloud/resource/Resource;->a:Ljava/util/Locale;

    goto :goto_2
.end method
