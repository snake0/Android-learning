.class public Lcom/baidu/tts/loopj/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field private static EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Lcom/baidu/tts/loopj/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/tts/loopj/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/tts/loopj/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    iput-object v1, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->buffer:[B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    .line 53
    iput p2, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->flags:I

    .line 54
    if-eqz p3, :cond_15

    .line 55
    new-instance v0, Lcom/baidu/tts/loopj/Base64$Encoder;

    invoke-direct {v0, p2, v1}, Lcom/baidu/tts/loopj/Base64$Encoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    .line 59
    :goto_14
    return-void

    .line 57
    :cond_15
    new-instance v0, Lcom/baidu/tts/loopj/Base64$Decoder;

    invoke-direct {v0, p2, v1}, Lcom/baidu/tts/loopj/Base64$Decoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    goto :goto_14
.end method

.method private embiggen([BI)[B
    .registers 4

    .prologue
    .line 142
    if-eqz p1, :cond_5

    array-length v0, p1

    if-ge v0, p2, :cond_7

    .line 143
    :cond_5
    new-array p1, p2, [B

    .line 145
    :cond_7
    return-object p1
.end method

.method private flushBuffer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    iget v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    if-lez v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/baidu/tts/loopj/Base64OutputStream;->internalWrite([BIIZ)V

    .line 86
    iput v2, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    .line 88
    :cond_e
    return-void
.end method

.method private internalWrite([BIIZ)V
    .registers 9

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    iget-object v1, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    iget-object v1, v1, Lcom/baidu/tts/loopj/Base64$Coder;->output:[B

    iget-object v2, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    invoke-virtual {v2, p3}, Lcom/baidu/tts/loopj/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/tts/loopj/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/tts/loopj/Base64$Coder;->output:[B

    .line 132
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/tts/loopj/Base64$Coder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_22

    .line 133
    new-instance v0, Lcom/baidu/tts/loopj/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Lcom/baidu/tts/loopj/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_22
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    iget-object v1, v1, Lcom/baidu/tts/loopj/Base64$Coder;->output:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->coder:Lcom/baidu/tts/loopj/Base64$Coder;

    iget v3, v3, Lcom/baidu/tts/loopj/Base64$Coder;->op:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 136
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/tts/loopj/Base64OutputStream;->flushBuffer()V

    .line 102
    sget-object v0, Lcom/baidu/tts/loopj/Base64OutputStream;->EMPTY:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/baidu/tts/loopj/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_1b

    .line 108
    :goto_c
    :try_start_c
    iget v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1e

    .line 109
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_24

    :goto_17
    move-object v0, v1

    .line 119
    :cond_18
    :goto_18
    if-eqz v0, :cond_29

    .line 120
    throw v0

    .line 103
    :catch_1b
    move-exception v0

    move-object v1, v0

    .line 104
    goto :goto_c

    .line 111
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_17

    .line 113
    :catch_24
    move-exception v0

    .line 114
    if-nez v1, :cond_18

    move-object v0, v1

    goto :goto_18

    .line 122
    :cond_29
    return-void
.end method

.method public write(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_b

    .line 69
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->buffer:[B

    .line 71
    :cond_b
    iget v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    iget-object v1, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1b

    .line 73
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/baidu/tts/loopj/Base64OutputStream;->internalWrite([BIIZ)V

    .line 74
    iput v2, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    .line 76
    :cond_1b
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/Base64OutputStream;->bpos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 77
    return-void
.end method

.method public write([BII)V
    .registers 5

    .prologue
    .line 92
    if-gtz p3, :cond_3

    .line 95
    :goto_2
    return-void

    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/baidu/tts/loopj/Base64OutputStream;->flushBuffer()V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/tts/loopj/Base64OutputStream;->internalWrite([BIIZ)V

    goto :goto_2
.end method
