.class final Lorg/apache/commons/codecc/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 38
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 52
    :cond_9
    :goto_9
    return-object p0

    .line 41
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 42
    new-array v5, v4, [C

    move v2, v3

    move v1, v3

    .line 44
    :goto_12
    if-lt v2, v4, :cond_1d

    .line 49
    if-ne v1, v4, :cond_34

    .line 50
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 45
    :cond_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 46
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v1

    .line 44
    :goto_2f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_12

    .line 52
    :cond_34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_40
    move v0, v1

    goto :goto_2f
.end method

.method static difference(Lorg/apache/commons/codecc/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 82
    invoke-interface {p0, p1}, Lorg/apache/commons/codecc/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lorg/apache/commons/codecc/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codecc/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 107
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 117
    :cond_5
    return v0

    .line 110
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    .line 112
    :goto_13
    if-ge v1, v2, :cond_5

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_21

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 112
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method
