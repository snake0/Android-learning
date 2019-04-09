.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "SourceFile"


# static fields
.field protected static final typeFieldName:[C


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 35
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 124
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    .line 125
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    .line 126
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    .line 39
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 45
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_2f

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 48
    :cond_2f
    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .prologue
    .line 63
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 64
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    .prologue
    .line 67
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .registers 13

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 467
    if-eq p0, v3, :cond_e

    if-eq p0, v4, :cond_e

    .line 508
    :cond_d
    :goto_d
    return v0

    .line 470
    :cond_e
    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 473
    if-lt p2, v2, :cond_d

    if-gt p2, v1, :cond_d

    .line 476
    if-lt p3, v2, :cond_d

    if-gt p3, v1, :cond_d

    .line 480
    if-ne p4, v2, :cond_28

    .line 481
    if-lt p5, v3, :cond_d

    if-gt p5, v1, :cond_d

    .line 492
    :cond_20
    if-ne p6, v2, :cond_31

    .line 493
    if-lt p7, v3, :cond_d

    if-gt p7, v1, :cond_d

    .line 508
    :cond_26
    const/4 v0, 0x1

    goto :goto_d

    .line 484
    :cond_28
    if-ne p4, v3, :cond_d

    .line 485
    if-eq p5, v2, :cond_20

    if-eq p5, v3, :cond_20

    if-eq p5, v4, :cond_20

    goto :goto_d

    .line 496
    :cond_31
    if-eq p6, v3, :cond_35

    if-ne p6, v4, :cond_3a

    .line 497
    :cond_35
    if-lt p7, v2, :cond_d

    if-le p7, v1, :cond_26

    goto :goto_d

    .line 500
    :cond_3a
    const/16 v1, 0x33

    if-ne p6, v1, :cond_d

    .line 501
    if-eq p7, v2, :cond_26

    if-eq p7, v3, :cond_26

    goto :goto_d
.end method

.method private checkTime(CCCCCC)Z
    .registers 13

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 412
    if-ne p1, v2, :cond_10

    .line 413
    if-lt p2, v2, :cond_f

    if-le p2, v3, :cond_18

    .line 452
    :cond_f
    :goto_f
    return v0

    .line 416
    :cond_10
    const/16 v1, 0x31

    if-ne p1, v1, :cond_2a

    .line 417
    if-lt p2, v2, :cond_f

    if-gt p2, v3, :cond_f

    .line 428
    :cond_18
    if-lt p3, v2, :cond_35

    if-gt p3, v4, :cond_35

    .line 429
    if-lt p4, v2, :cond_f

    if-gt p4, v3, :cond_f

    .line 440
    :cond_20
    if-lt p5, v2, :cond_3a

    if-gt p5, v4, :cond_3a

    .line 441
    if-lt p6, v2, :cond_f

    if-gt p6, v3, :cond_f

    .line 452
    :cond_28
    const/4 v0, 0x1

    goto :goto_f

    .line 420
    :cond_2a
    const/16 v1, 0x32

    if-ne p1, v1, :cond_f

    .line 421
    if-lt p2, v2, :cond_f

    const/16 v1, 0x34

    if-le p2, v1, :cond_18

    goto :goto_f

    .line 432
    :cond_35
    if-ne p3, v5, :cond_f

    .line 433
    if-eq p4, v2, :cond_20

    goto :goto_f

    .line 444
    :cond_3a
    if-ne p5, v5, :cond_f

    .line 445
    if-eq p6, v2, :cond_28

    goto :goto_f
.end method

.method private setCalendar(CCCCCCCC)V
    .registers 14

    .prologue
    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 457
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 458
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p4

    add-int/2addr v0, v1

    .line 459
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p5

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, p6

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 460
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, p7

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, p8

    add-int/2addr v2, v3

    .line 461
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 463
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 464
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .registers 7

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 518
    return-void
.end method

.method public bytesValue()[B
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charAt(I)C
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 52
    const/16 v0, 0x1a

    .line 55
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_a
.end method

.method protected final copyTo(II[C)V
    .registers 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 72
    return-void
.end method

.method public final indexOf(CI)I
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public isEOF()Z
    .registers 3

    .prologue
    .line 513
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1c

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final next()C
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 113
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 115
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 116
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_21

    const/16 v2, 0x53

    if-eq v1, v2, :cond_21

    const/16 v2, 0x42

    if-eq v1, v2, :cond_21

    const/16 v2, 0x46

    if-eq v1, v2, :cond_21

    const/16 v2, 0x44

    if-ne v1, v2, :cond_23

    .line 117
    :cond_21
    add-int/lit8 v0, v0, -0x1

    .line 121
    :cond_23
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanISO8601DateIfMatch()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .registers 21

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v18, v1, v2

    .line 135
    if-nez p1, :cond_ed

    const/16 v1, 0xd

    move/from16 v0, v18

    if-le v0, v1, :cond_ed

    .line 136
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 138
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 139
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 140
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 141
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 143
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v7, v7, v18

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 144
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v8, v8, v18

    add-int/lit8 v8, v8, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 145
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_ed

    const/16 v1, 0x44

    if-ne v2, v1, :cond_ed

    const/16 v1, 0x61

    if-ne v3, v1, :cond_ed

    const/16 v1, 0x74

    if-ne v4, v1, :cond_ed

    const/16 v1, 0x65

    if-ne v5, v1, :cond_ed

    const/16 v1, 0x28

    if-ne v6, v1, :cond_ed

    const/16 v1, 0x2f

    if-ne v7, v1, :cond_ed

    const/16 v1, 0x29

    if-ne v8, v1, :cond_ed

    .line 147
    const/4 v1, -0x1

    .line 148
    const/4 v2, 0x6

    :goto_9a
    move/from16 v0, v18

    if-ge v2, v0, :cond_b9

    .line 149
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 150
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_b1

    move v1, v2

    .line 148
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 152
    :cond_b1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_b9

    const/16 v4, 0x39

    if-le v3, v4, :cond_ae

    .line 156
    :cond_b9
    const/4 v2, -0x1

    if-ne v1, v2, :cond_be

    .line 157
    const/4 v1, 0x0

    .line 408
    :goto_bd
    return v1

    .line 159
    :cond_be
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x6

    .line 160
    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 164
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 167
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 168
    const/4 v1, 0x1

    goto :goto_bd

    .line 172
    :cond_ed
    const/16 v1, 0x8

    move/from16 v0, v18

    if-eq v0, v1, :cond_ff

    const/16 v1, 0xe

    move/from16 v0, v18

    if-eq v0, v1, :cond_ff

    const/16 v1, 0x11

    move/from16 v0, v18

    if-ne v0, v1, :cond_285

    .line 173
    :cond_ff
    if-eqz p1, :cond_103

    .line 174
    const/4 v1, 0x0

    goto :goto_bd

    .line 177
    :cond_103
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 178
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 179
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 180
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 181
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 182
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 183
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 184
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 186
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v9

    if-nez v9, :cond_16a

    .line 187
    const/4 v1, 0x0

    goto/16 :goto_bd

    :cond_16a
    move-object/from16 v9, p0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 190
    invoke-direct/range {v9 .. v17}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 193
    const/16 v1, 0x8

    move/from16 v0, v18

    if-eq v0, v1, :cond_280

    .line 194
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 195
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 196
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 197
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 198
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 199
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move-object/from16 v1, p0

    .line 201
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 202
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 205
    :cond_1d2
    const/16 v1, 0x11

    move/from16 v0, v18

    if-ne v0, v1, :cond_27e

    .line 206
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 207
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 208
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 209
    const/16 v10, 0x30

    if-lt v1, v10, :cond_204

    const/16 v10, 0x39

    if-le v1, v10, :cond_207

    .line 210
    :cond_204
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 212
    :cond_207
    const/16 v10, 0x30

    if-lt v8, v10, :cond_20f

    const/16 v10, 0x39

    if-le v8, v10, :cond_212

    .line 213
    :cond_20f
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 215
    :cond_212
    const/16 v10, 0x30

    if-lt v9, v10, :cond_21a

    const/16 v10, 0x39

    if-le v9, v10, :cond_21d

    .line 216
    :cond_21a
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 219
    :cond_21d
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v10, v1

    mul-int/lit8 v1, v1, 0x64

    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v8, v10, v8

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v1, v8

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v8, v8, v9

    add-int/2addr v1, v8

    .line 224
    :goto_22f
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v8, v2

    mul-int/lit8 v2, v2, 0xa

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v8, v3

    add-int v8, v2, v3

    .line 225
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v5

    add-int/2addr v3, v2

    .line 226
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v6

    mul-int/lit8 v2, v2, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v7

    add-int/2addr v2, v4

    move v4, v8

    .line 234
    :goto_252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 240
    const/4 v1, 0x1

    goto/16 :goto_bd

    .line 221
    :cond_27e
    const/4 v1, 0x0

    goto :goto_22f

    .line 228
    :cond_280
    const/4 v4, 0x0

    .line 229
    const/4 v3, 0x0

    .line 230
    const/4 v2, 0x0

    .line 231
    const/4 v1, 0x0

    goto :goto_252

    .line 243
    :cond_285
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    move/from16 v0, v18

    if-ge v0, v1, :cond_290

    .line 244
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 247
    :cond_290
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2a3

    .line 248
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 250
    :cond_2a3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2b6

    .line 251
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 254
    :cond_2b6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 256
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 258
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 259
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 260
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 261
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 262
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v9

    if-nez v9, :cond_31d

    .line 263
    const/4 v1, 0x0

    goto/16 :goto_bd

    :cond_31d
    move-object/from16 v9, p0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 266
    invoke-direct/range {v9 .. v17}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 268
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 269
    const/16 v2, 0x54

    if-eq v1, v2, :cond_342

    const/16 v2, 0x20

    if-ne v1, v2, :cond_34d

    if-nez p1, :cond_34d

    .line 270
    :cond_342
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v18

    if-ge v0, v1, :cond_39c

    .line 271
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 273
    :cond_34d
    const/16 v2, 0x22

    if-eq v1, v2, :cond_355

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_399

    .line 274
    :cond_355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 279
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 281
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 282
    const/4 v1, 0x1

    goto/16 :goto_bd

    .line 284
    :cond_399
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 287
    :cond_39c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3af

    .line 288
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 290
    :cond_3af
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3c2

    .line 291
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 294
    :cond_3c2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 295
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 296
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 297
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 298
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 299
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move-object/from16 v1, p0

    .line 301
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v1

    if-nez v1, :cond_415

    .line 302
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 305
    :cond_415
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 306
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    .line 307
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v6

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 312
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 313
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_46c

    .line 314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v18

    if-ge v0, v1, :cond_492

    .line 315
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 318
    :cond_46c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 320
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 322
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 323
    const/4 v1, 0x1

    goto/16 :goto_bd

    .line 326
    :cond_492
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 327
    const/16 v2, 0x30

    if-lt v1, v2, :cond_4a6

    const/16 v2, 0x39

    if-le v1, v2, :cond_4a9

    .line 328
    :cond_4a6
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 330
    :cond_4a9
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v1

    .line 331
    const/4 v1, 0x1

    .line 334
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 335
    const/16 v4, 0x30

    if-lt v3, v4, :cond_4ca

    const/16 v4, 0x39

    if-gt v3, v4, :cond_4ca

    .line 336
    mul-int/lit8 v1, v2, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    add-int/2addr v2, v1

    .line 337
    const/4 v1, 0x2

    .line 341
    :cond_4ca
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4e9

    .line 342
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 343
    const/16 v4, 0x30

    if-lt v3, v4, :cond_4e9

    const/16 v4, 0x39

    if-gt v3, v4, :cond_4e9

    .line 344
    mul-int/lit8 v1, v2, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    add-int/2addr v2, v1

    .line 345
    const/4 v1, 0x3

    .line 349
    :cond_4e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 351
    const/4 v2, 0x0

    .line 352
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 353
    const/16 v3, 0x2b

    if-eq v4, v3, :cond_508

    const/16 v3, 0x2d

    if-ne v4, v3, :cond_5b3

    .line 354
    :cond_508
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 355
    const/16 v2, 0x30

    if-lt v3, v2, :cond_51f

    const/16 v2, 0x31

    if-le v3, v2, :cond_522

    .line 356
    :cond_51f
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 359
    :cond_522
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 360
    const/16 v2, 0x30

    if-lt v5, v2, :cond_539

    const/16 v2, 0x39

    if-le v5, v2, :cond_53c

    .line 361
    :cond_539
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 364
    :cond_53c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 365
    const/16 v6, 0x3a

    if-ne v2, v6, :cond_5cc

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 367
    const/16 v6, 0x30

    if-eq v2, v6, :cond_565

    .line 368
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 371
    :cond_565
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 372
    const/16 v6, 0x30

    if-eq v2, v6, :cond_57b

    .line 373
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 375
    :cond_57b
    const/4 v2, 0x6

    .line 386
    :goto_57c
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v6, v3

    mul-int/lit8 v3, v3, 0xa

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v6, v5

    add-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    .line 387
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_590

    .line 388
    neg-int v3, v3

    .line 391
    :cond_590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eq v4, v3, :cond_5b3

    .line 392
    invoke-static {v3}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v3

    .line 393
    array-length v4, v3

    if-lez v4, :cond_5b3

    .line 394
    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 401
    :cond_5b3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v1, 0x14

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 402
    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5ea

    const/16 v4, 0x22

    if-eq v3, v4, :cond_5ea

    .line 403
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 376
    :cond_5cc
    const/16 v6, 0x30

    if-ne v2, v6, :cond_5e8

    .line 377
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 378
    const/16 v6, 0x30

    if-eq v2, v6, :cond_5e6

    .line 379
    const/4 v1, 0x0

    goto/16 :goto_bd

    .line 381
    :cond_5e6
    const/4 v2, 0x5

    .line 382
    goto :goto_57c

    .line 383
    :cond_5e8
    const/4 v2, 0x3

    goto :goto_57c

    .line 405
    :cond_5ea
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 407
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 408
    const/4 v1, 0x1

    goto/16 :goto_bd
.end method

.method public final stringVal()Ljava/lang/String;
    .registers 5

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_f

    .line 98
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_e
.end method

.method public final subString(II)Ljava/lang/String;
    .registers 7

    .prologue
    .line 105
    new-array v1, p2, [C

    move v0, p1

    .line 106
    :goto_3
    add-int v2, p1, p2

    if-ge v0, v2, :cond_14

    .line 107
    sub-int v2, v0, p1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 109
    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
