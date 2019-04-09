.class public Lorg/apache/commons/codecc/language/Soundex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lorg/apache/commons/codecc/language/Soundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"


# instance fields
.field private maxLength:I

.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codecc/language/Soundex;->US_ENGLISH_MAPPING:[C

    .line 57
    new-instance v0, Lorg/apache/commons/codecc/language/Soundex;

    invoke-direct {v0}, Lorg/apache/commons/codecc/language/Soundex;-><init>()V

    sput-object v0, Lorg/apache/commons/codecc/language/Soundex;->US_ENGLISH:Lorg/apache/commons/codecc/language/Soundex;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/language/Soundex;->maxLength:I

    .line 103
    sget-object v0, Lorg/apache/commons/codecc/language/Soundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lorg/apache/commons/codecc/language/Soundex;->soundexMapping:[C

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/language/Soundex;->maxLength:I

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codecc/language/Soundex;->soundexMapping:[C

    .line 131
    return-void
.end method

.method public constructor <init>([C)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/language/Soundex;->maxLength:I

    .line 117
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/codecc/language/Soundex;->soundexMapping:[C

    .line 118
    iget-object v0, p0, Lorg/apache/commons/codecc/language/Soundex;->soundexMapping:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-void
.end method

.method private getMappingCode(Ljava/lang/String;I)C
    .registers 8

    .prologue
    const/16 v4, 0x57

    const/16 v3, 0x48

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/Soundex;->map(C)C

    move-result v0

    .line 183
    const/4 v1, 0x1

    if-le p2, v1, :cond_2e

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2e

    .line 184
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 185
    if-eq v3, v1, :cond_1d

    if-ne v4, v1, :cond_2e

    .line 186
    :cond_1d
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 187
    invoke-direct {p0, v1}, Lorg/apache/commons/codecc/language/Soundex;->map(C)C

    move-result v2

    .line 188
    if-eq v2, v0, :cond_2d

    if-eq v3, v1, :cond_2d

    if-ne v4, v1, :cond_2e

    .line 189
    :cond_2d
    const/4 v0, 0x0

    .line 193
    :cond_2e
    return v0
.end method

.method private getSoundexMapping()[C
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/codecc/language/Soundex;->soundexMapping:[C

    return-object v0
.end method

.method private map(C)C
    .registers 5

    .prologue
    .line 225
    add-int/lit8 v0, p1, -0x41

    .line 226
    if-ltz v0, :cond_b

    invoke-direct {p0}, Lorg/apache/commons/codecc/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_20

    .line 227
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character is not mapped: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_20
    invoke-direct {p0}, Lorg/apache/commons/codecc/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    aget-char v0, v1, v0

    return v0
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codecc/language/SoundexUtils;->difference(Lorg/apache/commons/codecc/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 147
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 148
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_c
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/commons/codecc/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .registers 2

    .prologue
    .line 240
    iput p1, p0, Lorg/apache/commons/codecc/language/Soundex;->maxLength:I

    .line 241
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    if-nez p1, :cond_6

    .line 254
    const/4 v0, 0x0

    .line 275
    :goto_5
    return-object v0

    .line 256
    :cond_6
    invoke-static {p1}, Lorg/apache/commons/codecc/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    move-object v0, v4

    .line 258
    goto :goto_5

    .line 260
    :cond_12
    const/4 v0, 0x4

    new-array v5, v0, [C

    fill-array-data v5, :array_4c

    .line 263
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v5, v2

    .line 265
    invoke-direct {p0, v4, v2}, Lorg/apache/commons/codecc/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v0

    move v2, v1

    .line 266
    :goto_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2c

    array-length v3, v5

    if-lt v2, v3, :cond_32

    .line 275
    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 267
    :cond_32
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v4, v1}, Lorg/apache/commons/codecc/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v1

    .line 268
    if-eqz v1, :cond_4a

    .line 269
    const/16 v6, 0x30

    if-eq v1, v6, :cond_48

    if-eq v1, v0, :cond_48

    .line 270
    add-int/lit8 v0, v2, 0x1

    aput-char v1, v5, v2

    :goto_44
    move v2, v0

    move v0, v1

    move v1, v3

    .line 272
    goto :goto_23

    :cond_48
    move v0, v2

    goto :goto_44

    :cond_4a
    move v1, v3

    goto :goto_23

    .line 260
    :array_4c
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
