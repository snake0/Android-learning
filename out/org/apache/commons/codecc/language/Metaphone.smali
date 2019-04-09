.class public Lorg/apache/commons/codecc/language/Metaphone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/language/Metaphone;->maxCodeLen:I

    .line 70
    return-void
.end method

.method private isLastChar(II)Z
    .registers 4

    .prologue
    .line 350
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 331
    .line 332
    if-ltz p2, :cond_14

    .line 333
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_14

    .line 334
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_14

    const/4 v0, 0x1

    .line 336
    :cond_14
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 322
    .line 323
    if-lez p2, :cond_12

    .line 324
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p2, v1, :cond_12

    .line 325
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_12

    const/4 v0, 0x1

    .line 327
    :cond_12
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .registers 5

    .prologue
    .line 318
    const-string v0, "AEIOU"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .registers 7

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    if-ltz p2, :cond_1d

    .line 342
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 343
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    :cond_1d
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 367
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 368
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_c
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lorg/apache/commons/codecc/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codecc/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x4b

    const/16 v10, 0x53

    const/16 v9, 0x48

    const/4 v3, 0x1

    .line 83
    .line 84
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 85
    :cond_10
    const-string v0, ""

    .line 314
    :goto_12
    return-object v0

    .line 88
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_20

    .line 89
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 92
    :cond_20
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 94
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    aget-char v2, v0, v1

    sparse-switch v2, :sswitch_data_2b6

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 134
    :goto_40
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move v0, v1

    .line 137
    :cond_45
    :goto_45
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/codecc/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    if-ge v2, v7, :cond_51

    if-lt v0, v6, :cond_9f

    .line 314
    :cond_51
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 101
    :sswitch_56
    aget-char v2, v0, v3

    const/16 v6, 0x4e

    if-ne v2, v6, :cond_63

    .line 102
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 104
    :cond_63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 108
    :sswitch_67
    aget-char v2, v0, v3

    const/16 v6, 0x45

    if-ne v2, v6, :cond_74

    .line 109
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 111
    :cond_74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 115
    :sswitch_78
    aget-char v2, v0, v3

    const/16 v6, 0x52

    if-ne v2, v6, :cond_85

    .line 116
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 119
    :cond_85
    aget-char v2, v0, v3

    if-ne v2, v9, :cond_95

    .line 120
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 121
    const/16 v0, 0x57

    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_40

    .line 123
    :cond_95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 127
    :sswitch_99
    aput-char v10, v0, v1

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 139
    :cond_9f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 141
    const/16 v7, 0x43

    if-eq v2, v7, :cond_c1

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 310
    :goto_af
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/codecc/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    if-le v2, v7, :cond_45

    .line 311
    invoke-virtual {p0}, Lorg/apache/commons/codecc/language/Metaphone;->getMaxCodeLen()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_45

    .line 144
    :cond_c1
    packed-switch v2, :pswitch_data_2d0

    .line 308
    :cond_c4
    :goto_c4
    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    .line 146
    :pswitch_c7
    if-nez v0, :cond_c4

    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c4

    .line 151
    :pswitch_cd
    const/16 v7, 0x4d

    invoke-direct {p0, v4, v0, v7}, Lorg/apache/commons/codecc/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 152
    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_c4

    .line 155
    :cond_db
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c4

    .line 159
    :pswitch_df
    invoke-direct {p0, v4, v0, v10}, Lorg/apache/commons/codecc/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 160
    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 161
    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_c4

    .line 164
    :cond_f9
    const-string v2, "CIA"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 165
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c4

    .line 168
    :cond_107
    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_11f

    .line 169
    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_11f

    .line 170
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c4

    .line 173
    :cond_11f
    invoke-direct {p0, v4, v0, v10}, Lorg/apache/commons/codecc/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 174
    invoke-direct {p0, v4, v0, v9}, Lorg/apache/commons/codecc/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 175
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c4

    .line 178
    :cond_12f
    invoke-direct {p0, v4, v0, v9}, Lorg/apache/commons/codecc/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 179
    if-nez v0, :cond_145

    .line 180
    const/4 v2, 0x3

    if-lt v6, v2, :cond_145

    .line 181
    const/4 v2, 0x2

    invoke-direct {p0, v4, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 182
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c4

    .line 184
    :cond_145
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 187
    :cond_14c
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 191
    :pswitch_151
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v6, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_178

    .line 192
    const/16 v2, 0x47

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 193
    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_178

    .line 194
    const/16 v2, 0x4a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    .line 195
    goto/16 :goto_c4

    .line 196
    :cond_178
    const/16 v2, 0x54

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 200
    :pswitch_17f
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v6, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-eqz v2, :cond_18d

    .line 201
    invoke-direct {p0, v4, v0, v9}, Lorg/apache/commons/codecc/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 204
    :cond_18d
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v6, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_1a3

    .line 205
    invoke-direct {p0, v4, v0, v9}, Lorg/apache/commons/codecc/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 206
    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v4, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 209
    :cond_1a3
    if-lez v0, :cond_1b5

    .line 210
    const-string v2, "GN"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 211
    const-string v2, "GNED"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 214
    :cond_1b5
    const/16 v2, 0x47

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_1db

    move v2, v3

    .line 220
    :goto_1be
    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_1dd

    .line 221
    const-string v7, "EIY"

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_1dd

    .line 222
    if-nez v2, :cond_1dd

    .line 223
    const/16 v2, 0x4a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    :cond_1db
    move v2, v1

    .line 218
    goto :goto_1be

    .line 225
    :cond_1dd
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 229
    :pswitch_1e2
    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 232
    if-lez v0, :cond_1f8

    .line 233
    const-string v2, "CSPTG"

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_c4

    .line 236
    :cond_1f8
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v4, v2}, Lorg/apache/commons/codecc/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 237
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 246
    :pswitch_205
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 249
    :pswitch_20a
    if-lez v0, :cond_219

    .line 250
    const/16 v7, 0x43

    invoke-direct {p0, v4, v0, v7}, Lorg/apache/commons/codecc/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_c4

    .line 251
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 254
    :cond_219
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 258
    :pswitch_21e
    invoke-direct {p0, v4, v0, v9}, Lorg/apache/commons/codecc/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_22b

    .line 260
    const/16 v2, 0x46

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 262
    :cond_22b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 266
    :pswitch_230
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 269
    :pswitch_235
    const-string v2, "SH"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24d

    .line 270
    const-string v2, "SIO"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24d

    .line 271
    const-string v2, "SIA"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_254

    .line 272
    :cond_24d
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 274
    :cond_254
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 278
    :pswitch_259
    const-string v2, "TIA"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_269

    .line 279
    const-string v2, "TIO"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_270

    .line 280
    :cond_269
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 283
    :cond_270
    const-string v2, "TCH"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 288
    const-string v2, "TH"

    invoke-direct {p0, v4, v0, v2}, Lorg/apache/commons/codecc/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_287

    .line 289
    const/16 v2, 0x30

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 291
    :cond_287
    const/16 v2, 0x54

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 295
    :pswitch_28e
    const/16 v2, 0x46

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 297
    :pswitch_295
    invoke-direct {p0, v6, v0}, Lorg/apache/commons/codecc/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_c4

    .line 298
    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v4, v7}, Lorg/apache/commons/codecc/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 299
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 303
    :pswitch_2a8
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 306
    :pswitch_2b0
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c4

    .line 97
    nop

    :sswitch_data_2b6
    .sparse-switch
        0x41 -> :sswitch_67
        0x47 -> :sswitch_56
        0x4b -> :sswitch_56
        0x50 -> :sswitch_56
        0x57 -> :sswitch_78
        0x58 -> :sswitch_99
    .end sparse-switch

    .line 144
    :pswitch_data_2d0
    .packed-switch 0x41
        :pswitch_c7
        :pswitch_cd
        :pswitch_df
        :pswitch_151
        :pswitch_c7
        :pswitch_205
        :pswitch_17f
        :pswitch_1e2
        :pswitch_c7
        :pswitch_205
        :pswitch_20a
        :pswitch_205
        :pswitch_205
        :pswitch_205
        :pswitch_c7
        :pswitch_21e
        :pswitch_230
        :pswitch_205
        :pswitch_235
        :pswitch_259
        :pswitch_c7
        :pswitch_28e
        :pswitch_295
        :pswitch_2a8
        :pswitch_295
        :pswitch_2b0
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .registers 2

    .prologue
    .line 405
    iput p1, p0, Lorg/apache/commons/codecc/language/Metaphone;->maxCodeLen:I

    return-void
.end method
