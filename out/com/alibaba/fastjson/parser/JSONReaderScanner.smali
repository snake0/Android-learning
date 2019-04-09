.class public final Lcom/alibaba/fastjson/parser/JSONReaderScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "SourceFile"


# static fields
.field public static BUF_INIT_LEN:I

.field private static final BUF_REF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private bufLength:I

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/16 v0, 0x2000

    sput v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_INIT_LEN:I

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .prologue
    .line 57
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 6

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    .line 62
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->features:I

    .line 64
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 65
    if-eqz v0, :cond_1f

    .line 66
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 67
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-nez v0, :cond_29

    .line 71
    sget v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_INIT_LEN:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 75
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_31} :catch_42

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 83
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_41

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 86
    :cond_41
    return-void

    .line 76
    :catch_42
    move-exception v0

    .line 77
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 45
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 49
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 50
    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .prologue
    .line 53
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>([CII)V

    .line 54
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    .prologue
    .line 89
    new-instance v0, Ljava/io/CharArrayReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .registers 6

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    return-void
.end method

.method public bytesValue()[B
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public final charAt(I)C
    .registers 9

    .prologue
    const/16 v0, 0x1a

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 93
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt p1, v1, :cond_5f

    .line 94
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ne v1, v5, :cond_15

    .line 95
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-ge p1, v1, :cond_14

    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v0, p1

    .line 126
    :cond_14
    :goto_14
    return v0

    .line 101
    :cond_15
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v1, v2

    .line 102
    if-lez v1, :cond_25

    .line 103
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v2, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_33} :catch_3f

    .line 112
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-nez v2, :cond_4a

    .line 113
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal stat, textLength is zero"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :catch_3f
    move-exception v0

    .line 109
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :cond_4a
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v2, v5, :cond_14

    .line 120
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 121
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr p1, v0

    .line 122
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 123
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 126
    :cond_5f
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v0, p1

    goto :goto_14
.end method

.method public close()V
    .registers 4

    .prologue
    .line 250
    invoke-super {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 252
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 255
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 256
    return-void
.end method

.method protected final copyTo(II[C)V
    .registers 6

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    return-void
.end method

.method public final indexOf(CI)I
    .registers 5

    .prologue
    .line 130
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int v0, p2, v0

    .line 132
    :goto_4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v1, v0

    .line 133
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_11

    .line 134
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v0, v1

    .line 137
    :goto_10
    return v0

    .line 136
    :cond_11
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_17

    .line 137
    const/4 v0, -0x1

    goto :goto_10

    .line 131
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public isEOF()Z
    .registers 3

    .prologue
    .line 260
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    if-eq v0, v1, :cond_1b

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1d

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public final next()C
    .registers 10

    .prologue
    const/16 v1, 0x1a

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 147
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 149
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt v0, v2, :cond_85

    .line 150
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ne v0, v8, :cond_14

    move v0, v1

    .line 191
    :goto_13
    return v0

    .line 154
    :cond_14
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-lez v0, :cond_2e

    .line 156
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v0, v2

    .line 157
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_25

    .line 158
    add-int/lit8 v0, v0, -0x1

    .line 160
    :cond_25
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_2e
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 164
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 167
    :try_start_34
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 168
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 169
    if-nez v2, :cond_53

    .line 170
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 171
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 173
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 175
    :cond_53
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5f} :catch_6b

    .line 180
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-nez v2, :cond_76

    .line 181
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal stat, textLength is zero"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catch_6b
    move-exception v0

    .line 177
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :cond_76
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ne v2, v8, :cond_7e

    .line 185
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    move v0, v1

    goto :goto_13

    .line 188
    :cond_7e
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 191
    :cond_85
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    goto :goto_13
.end method

.method public final numberString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 234
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 235
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 236
    const/4 v0, 0x0

    .line 238
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v2

    .line 240
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    .line 241
    const/16 v3, 0x4c

    if-eq v2, v3, :cond_25

    const/16 v3, 0x53

    if-eq v2, v3, :cond_25

    const/16 v3, 0x42

    if-eq v2, v3, :cond_25

    const/16 v3, 0x46

    if-eq v2, v3, :cond_25

    const/16 v3, 0x44

    if-ne v2, v3, :cond_27

    .line 242
    :cond_25
    add-int/lit8 v1, v1, -0x1

    .line 245
    :cond_27
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 246
    return-object v2
.end method

.method public final stringVal()Ljava/lang/String;
    .registers 5

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->hasSpecial:Z

    if-nez v0, :cond_28

    .line 211
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v1, v0, 0x1

    .line 212
    if-gez v1, :cond_10

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 215
    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v0, v0

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1e

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 218
    :cond_1e
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 221
    :goto_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_27
.end method

.method public final subString(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 226
    if-gez p2, :cond_8

    .line 227
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 229
    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
