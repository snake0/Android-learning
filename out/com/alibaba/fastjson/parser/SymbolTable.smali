.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TABLE_SIZE:I = 0x200

.field public static final MAX_BUCKET_LENTH:I = 0x8

.field public static final MAX_SIZE:I = 0x1000


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field private final indexMask:I

.field private size:I

.field private final symbols:[Ljava/lang/String;

.field private final symbols_char:[[C


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 38
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    .line 39
    const-string v0, "$ref"

    const/4 v1, 0x4

    const-string v2, "$ref"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 44
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 45
    new-array v0, p1, [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .line 46
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    .line 47
    new-array v0, p1, [[C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    .line 48
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final hash([CII)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 212
    move v1, v0

    .line 215
    :goto_2
    if-ge v0, p2, :cond_10

    .line 216
    mul-int/lit8 v2, v1, 0x1f

    add-int/lit8 v1, p1, 0x1

    aget-char v3, p0, p1

    add-int/2addr v2, v3

    .line 215
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move v1, v2

    goto :goto_2

    .line 218
    :cond_10
    return v1
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    .prologue
    .line 200
    new-array v1, p2, [C

    move v0, p1

    .line 201
    :goto_3
    add-int v2, p1, p2

    if-ge v0, v2, :cond_12

    .line 202
    sub-int v2, v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 204
    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v7, p4, v0

    .line 135
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v3, v0, v7

    .line 139
    if-eqz v3, :cond_9b

    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_53

    .line 141
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    aget-object v4, v0, v7

    move v0, v1

    .line 143
    :goto_17
    if-ge v0, p3, :cond_99

    .line 144
    add-int v5, p2, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-char v6, v4, v0

    if-eq v5, v6, :cond_28

    move v0, v1

    .line 150
    :goto_24
    if-eqz v0, :cond_2b

    move-object v0, v3

    .line 196
    :goto_27
    return-object v0

    .line 143
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2b
    move v6, v0

    .line 160
    :goto_2c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v0, v0, v7

    move-object v4, v0

    move v0, v1

    :goto_32
    if-eqz v4, :cond_5b

    .line 161
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 162
    array-length v3, v5

    if-ne p3, v3, :cond_4f

    iget v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v3, :cond_4f

    move v3, v1

    .line 164
    :goto_3e
    if-ge v3, p3, :cond_97

    .line 165
    add-int v8, p2, v3

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-char v9, v5, v3

    if-eq v8, v9, :cond_55

    move v3, v1

    .line 171
    :goto_4b
    if-nez v3, :cond_58

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_4f
    iget-object v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    move-object v4, v3

    goto :goto_32

    :cond_53
    move v6, v1

    .line 154
    goto :goto_2c

    .line 164
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 175
    :cond_58
    iget-object v0, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_27

    .line 178
    :cond_5b
    const/16 v1, 0x8

    if-lt v0, v1, :cond_64

    .line 180
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 184
    :cond_64
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_6f

    .line 186
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 189
    :cond_6f
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v5, v1, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V

    .line 190
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v0, v1, v7

    .line 191
    if-eqz v6, :cond_8e

    .line 192
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 193
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    aput-object v2, v1, v7

    .line 195
    :cond_8e
    iget v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 196
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_27

    :cond_97
    move v3, v2

    goto :goto_4b

    :cond_99
    move v0, v2

    goto :goto_24

    :cond_9b
    move v6, v2

    goto :goto_2c
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .registers 5

    .prologue
    .line 52
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->hash([CII)I

    move-result v0

    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v7, p4, v0

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v3, v0, v7

    .line 73
    if-eqz v3, :cond_99

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_4f

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    aget-object v4, v0, v7

    move v0, v1

    .line 77
    :goto_17
    if-ge v0, p3, :cond_97

    .line 78
    add-int v5, p2, v0

    aget-char v5, p1, v5

    aget-char v6, v4, v0

    if-eq v5, v6, :cond_26

    move v0, v1

    .line 84
    :goto_22
    if-eqz v0, :cond_29

    move-object v0, v3

    .line 128
    :goto_25
    return-object v0

    .line 77
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_29
    move v6, v0

    .line 94
    :goto_2a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v0, v0, v7

    move-object v4, v0

    move v0, v1

    :goto_30
    if-eqz v4, :cond_57

    .line 95
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 96
    array-length v3, v5

    if-ne p3, v3, :cond_4b

    iget v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v3, :cond_4b

    move v3, v1

    .line 98
    :goto_3c
    if-ge v3, p3, :cond_95

    .line 99
    add-int v8, p2, v3

    aget-char v8, p1, v8

    aget-char v9, v5, v3

    if-eq v8, v9, :cond_51

    move v3, v1

    .line 105
    :goto_47
    if-nez v3, :cond_54

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_4b
    iget-object v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    move-object v4, v3

    goto :goto_30

    :cond_4f
    move v6, v1

    .line 88
    goto :goto_2a

    .line 98
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 109
    :cond_54
    iget-object v0, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_25

    .line 112
    :cond_57
    const/16 v1, 0x8

    if-lt v0, v1, :cond_61

    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_25

    .line 117
    :cond_61
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_6d

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_25

    .line 121
    :cond_6d
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v5, v1, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V

    .line 122
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v0, v1, v7

    .line 123
    if-eqz v6, :cond_8c

    .line 124
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 125
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    aput-object v2, v1, v7

    .line 127
    :cond_8c
    iget v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 128
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_25

    :cond_95
    move v3, v2

    goto :goto_47

    :cond_97
    move v0, v2

    goto :goto_22

    :cond_99
    move v6, v2

    goto :goto_2a
.end method

.method public size()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    return v0
.end method
