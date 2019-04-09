.class public Lorg/apache/commons/codecc/binary/Base64;
.super Lorg/apache/commons/codecc/binary/BaseNCodec;
.source "SourceFile"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private bitWorkArea:I

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x3f

    const/16 v5, 0x3e

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 71
    new-array v0, v4, [B

    fill-array-data v0, :array_270

    sput-object v0, Lorg/apache/commons/codecc/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 80
    new-array v0, v7, [B

    fill-array-data v0, :array_276

    sput-object v0, Lorg/apache/commons/codecc/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 93
    new-array v0, v7, [B

    fill-array-data v0, :array_29a

    sput-object v0, Lorg/apache/commons/codecc/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 112
    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 113
    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    .line 114
    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    .line 115
    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    .line 116
    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    .line 117
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    .line 118
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v6, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    .line 119
    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 112
    sput-object v0, Lorg/apache/commons/codecc/binary/Base64;->DECODE_TABLE:[B

    .line 126
    return-void

    .line 71
    nop

    :array_270
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 80
    nop

    :array_276
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 93
    :array_29a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/binary/Base64;-><init>(I)V

    .line 177
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 217
    sget-object v0, Lorg/apache/commons/codecc/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codecc/binary/Base64;-><init>(I[B)V

    .line 218
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 4

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codecc/binary/Base64;-><init>(I[BZ)V

    .line 244
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 272
    const/4 v2, 0x3

    .line 274
    if-nez p2, :cond_35

    move v0, v1

    :goto_7
    invoke-direct {p0, v2, v3, p1, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;-><init>(IIII)V

    .line 140
    sget-object v0, Lorg/apache/commons/codecc/binary/Base64;->DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->decodeTable:[B

    .line 277
    if-eqz p2, :cond_5b

    .line 278
    invoke-virtual {p0, p2}, Lorg/apache/commons/codecc/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 279
    invoke-static {p2}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_35
    array-length v0, p2

    goto :goto_7

    .line 282
    :cond_37
    if-lez p1, :cond_56

    .line 283
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeSize:I

    .line 284
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    .line 285
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :goto_49
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->decodeSize:I

    .line 295
    if-eqz p3, :cond_60

    sget-object v0, Lorg/apache/commons/codecc/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_53
    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    .line 296
    return-void

    .line 287
    :cond_56
    iput v3, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeSize:I

    .line 288
    iput-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    goto :goto_49

    .line 291
    :cond_5b
    iput v3, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeSize:I

    .line 292
    iput-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    goto :goto_49

    .line 295
    :cond_60
    sget-object v0, Lorg/apache/commons/codecc/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_53
.end method

.method public constructor <init>(Z)V
    .registers 4

    .prologue
    .line 195
    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/commons/codecc/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/codecc/binary/Base64;-><init>(I[BZ)V

    .line 196
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 667
    new-instance v0, Lorg/apache/commons/codecc/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codecc/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/codecc/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .registers 2

    .prologue
    .line 678
    new-instance v0, Lorg/apache/commons/codecc/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codecc/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/codecc/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 693
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/apache/commons/codecc/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .registers 2

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .registers 3

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .registers 4

    .prologue
    .line 620
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .registers 9

    .prologue
    .line 640
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_6

    .line 655
    :cond_5
    :goto_5
    return-object p0

    .line 646
    :cond_6
    if-eqz p1, :cond_35

    new-instance v0, Lorg/apache/commons/codecc/binary/Base64;

    invoke-direct {v0, p2}, Lorg/apache/commons/codecc/binary/Base64;-><init>(Z)V

    .line 647
    :goto_d
    invoke-virtual {v0, p0}, Lorg/apache/commons/codecc/binary/Base64;->getEncodedLength([B)J

    move-result-wide v1

    .line 648
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3e

    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 651
    const-string v2, ") than the specified maximum size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 652
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_35
    new-instance v0, Lorg/apache/commons/codecc/binary/Base64;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/codecc/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v2, p2}, Lorg/apache/commons/codecc/binary/Base64;-><init>(I[BZ)V

    goto :goto_d

    .line 655
    :cond_3e
    invoke-virtual {v0, p0}, Lorg/apache/commons/codecc/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_5
.end method

.method public static encodeBase64Chunked([B)[B
    .registers 2

    .prologue
    .line 587
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .registers 3

    .prologue
    .line 563
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .registers 3

    .prologue
    .line 707
    if-nez p0, :cond_a

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_a
    invoke-static {p0}, Lorg/apache/commons/codecc/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .registers 2

    .prologue
    .line 505
    invoke-static {p0}, Lorg/apache/commons/codecc/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64(B)Z
    .registers 3

    .prologue
    .line 477
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_14

    if-ltz p0, :cond_12

    sget-object v0, Lorg/apache/commons/codecc/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_12

    sget-object v0, Lorg/apache/commons/codecc/binary/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 491
    invoke-static {p0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64([B)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 519
    move v0, v1

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_7

    .line 524
    const/4 v1, 0x1

    :cond_6
    return v1

    .line 520
    :cond_7
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/codecc/binary/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_17

    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/codecc/binary/Base64;->isWhiteSpace(B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 519
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .registers 6

    .prologue
    .line 721
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 723
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    .line 724
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 726
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_24

    move-object v0, v2

    .line 741
    :goto_23
    return-object v0

    .line 730
    :cond_24
    const/4 v1, 0x0

    .line 731
    array-length v0, v2

    .line 734
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_31

    .line 735
    const/4 v1, 0x1

    .line 736
    add-int/lit8 v0, v0, -0x1

    .line 738
    :cond_31
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    .line 739
    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 740
    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 741
    goto :goto_23
.end method


# virtual methods
.method decode([BII)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 415
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base64;->eof:Z

    if-eqz v0, :cond_6

    .line 466
    :cond_5
    :goto_5
    return-void

    .line 418
    :cond_6
    if-gez p3, :cond_a

    .line 419
    iput-boolean v5, p0, Lorg/apache/commons/codecc/binary/Base64;->eof:Z

    .line 421
    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-lt v0, p3, :cond_36

    .line 447
    :goto_d
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base64;->eof:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    if-eqz v0, :cond_5

    .line 448
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/binary/Base64;->ensureBufferSize(I)V

    .line 452
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    packed-switch v0, :pswitch_data_c4

    goto :goto_5

    .line 456
    :pswitch_20
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    .line 457
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_5

    .line 422
    :cond_36
    iget v1, p0, Lorg/apache/commons/codecc/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v1}, Lorg/apache/commons/codecc/binary/Base64;->ensureBufferSize(I)V

    .line 423
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 424
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_46

    .line 426
    iput-boolean v5, p0, Lorg/apache/commons/codecc/binary/Base64;->eof:Z

    goto :goto_d

    .line 429
    :cond_46
    if-ltz v2, :cond_97

    sget-object v3, Lorg/apache/commons/codecc/binary/Base64;->DECODE_TABLE:[B

    array-length v3, v3

    if-ge v2, v3, :cond_97

    .line 430
    sget-object v3, Lorg/apache/commons/codecc/binary/Base64;->DECODE_TABLE:[B

    aget-byte v2, v3, v2

    .line 431
    if-ltz v2, :cond_97

    .line 432
    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    .line 433
    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    .line 434
    iget v2, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    if-nez v2, :cond_97

    .line 435
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 436
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 437
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 421
    :cond_97
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_b

    .line 460
    :pswitch_9c
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    .line 461
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 462
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_5

    .line 452
    :pswitch_data_c4
    .packed-switch 0x2
        :pswitch_20
        :pswitch_9c
    .end packed-switch
.end method

.method encode([BII)V
    .registers 11

    .prologue
    const/16 v6, 0x3d

    const/4 v2, 0x0

    .line 327
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base64;->eof:Z

    if-eqz v0, :cond_8

    .line 389
    :cond_7
    :goto_7
    return-void

    .line 332
    :cond_8
    if-gez p3, :cond_d8

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base64;->eof:Z

    .line 334
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    if-nez v0, :cond_15

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineLength:I

    if-eqz v0, :cond_7

    .line 337
    :cond_15
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/binary/Base64;->ensureBufferSize(I)V

    .line 338
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    .line 339
    iget v1, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    packed-switch v1, :pswitch_data_176

    .line 359
    :cond_21
    :goto_21
    iget v1, p0, Lorg/apache/commons/codecc/binary/Base64;->currentLinePos:I

    .line 360
    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->currentLinePos:I

    .line 362
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineLength:I

    if-lez v0, :cond_7

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->currentLinePos:I

    if-lez v0, :cond_7

    .line 363
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    goto :goto_7

    .line 341
    :pswitch_47
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v5, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 342
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v5, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 344
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    sget-object v3, Lorg/apache/commons/codecc/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v1, v3, :cond_21

    .line 345
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    aput-byte v6, v1, v3

    .line 346
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    aput-byte v6, v1, v3

    goto :goto_21

    .line 351
    :pswitch_8a
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v5, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 352
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v5, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 353
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v5, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 355
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    sget-object v3, Lorg/apache/commons/codecc/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v1, v3, :cond_21

    .line 356
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    aput-byte v6, v1, v3

    goto/16 :goto_21

    :cond_d8
    move v1, v2

    .line 367
    :goto_d9
    if-ge v1, p3, :cond_7

    .line 368
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/binary/Base64;->ensureBufferSize(I)V

    .line 369
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    .line 370
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 371
    if-gez v0, :cond_f0

    .line 372
    add-int/lit16 v0, v0, 0x100

    .line 374
    :cond_f0
    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    .line 375
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->modulus:I

    if-nez v0, :cond_16f

    .line 376
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 377
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 378
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 379
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/codecc/binary/Base64;->bitWorkArea:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 380
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->currentLinePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->currentLinePos:I

    .line 381
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineLength:I

    if-lez v0, :cond_16f

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineLength:I

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base64;->currentLinePos:I

    if-gt v0, v4, :cond_16f

    .line 382
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base64;->pos:I

    .line 384
    iput v2, p0, Lorg/apache/commons/codecc/binary/Base64;->currentLinePos:I

    .line 367
    :cond_16f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_d9

    .line 339
    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_47
        :pswitch_8a
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .registers 4

    .prologue
    .line 752
    if-ltz p1, :cond_10

    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isUrlSafe()Z
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/codecc/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
