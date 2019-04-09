.class public Lorg/apache/commons/codecc/binary/Base32;
.super Lorg/apache/commons/codecc/binary/BaseNCodec;
.source "SourceFile"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final HEX_DECODE_TABLE:[B

.field private static final HEX_ENCODE_TABLE:[B

.field private static final MASK_5BITS:I = 0x1f


# instance fields
.field private bitWorkArea:J

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 60
    new-array v0, v4, [B

    fill-array-data v0, :array_33e

    sput-object v0, Lorg/apache/commons/codecc/binary/Base32;->CHUNK_SEPARATOR:[B

    .line 68
    const/16 v0, 0x5b

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 70
    aput-byte v3, v0, v1

    aput-byte v3, v0, v6

    aput-byte v3, v0, v4

    aput-byte v3, v0, v7

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

    .line 71
    aput-byte v3, v0, v1

    const/16 v1, 0x11

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

    .line 72
    aput-byte v3, v0, v5

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

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

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 73
    aput-byte v3, v0, v1

    const/16 v1, 0x31

    aput-byte v3, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v3, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    .line 74
    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v6, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

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

    .line 75
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

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    .line 68
    sput-object v0, Lorg/apache/commons/codecc/binary/Base32;->DECODE_TABLE:[B

    .line 82
    new-array v0, v5, [B

    fill-array-data v0, :array_344

    sput-object v0, Lorg/apache/commons/codecc/binary/Base32;->ENCODE_TABLE:[B

    .line 94
    const/16 v0, 0x58

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 96
    aput-byte v3, v0, v1

    aput-byte v3, v0, v6

    aput-byte v3, v0, v4

    aput-byte v3, v0, v7

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

    .line 97
    aput-byte v3, v0, v1

    const/16 v1, 0x11

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

    .line 98
    aput-byte v3, v0, v5

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

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

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    .line 99
    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v4, v0, v1

    const/16 v1, 0x33

    aput-byte v7, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    .line 100
    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 101
    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    aput-byte v5, v0, v1

    .line 94
    sput-object v0, Lorg/apache/commons/codecc/binary/Base32;->HEX_DECODE_TABLE:[B

    .line 108
    new-array v0, v5, [B

    fill-array-data v0, :array_358

    sput-object v0, Lorg/apache/commons/codecc/binary/Base32;->HEX_ENCODE_TABLE:[B

    .line 115
    return-void

    .line 60
    :array_33e
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 82
    nop

    :array_344
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
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 108
    :array_358
    .array-data 1
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
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/binary/Base32;-><init>(Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 187
    sget-object v0, Lorg/apache/commons/codecc/binary/Base32;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codecc/binary/Base32;-><init>(I[B)V

    .line 188
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 4

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codecc/binary/Base32;-><init>(I[BZ)V

    .line 209
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .registers 8

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 231
    const/4 v2, 0x5

    .line 233
    if-nez p2, :cond_33

    move v0, v1

    :goto_7
    invoke-direct {p0, v2, v3, p1, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;-><init>(IIII)V

    .line 234
    if-eqz p3, :cond_35

    .line 235
    sget-object v0, Lorg/apache/commons/codecc/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    .line 236
    sget-object v0, Lorg/apache/commons/codecc/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeTable:[B

    .line 241
    :goto_14
    if-lez p1, :cond_7a

    .line 242
    if-nez p2, :cond_3e

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lineLength "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0, but lineSeparator is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_33
    array-length v0, p2

    goto :goto_7

    .line 238
    :cond_35
    sget-object v0, Lorg/apache/commons/codecc/binary/Base32;->ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    .line 239
    sget-object v0, Lorg/apache/commons/codecc/binary/Base32;->DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeTable:[B

    goto :goto_14

    .line 246
    :cond_3e
    invoke-virtual {p0, p2}, Lorg/apache/commons/codecc/binary/Base32;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 247
    invoke-static {p2}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain Base32 characters: ["

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

    .line 250
    :cond_63
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeSize:I

    .line 251
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    .line 252
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :goto_73
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeSize:I

    .line 258
    return-void

    .line 254
    :cond_7a
    iput v3, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeSize:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    goto :goto_73
.end method

.method public constructor <init>(Z)V
    .registers 4

    .prologue
    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/codecc/binary/Base32;-><init>(I[BZ)V

    .line 174
    return-void
.end method


# virtual methods
.method decode([BII)V
    .registers 12

    .prologue
    .line 282
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base32;->eof:Z

    if-eqz v0, :cond_5

    .line 353
    :cond_4
    :goto_4
    return-void

    .line 285
    :cond_5
    if-gez p3, :cond_a

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base32;->eof:Z

    .line 288
    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-lt v0, p3, :cond_35

    .line 316
    :goto_d
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base32;->eof:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 317
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/binary/Base32;->ensureBufferSize(I)V

    .line 320
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    packed-switch v0, :pswitch_data_1e8

    goto :goto_4

    .line 322
    :pswitch_21
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v4, 0x2

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_4

    .line 289
    :cond_35
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 290
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_41

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base32;->eof:Z

    goto :goto_d

    .line 295
    :cond_41
    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v3}, Lorg/apache/commons/codecc/binary/Base32;->ensureBufferSize(I)V

    .line 296
    if-ltz v2, :cond_c9

    iget-object v3, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeTable:[B

    array-length v3, v3

    if-ge v2, v3, :cond_c9

    .line 297
    iget-object v3, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeTable:[B

    aget-byte v2, v3, v2

    .line 298
    if-ltz v2, :cond_c9

    .line 299
    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    .line 300
    iget-wide v3, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v5, 0x5

    shl-long/2addr v3, v5

    int-to-long v5, v2

    add-long v2, v3, v5

    iput-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    .line 301
    iget v2, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    if-nez v2, :cond_c9

    .line 302
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v4, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 303
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v4, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 304
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v4, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 305
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v4, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 306
    iget-object v2, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v4, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 288
    :cond_c9
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_b

    .line 325
    :pswitch_ce
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v4, 0x7

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_4

    .line 328
    :pswitch_e3
    iget-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x4

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    .line 329
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 330
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_4

    .line 333
    :pswitch_110
    iget-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    .line 334
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 335
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_4

    .line 339
    :pswitch_151
    iget-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x6

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    .line 340
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 341
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 342
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_4

    .line 345
    :pswitch_192
    iget-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x3

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    .line 346
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 347
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 348
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 349
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-wide v2, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_4

    .line 320
    nop

    :pswitch_data_1e8
    .packed-switch 0x2
        :pswitch_21
        :pswitch_ce
        :pswitch_e3
        :pswitch_110
        :pswitch_151
        :pswitch_192
    .end packed-switch
.end method

.method encode([BII)V
    .registers 16

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/16 v8, 0x3d

    .line 370
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/Base32;->eof:Z

    if-eqz v0, :cond_b

    .line 458
    :cond_a
    :goto_a
    return-void

    .line 375
    :cond_b
    if-gez p3, :cond_259

    .line 376
    iput-boolean v9, p0, Lorg/apache/commons/codecc/binary/Base32;->eof:Z

    .line 377
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    if-nez v0, :cond_17

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineLength:I

    if-eqz v0, :cond_a

    .line 380
    :cond_17
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/binary/Base32;->ensureBufferSize(I)V

    .line 381
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    .line 382
    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    packed-switch v1, :pswitch_data_356

    .line 424
    :goto_23
    iget v1, p0, Lorg/apache/commons/codecc/binary/Base32;->currentLinePos:I

    .line 425
    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base32;->currentLinePos:I

    .line 427
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineLength:I

    if-lez v0, :cond_a

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->currentLinePos:I

    if-lez v0, :cond_a

    .line 428
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    goto :goto_a

    .line 384
    :pswitch_49
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    shr-long/2addr v5, v11

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 385
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    shl-long/2addr v5, v10

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 386
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 387
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 388
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 389
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 390
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 391
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_23

    .line 395
    :pswitch_af
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0xb

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 396
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v7, 0x6

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 397
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    shr-long/2addr v5, v9

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 398
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v7, 0x4

    shl-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 399
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 400
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 401
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 402
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_23

    .line 405
    :pswitch_12d
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0x13

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 406
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0xe

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 407
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0x9

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 408
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v7, 0x4

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 409
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    shl-long/2addr v5, v9

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 410
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 411
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 412
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_23

    .line 415
    :pswitch_1b8
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0x1b

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 416
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0x16

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 417
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0x11

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 418
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v7, 0xc

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 419
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v7, 0x7

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 420
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    shr-long/2addr v5, v10

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 421
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v5, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    shl-long/2addr v5, v11

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 422
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v3, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_23

    :cond_259
    move v1, v2

    .line 432
    :goto_25a
    if-ge v1, p3, :cond_a

    .line 433
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/binary/Base32;->ensureBufferSize(I)V

    .line 434
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    .line 435
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 436
    if-gez v0, :cond_271

    .line 437
    add-int/lit16 v0, v0, 0x100

    .line 439
    :cond_271
    iget-wide v4, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    .line 440
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->modulus:I

    if-nez v0, :cond_350

    .line 441
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x23

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 442
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 443
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x19

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 444
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 445
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v8, 0xf

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 446
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/16 v8, 0xa

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 447
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    const/4 v8, 0x5

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 448
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codecc/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lorg/apache/commons/codecc/binary/Base32;->bitWorkArea:J

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 449
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->currentLinePos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base32;->currentLinePos:I

    .line 450
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineLength:I

    if-lez v0, :cond_350

    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineLength:I

    iget v4, p0, Lorg/apache/commons/codecc/binary/Base32;->currentLinePos:I

    if-gt v0, v4, :cond_350

    .line 451
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->buffer:[B

    iget v5, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iget v0, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codecc/binary/Base32;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/codecc/binary/Base32;->pos:I

    .line 453
    iput v2, p0, Lorg/apache/commons/codecc/binary/Base32;->currentLinePos:I

    .line 432
    :cond_350
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_25a

    .line 382
    :pswitch_data_356
    .packed-switch 0x1
        :pswitch_49
        :pswitch_af
        :pswitch_12d
        :pswitch_1b8
    .end packed-switch
.end method

.method public isInAlphabet(B)Z
    .registers 4

    .prologue
    .line 468
    if-ltz p1, :cond_10

    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Base32;->decodeTable:[B

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
