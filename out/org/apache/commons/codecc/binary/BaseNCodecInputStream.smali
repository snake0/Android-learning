.class public Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/codecc/binary/BaseNCodec;Z)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->singleByte:[B

    .line 39
    iput-boolean p3, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->doEncode:Z

    .line 40
    iput-object p2, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    .line 41
    return-void
.end method


# virtual methods
.method public markSupported()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->singleByte:[B

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->read([BII)I

    move-result v0

    .line 52
    :goto_8
    if-eqz v0, :cond_19

    .line 55
    if-lez v0, :cond_25

    .line 56
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v0, v1

    if-gez v0, :cond_20

    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 58
    :goto_18
    return v0

    .line 53
    :cond_19
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->singleByte:[B

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->read([BII)I

    move-result v0

    goto :goto_8

    .line 56
    :cond_20
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v0, v1

    goto :goto_18

    .line 58
    :cond_25
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public read([BII)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_9

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_9
    if-ltz p2, :cond_d

    if-gez p3, :cond_13

    .line 84
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 85
    :cond_13
    array-length v0, p1

    if-gt p2, v0, :cond_1b

    add-int v0, p2, p3

    array-length v2, p1

    if-le v0, v2, :cond_21

    .line 86
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 87
    :cond_21
    if-nez p3, :cond_25

    move v0, v1

    .line 119
    :cond_24
    return v0

    :cond_25
    move v0, v1

    .line 107
    :goto_26
    if-nez v0, :cond_24

    .line 108
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->hasData()Z

    move-result v0

    if-nez v0, :cond_47

    .line 109
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v0, :cond_4e

    const/16 v0, 0x1000

    :goto_36
    new-array v0, v0, [B

    .line 110
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 111
    iget-boolean v3, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v3, :cond_51

    .line 112
    iget-object v3, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([BII)V

    .line 117
    :cond_47
    :goto_47
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/codecc/binary/BaseNCodec;->readResults([BII)I

    move-result v0

    goto :goto_26

    .line 109
    :cond_4e
    const/16 v0, 0x2000

    goto :goto_36

    .line 114
    :cond_51
    iget-object v3, p0, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codecc/binary/BaseNCodec;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode([BII)V

    goto :goto_47
.end method
