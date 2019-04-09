.class public Lorg/apache/commons/codecc/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lorg/apache/commons/codecc/language/RefinedSoundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01360240043788015936020505"


# instance fields
.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "01360240043788015936020505"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codecc/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    .line 53
    new-instance v0, Lorg/apache/commons/codecc/language/RefinedSoundex;

    invoke-direct {v0}, Lorg/apache/commons/codecc/language/RefinedSoundex;-><init>()V

    sput-object v0, Lorg/apache/commons/codecc/language/RefinedSoundex;->US_ENGLISH:Lorg/apache/commons/codecc/language/RefinedSoundex;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lorg/apache/commons/codecc/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lorg/apache/commons/codecc/language/RefinedSoundex;->soundexMapping:[C

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codecc/language/RefinedSoundex;->soundexMapping:[C

    .line 87
    return-void
.end method

.method public constructor <init>([C)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/codecc/language/RefinedSoundex;->soundexMapping:[C

    .line 74
    iget-object v0, p0, Lorg/apache/commons/codecc/language/RefinedSoundex;->soundexMapping:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-void
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 112
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codecc/language/SoundexUtils;->difference(Lorg/apache/commons/codecc/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 129
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 130
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMappingCode(C)C
    .registers 4

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_8

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/codecc/language/RefinedSoundex;->soundexMapping:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget-char v0, v0, v1

    goto :goto_7
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p1, :cond_5

    .line 171
    const/4 v0, 0x0

    .line 197
    :goto_4
    return-object v0

    .line 173
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/codecc/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    move-object v0, v3

    .line 175
    goto :goto_4

    .line 178
    :cond_11
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    const/16 v1, 0x2a

    .line 184
    :goto_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2a

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 186
    :cond_2a
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/codecc/language/RefinedSoundex;->getMappingCode(C)C

    move-result v2

    .line 187
    if-ne v2, v1, :cond_37

    .line 184
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 189
    :cond_37
    if-eqz v2, :cond_3c

    .line 190
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3c
    move v1, v2

    .line 193
    goto :goto_34
.end method
