.class public Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/codecc/binary/BaseNCodec;Z)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->singleByte:[B

    .line 39
    iput-object p2, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    .line 40
    iput-boolean p3, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->doEncode:Z

    .line 41
    return-void
.end method

.method private flush(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->available()I

    move-result v0

    .line 102
    if-lez v0, :cond_18

    .line 103
    new-array v1, v0, [B

    .line 104
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v2, v1, v3, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->readResults([BII)I

    move-result v0

    .line 105
    if-lez v0, :cond_18

    .line 106
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    :cond_18
    if-eqz p1, :cond_1f

    .line 110
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 112
    :cond_1f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 132
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_16

    .line 133
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    iget-object v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([BII)V

    .line 137
    :goto_d
    invoke-virtual {p0}, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->flush()V

    .line 138
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 139
    return-void

    .line 135
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    iget-object v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode([BII)V

    goto :goto_d
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 122
    return-void
.end method

.method public write(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 53
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->write([BII)V

    .line 54
    return-void
.end method

.method public write([BII)V
    .registers 6

    .prologue
    .line 75
    if-nez p1, :cond_8

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 78
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 79
    :cond_12
    array-length v0, p1

    if-gt p2, v0, :cond_1a

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_20

    .line 80
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 81
    :cond_20
    if-lez p3, :cond_2f

    .line 82
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_30

    .line 83
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([BII)V

    .line 87
    :goto_2b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 89
    :cond_2f
    return-void

    .line 85
    :cond_30
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode([BII)V

    goto :goto_2b
.end method
