.class public Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static theInstance:Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;


# instance fields
.field private unicodeToHanyuPinyinTable:Ljava/util/Properties;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Ljava/util/Properties;

    .line 62
    invoke-direct {p0, p1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->initializeResource(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private getHanyuPinyinRecordFromChar(C)Ljava/lang/String;
    .registers 4

    .prologue
    .line 197
    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-direct {p0}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->isValidRecord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;
    .registers 2

    .prologue
    .line 213
    sget-object v0, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->theInstance:Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;

    if-nez v0, :cond_b

    .line 214
    new-instance v0, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;

    invoke-direct {v0, p0}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->theInstance:Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;

    .line 216
    :cond_b
    sget-object v0, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->theInstance:Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;

    return-object v0
.end method

.method private getUnicodeToHanyuPinyinTable()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Ljava/util/Properties;

    return-object v0
.end method

.method private initializeResource(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "unicode_to_hanyu_pinyin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->setUnicodeToHanyuPinyinTable(Ljava/util/Properties;)V

    .line 72
    invoke-direct {p0}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1f

    .line 79
    :goto_19
    return-void

    .line 74
    :catch_1a
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_19

    .line 76
    :catch_1f
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method public static isAZ(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-zA-Z]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isChineseChar(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    :goto_7
    return v0

    .line 143
    :cond_8
    const-string v1, "[\u4e00-\u9fa5]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 144
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_7
.end method

.method public static isLetterAZ(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 126
    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-z]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 134
    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method private isValidRecord(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 179
    const-string v0, "(none0)"

    .line 181
    if-eqz p1, :cond_1e

    const-string v0, "(none0)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private setUnicodeToHanyuPinyinTable(Ljava/util/Properties;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Ljava/util/Properties;

    .line 49
    return-void
.end method

.method public static toPrefix(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 84
    const-string v0, "Contact"

    const-string v1, " NULL TO PREFIX"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-string v0, "*"

    .line 111
    :goto_13
    return-object v0

    .line 89
    :cond_14
    invoke-static {p1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->isChineseChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 92
    :try_start_1a
    invoke-static {p0}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->getInstance(Landroid/content/Context;)Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_13

    .line 93
    :catch_35
    move-exception v0

    .line 94
    const-string v1, "Contact"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string v0, "*"

    goto :goto_13

    .line 97
    :cond_44
    invoke-static {p1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->isAZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 99
    invoke-static {p1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->isLetterAZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 101
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 103
    :cond_59
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 105
    :cond_5e
    invoke-static {p1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 106
    const-string v0, "#"

    goto :goto_13

    .line 108
    :cond_67
    const-string v0, "*"

    goto :goto_13
.end method


# virtual methods
.method public getHanyuPinyinStringArray(C)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/mqunar/contacts/basis/py/ChineseToPinyinResource;->getHanyuPinyinRecordFromChar(C)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_24

    .line 160
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 161
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 163
    const-string v3, "("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method
