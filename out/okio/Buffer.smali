.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokio/BufferedSink;
.implements Lokio/BufferedSource;


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_a
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .registers 8

    .prologue
    .line 1570
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1571
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_33

    .line 1572
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1573
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_20
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_33

    .line 1574
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1573
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_20

    .line 1577
    :cond_33
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result-object v0

    return-object v0

    .line 1578
    :catch_3c
    move-exception v0

    .line 1579
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .registers 9

    .prologue
    .line 1600
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1601
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1602
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3f

    .line 1603
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 1604
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_2c
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_3f

    .line 1605
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 1604
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2c

    .line 1608
    :cond_3f
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_46} :catch_48
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_46} :catch_4f

    move-result-object v0

    return-object v0

    .line 1609
    :catch_48
    move-exception v0

    .line 1610
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1611
    :catch_4f
    move-exception v0

    .line 1612
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .registers 12

    .prologue
    .line 1505
    iget v1, p1, Lokio/Segment;->limit:I

    .line 1506
    iget-object v0, p1, Lokio/Segment;->data:[B

    move v2, p2

    move-object v3, p1

    .line 1508
    :goto_6
    if-ge p4, p5, :cond_21

    .line 1509
    if-ne v2, v1, :cond_12

    .line 1510
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1511
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1512
    iget v2, v3, Lokio/Segment;->pos:I

    .line 1513
    iget v1, v3, Lokio/Segment;->limit:I

    .line 1516
    :cond_12
    aget-byte v4, v0, v2

    invoke-virtual {p3, p4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1c

    .line 1517
    const/4 v0, 0x0

    .line 1524
    :goto_1b
    return v0

    .line 1520
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 1521
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 1524
    :cond_21
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 11

    .prologue
    .line 243
    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_a
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    .line 253
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 254
    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 244
    :cond_17
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1f

    if-eqz p4, :cond_3b

    .line 245
    :cond_1f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 246
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 247
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 248
    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 249
    if-eqz p4, :cond_3c

    .line 256
    :cond_3b
    return-void

    .line 250
    :cond_3c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 1

    .prologue
    .line 68
    return-object p0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 811
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    .line 815
    return-void

    .line 812
    :catch_6
    move-exception v0

    .line 813
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .registers 7

    .prologue
    .line 1672
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1673
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    .line 1681
    :goto_e
    return-object v0

    .line 1675
    :cond_f
    new-instance v0, Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-direct {v0, v2}, Lokio/Segment;-><init>(Lokio/Segment;)V

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1676
    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1677
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_26
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_39

    .line 1678
    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    new-instance v3, Lokio/Segment;

    invoke-direct {v3, v0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1677
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_26

    .line 1680
    :cond_39
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iput-wide v2, v1, Lokio/Buffer;->size:J

    move-object v0, v1

    .line 1681
    goto :goto_e
.end method

.method public close()V
    .registers 1

    .prologue
    .line 1531
    return-void
.end method

.method public completeSegmentByteCount()J
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 264
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 265
    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    .line 273
    :cond_9
    :goto_9
    return-wide v0

    .line 268
    :cond_a
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 269
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_9

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_9

    .line 270
    iget v3, v2, Lokio/Segment;->limit:I

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_9
.end method

.method public copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 8

    .prologue
    .line 139
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    .line 147
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_c
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 149
    cmp-long v0, p4, v6

    if-nez v0, :cond_18

    .line 166
    :cond_17
    return-object p0

    .line 152
    :cond_18
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 153
    :goto_1a
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2e

    .line 154
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 153
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1a

    .line 158
    :cond_2e
    :goto_2e
    cmp-long v1, p4, v6

    if-lez v1, :cond_17

    .line 159
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    long-to-int v1, v1

    .line 160
    iget v2, v0, Lokio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 161
    iget-object v3, v0, Lokio/Segment;->data:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 162
    int-to-long v1, v2

    sub-long/2addr p4, v1

    .line 158
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v6

    goto :goto_2e
.end method

.method public copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    .line 171
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_c
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 173
    cmp-long v0, p4, v6

    if-nez v0, :cond_18

    .line 197
    :cond_17
    return-object p0

    .line 175
    :cond_18
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 178
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 179
    :goto_1f
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_33

    .line 180
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 179
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1f

    .line 184
    :cond_33
    :goto_33
    cmp-long v1, p4, v6

    if-lez v1, :cond_17

    .line 185
    new-instance v1, Lokio/Segment;

    invoke-direct {v1, v0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    .line 186
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->pos:I

    .line 187
    iget v2, v1, Lokio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lokio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lokio/Segment;->limit:I

    .line 188
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_65

    .line 189
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 193
    :goto_59
    iget v2, v1, Lokio/Segment;->limit:I

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int v1, v2, v1

    int-to-long v1, v1

    sub-long/2addr p4, v1

    .line 184
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v6

    goto :goto_33

    .line 191
    :cond_65
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_59
.end method

.method public emit()Lokio/BufferedSink;
    .registers 1

    .prologue
    .line 98
    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .registers 1

    .prologue
    .line 94
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1617
    if-ne p0, p1, :cond_8

    move v0, v6

    .line 1646
    :goto_7
    return v0

    .line 1618
    :cond_8
    instance-of v2, p1, Lokio/Buffer;

    if-nez v2, :cond_e

    move v0, v7

    goto :goto_7

    .line 1619
    :cond_e
    check-cast p1, Lokio/Buffer;

    .line 1620
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iget-wide v4, p1, Lokio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    move v0, v7

    goto :goto_7

    .line 1621
    :cond_1a
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_22

    move v0, v6

    goto :goto_7

    .line 1623
    :cond_22
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1624
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1625
    iget v3, v5, Lokio/Segment;->pos:I

    .line 1626
    iget v2, v4, Lokio/Segment;->pos:I

    .line 1628
    :goto_2a
    iget-wide v8, p0, Lokio/Buffer;->size:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_69

    .line 1629
    iget v8, v5, Lokio/Segment;->limit:I

    sub-int/2addr v8, v3

    iget v9, v4, Lokio/Segment;->limit:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 1631
    :goto_3c
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_57

    .line 1632
    iget-object v12, v5, Lokio/Segment;->data:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lokio/Segment;->data:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_51

    move v0, v7

    goto :goto_7

    .line 1631
    :cond_51
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_3c

    .line 1635
    :cond_57
    iget v8, v5, Lokio/Segment;->limit:I

    if-ne v3, v8, :cond_5f

    .line 1636
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 1637
    iget v3, v5, Lokio/Segment;->pos:I

    .line 1640
    :cond_5f
    iget v8, v4, Lokio/Segment;->limit:I

    if-ne v2, v8, :cond_67

    .line 1641
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 1642
    iget v2, v4, Lokio/Segment;->pos:I

    .line 1628
    :cond_67
    add-long/2addr v0, v10

    goto :goto_2a

    :cond_69
    move v0, v6

    .line 1646
    goto :goto_7
.end method

.method public exhausted()Z
    .registers 5

    .prologue
    .line 102
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1528
    return-void
.end method

.method public getByte(J)B
    .registers 9

    .prologue
    .line 299
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 300
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 301
    :goto_a
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 302
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1d

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 303
    :cond_1d
    int-to-long v1, v1

    sub-long/2addr p1, v1

    .line 300
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_a
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1650
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1651
    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 1659
    :goto_5
    return v0

    .line 1652
    :cond_6
    const/4 v0, 0x1

    .line 1654
    :cond_7
    iget v2, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    :goto_b
    if-ge v2, v4, :cond_19

    .line 1655
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lokio/Segment;->data:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1654
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    .line 1657
    :cond_19
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1658
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .prologue
    .line 1585
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .prologue
    .line 1590
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .prologue
    .line 1595
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .registers 8

    .prologue
    .line 1275
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 10

    .prologue
    .line 1283
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 17

    .prologue
    .line 1287
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_a

    cmp-long v0, p4, p2

    if-gez v0, :cond_30

    .line 1288
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size=%s fromIndex=%s toIndex=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    .line 1289
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_30
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p4, v0

    if-lez v0, :cond_38

    iget-wide p4, p0, Lokio/Buffer;->size:J

    .line 1293
    :cond_38
    cmp-long v0, p2, p4

    if-nez v0, :cond_3f

    const-wide/16 v0, -0x1

    .line 1339
    :goto_3e
    return-wide v0

    .line 1301
    :cond_3f
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1302
    if-nez v2, :cond_46

    .line 1304
    const-wide/16 v0, -0x1

    goto :goto_3e

    .line 1305
    :cond_46
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-gez v0, :cond_5e

    .line 1307
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-object v4, v2

    .line 1308
    :goto_50
    cmp-long v2, v0, p2

    if-lez v2, :cond_aa

    .line 1309
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1310
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_50

    .line 1314
    :cond_5e
    const-wide/16 v0, 0x0

    move-object v4, v2

    .line 1315
    :goto_61
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_aa

    .line 1316
    iget-object v0, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v0

    move-wide v0, v2

    .line 1317
    goto :goto_61

    .line 1334
    :cond_71
    iget v0, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v0, v3

    int-to-long v5, v0

    add-long v0, v1, v5

    .line 1336
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    move-wide v9, v0

    move-wide v1, v9

    .line 1323
    :goto_7e
    cmp-long v0, v1, p4

    if-gez v0, :cond_a7

    .line 1324
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 1325
    iget v0, v4, Lokio/Segment;->limit:I

    int-to-long v5, v0

    iget v0, v4, Lokio/Segment;->pos:I

    int-to-long v7, v0

    add-long/2addr v7, p4

    sub-long/2addr v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 1326
    iget v0, v4, Lokio/Segment;->pos:I

    int-to-long v6, v0

    add-long/2addr v6, p2

    sub-long/2addr v6, v1

    long-to-int v0, v6

    .line 1327
    :goto_97
    if-ge v0, v5, :cond_71

    .line 1328
    aget-byte v6, v3, v0

    if-ne v6, p1, :cond_a4

    .line 1329
    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long v0, v3, v1

    goto :goto_3e

    .line 1327
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 1339
    :cond_a7
    const-wide/16 v0, -0x1

    goto :goto_3e

    :cond_aa
    move-wide v1, v0

    goto :goto_7e
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4

    .prologue
    .line 1343
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 20

    .prologue
    .line 1347
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    :cond_e
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "fromIndex < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1356
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1357
    if-nez v3, :cond_25

    .line 1359
    const-wide/16 v1, -0x1

    .line 1398
    :goto_24
    return-wide v1

    .line 1360
    :cond_25
    move-object/from16 v0, p0

    iget-wide v1, v0, Lokio/Buffer;->size:J

    sub-long v1, v1, p2

    cmp-long v1, v1, p2

    if-gez v1, :cond_42

    .line 1362
    move-object/from16 v0, p0

    iget-wide v1, v0, Lokio/Buffer;->size:J

    move-object v5, v3

    .line 1363
    :goto_34
    cmp-long v3, v1, p2

    if-lez v3, :cond_55

    .line 1364
    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 1365
    iget v3, v5, Lokio/Segment;->limit:I

    iget v4, v5, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_34

    .line 1369
    :cond_42
    const-wide/16 v1, 0x0

    move-object v5, v3

    .line 1370
    :goto_45
    iget v3, v5, Lokio/Segment;->limit:I

    iget v4, v5, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v6, v3, p2

    if-gez v6, :cond_55

    .line 1371
    iget-object v1, v5, Lokio/Segment;->next:Lokio/Segment;

    move-object v5, v1

    move-wide v1, v3

    .line 1372
    goto :goto_45

    .line 1379
    :cond_55
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v10

    .line 1380
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v6

    .line 1381
    move-object/from16 v0, p0

    iget-wide v3, v0, Lokio/Buffer;->size:J

    int-to-long v7, v6

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x1

    add-long v11, v3, v7

    move-wide v8, v1

    move-object v2, v5

    .line 1382
    :goto_6c
    cmp-long v1, v8, v11

    if-gez v1, :cond_b2

    .line 1384
    iget-object v13, v2, Lokio/Segment;->data:[B

    .line 1385
    iget v1, v2, Lokio/Segment;->limit:I

    int-to-long v3, v1

    iget v1, v2, Lokio/Segment;->pos:I

    int-to-long v14, v1

    add-long/2addr v14, v11

    sub-long/2addr v14, v8

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v14, v3

    .line 1386
    iget v1, v2, Lokio/Segment;->pos:I

    int-to-long v3, v1

    add-long v3, v3, p2

    sub-long/2addr v3, v8

    long-to-int v1, v3

    move v7, v1

    :goto_87
    if-ge v7, v14, :cond_a5

    .line 1387
    aget-byte v1, v13, v7

    if-ne v1, v10, :cond_a1

    add-int/lit8 v3, v7, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1388
    iget v1, v2, Lokio/Segment;->pos:I

    sub-int v1, v7, v1

    int-to-long v1, v1

    add-long/2addr v1, v8

    goto :goto_24

    .line 1386
    :cond_a1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_87

    .line 1393
    :cond_a5
    iget v1, v2, Lokio/Segment;->limit:I

    iget v3, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v3

    int-to-long v3, v1

    add-long/2addr v3, v8

    .line 1395
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v8, v3

    move-wide/from16 p2, v3

    .line 1396
    goto :goto_6c

    .line 1398
    :cond_b2
    const-wide/16 v1, -0x1

    goto/16 :goto_24
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4

    .prologue
    .line 1402
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 15

    .prologue
    .line 1406
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_e
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1415
    if-nez v2, :cond_15

    .line 1417
    const-wide/16 v0, -0x1

    .line 1475
    :goto_14
    return-wide v0

    .line 1418
    :cond_15
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-gez v0, :cond_2d

    .line 1420
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-object v4, v2

    .line 1421
    :goto_1f
    cmp-long v2, v0, p2

    if-lez v2, :cond_40

    .line 1422
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1423
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1f

    .line 1427
    :cond_2d
    const-wide/16 v0, 0x0

    move-object v4, v2

    .line 1428
    :goto_30
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_40

    .line 1429
    iget-object v0, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v0

    move-wide v0, v2

    .line 1430
    goto :goto_30

    .line 1438
    :cond_40
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7d

    .line 1440
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v3

    .line 1441
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 1442
    :goto_51
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, v6

    if-gez v2, :cond_b8

    .line 1443
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 1444
    iget v2, v4, Lokio/Segment;->pos:I

    int-to-long v7, v2

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int v2, v7

    iget v7, v4, Lokio/Segment;->limit:I

    :goto_61
    if-ge v2, v7, :cond_72

    .line 1445
    aget-byte v8, v6, v2

    .line 1446
    if-eq v8, v3, :cond_69

    if-ne v8, v5, :cond_6f

    .line 1447
    :cond_69
    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_14

    .line 1444
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 1452
    :cond_72
    iget v2, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v0, v6

    .line 1454
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    .line 1455
    goto :goto_51

    .line 1458
    :cond_7d
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v5

    .line 1459
    :goto_81
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_b8

    .line 1460
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 1461
    iget v2, v4, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iget v7, v4, Lokio/Segment;->limit:I

    move v3, v2

    :goto_92
    if-ge v3, v7, :cond_ad

    .line 1462
    aget-byte v8, v6, v3

    .line 1463
    array-length v9, v5

    const/4 v2, 0x0

    :goto_98
    if-ge v2, v9, :cond_a9

    aget-byte v10, v5, v2

    .line 1464
    if-ne v8, v10, :cond_a6

    iget v2, v4, Lokio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto/16 :goto_14

    .line 1463
    :cond_a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 1461
    :cond_a9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_92

    .line 1469
    :cond_ad
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1471
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    .line 1472
    goto :goto_81

    .line 1475
    :cond_b8
    const-wide/16 v0, -0x1

    goto/16 :goto_14
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 114
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public md5()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1550
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 72
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .registers 10

    .prologue
    .line 1479
    const/4 v4, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 1484
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1a

    if-ltz p4, :cond_1a

    if-ltz p5, :cond_1a

    iget-wide v1, p0, Lokio/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1a

    .line 1488
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1b

    .line 1496
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v1, v0

    .line 1491
    :goto_1c
    if-ge v1, p5, :cond_2f

    .line 1492
    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 1491
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1496
    :cond_2f
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public read([B)I
    .registers 4

    .prologue
    .line 774
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    .prologue
    .line 787
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 789
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 790
    if-nez v1, :cond_d

    const/4 v0, -0x1

    .line 802
    :cond_c
    :goto_c
    return v0

    .line 791
    :cond_d
    iget v0, v1, Lokio/Segment;->limit:I

    iget v2, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 792
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->pos:I

    .line 795
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 797
    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_c

    .line 798
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 799
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_c
.end method

.method public read(Lokio/Buffer;J)J
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1266
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_c
    cmp-long v0, p2, v2

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_29
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    const-wide/16 p2, -0x1

    .line 1271
    :goto_31
    return-wide p2

    .line 1269
    :cond_32
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3a

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1270
    :cond_3a
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_31
.end method

.method public readAll(Lokio/Sink;)J
    .registers 6

    .prologue
    .line 582
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 583
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 584
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 586
    :cond_b
    return-wide v0
.end method

.method public readByte()B
    .registers 10

    .prologue
    .line 277
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_10
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 280
    iget v1, v0, Lokio/Segment;->pos:I

    .line 281
    iget v2, v0, Lokio/Segment;->limit:I

    .line 283
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 284
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 285
    iget-wide v5, p0, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 287
    if-ne v4, v2, :cond_2f

    .line 288
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 289
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 294
    :goto_2e
    return v1

    .line 291
    :cond_2f
    iput v4, v0, Lokio/Segment;->pos:I

    goto :goto_2e
.end method

.method public readByteArray()[B
    .registers 3

    .prologue
    .line 756
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 757
    :catch_7
    move-exception v0

    .line 758
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 9

    .prologue
    .line 763
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 764
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    .line 765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_28
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 769
    invoke-virtual {p0, v0}, Lokio/Buffer;->readFully([B)V

    .line 770
    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3

    .prologue
    .line 529
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 5

    .prologue
    .line 533
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 20

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_12
    const-wide/16 v7, 0x0

    .line 419
    const/4 v6, 0x0

    .line 420
    const/4 v5, 0x0

    .line 421
    const/4 v4, 0x0

    .line 423
    const-wide v10, -0xcccccccccccccccL

    .line 424
    const-wide/16 v2, -0x7

    .line 427
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 429
    iget-object v13, v12, Lokio/Segment;->data:[B

    .line 430
    iget v9, v12, Lokio/Segment;->pos:I

    .line 431
    iget v14, v12, Lokio/Segment;->limit:I

    .line 433
    :goto_28
    if-ge v9, v14, :cond_b4

    .line 434
    aget-byte v15, v13, v9

    .line 435
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_87

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v15, v0, :cond_87

    .line 436
    rsub-int/lit8 v16, v15, 0x30

    .line 439
    cmp-long v17, v7, v10

    if-ltz v17, :cond_4b

    cmp-long v17, v7, v10

    if-nez v17, :cond_7a

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v17, v2

    if-gez v17, :cond_7a

    .line 440
    :cond_4b
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v7, v8}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 441
    if-nez v5, :cond_5d

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 442
    :cond_5d
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    :cond_7a
    const-wide/16 v17, 0xa

    mul-long v7, v7, v17

    .line 445
    move/from16 v0, v16

    int-to-long v15, v0

    add-long/2addr v7, v15

    .line 433
    :goto_82
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 446
    :cond_87
    const/16 v16, 0x2d

    move/from16 v0, v16

    if-ne v15, v0, :cond_94

    if-nez v6, :cond_94

    .line 447
    const/4 v5, 0x1

    .line 448
    const-wide/16 v15, 0x1

    sub-long/2addr v2, v15

    goto :goto_82

    .line 450
    :cond_94
    if-nez v6, :cond_b3

    .line 451
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 452
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_b3
    const/4 v4, 0x1

    .line 460
    :cond_b4
    if-ne v9, v14, :cond_d6

    .line 461
    invoke-virtual {v12}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 462
    invoke-static {v12}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 466
    :goto_c1
    if-nez v4, :cond_c9

    move-object/from16 v0, p0

    iget-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v9, :cond_1e

    .line 468
    :cond_c9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    int-to-long v9, v6

    sub-long/2addr v2, v9

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/Buffer;->size:J

    .line 469
    if-eqz v5, :cond_d9

    :goto_d5
    return-wide v7

    .line 464
    :cond_d6
    iput v9, v12, Lokio/Segment;->pos:I

    goto :goto_c1

    .line 469
    :cond_d9
    neg-long v7, v7

    goto :goto_d5
.end method

.method public readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .registers 5

    .prologue
    .line 231
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 232
    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .registers 7

    .prologue
    .line 237
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 239
    return-object p0
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 6

    .prologue
    .line 574
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_11

    .line 575
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 576
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 578
    :cond_11
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 579
    return-void
.end method

.method public readFully([B)V
    .registers 5

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 779
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 780
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    .line 781
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 782
    :cond_13
    add-int/2addr v0, v1

    .line 783
    goto :goto_1

    .line 784
    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 16

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 473
    iget-wide v1, p0, Lokio/Buffer;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move v1, v0

    move-wide v2, v4

    .line 480
    :cond_13
    iget-object v10, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 482
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 483
    iget v6, v10, Lokio/Segment;->pos:I

    .line 484
    iget v12, v10, Lokio/Segment;->limit:I

    move v7, v6

    .line 486
    :goto_1c
    if-ge v7, v12, :cond_95

    .line 489
    aget-byte v8, v11, v7

    .line 490
    const/16 v6, 0x30

    if-lt v8, v6, :cond_5b

    const/16 v6, 0x39

    if-gt v8, v6, :cond_5b

    .line 491
    add-int/lit8 v6, v8, -0x30

    .line 507
    :goto_2a
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v13, v2

    cmp-long v9, v13, v4

    if-eqz v9, :cond_ae

    .line 508
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 509
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_5b
    const/16 v6, 0x61

    if-lt v8, v6, :cond_68

    const/16 v6, 0x66

    if-gt v8, v6, :cond_68

    .line 493
    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_2a

    .line 494
    :cond_68
    const/16 v6, 0x41

    if-lt v8, v6, :cond_75

    const/16 v6, 0x46

    if-gt v8, v6, :cond_75

    .line 495
    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_2a

    .line 497
    :cond_75
    if-nez v1, :cond_94

    .line 498
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_94
    const/4 v0, 0x1

    .line 516
    :cond_95
    if-ne v7, v12, :cond_ba

    .line 517
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 518
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 522
    :goto_a0
    if-nez v0, :cond_a6

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_13

    .line 524
    :cond_a6
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    sub-long v0, v4, v0

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 525
    return-wide v2

    .line 512
    :cond_ae
    const/4 v8, 0x4

    shl-long/2addr v2, v8

    .line 513
    int-to-long v8, v6

    or-long/2addr v8, v2

    .line 486
    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    move v7, v2

    move-wide v2, v8

    goto/16 :goto_1c

    .line 520
    :cond_ba
    iput v7, v10, Lokio/Segment;->pos:I

    goto :goto_a0
.end method

.method public readInt()I
    .registers 9

    .prologue
    const-wide/16 v6, 0x4

    .line 337
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_23
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 340
    iget v0, v1, Lokio/Segment;->pos:I

    .line 341
    iget v2, v1, Lokio/Segment;->limit:I

    .line 344
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_50

    .line 345
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 346
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 347
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 348
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 365
    :goto_4f
    return v0

    .line 351
    :cond_50
    iget-object v3, v1, Lokio/Segment;->data:[B

    .line 352
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 356
    iget-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 358
    if-ne v5, v2, :cond_84

    .line 359
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 360
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_4f

    .line 362
    :cond_84
    iput v5, v1, Lokio/Segment;->pos:I

    goto :goto_4f
.end method

.method public readIntLe()I
    .registers 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 16

    .prologue
    const-wide v4, 0xffffffffL

    const-wide/16 v13, 0x8

    const/16 v12, 0x20

    const/16 v11, 0x8

    const-wide/16 v9, 0xff

    .line 369
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v13

    if-gez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_2e
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 372
    iget v0, v2, Lokio/Segment;->pos:I

    .line 373
    iget v3, v2, Lokio/Segment;->limit:I

    .line 376
    sub-int v1, v3, v0

    if-ge v1, v11, :cond_47

    .line 377
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    shl-long/2addr v0, v12

    .line 378
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 399
    :goto_46
    return-wide v0

    .line 381
    :cond_47
    iget-object v1, v2, Lokio/Segment;->data:[B

    .line 382
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v5, v0

    and-long/2addr v5, v9

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v9

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long v4, v5, v7

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    and-long/2addr v7, v9

    const/16 v0, 0x28

    shl-long/2addr v7, v0

    or-long/2addr v4, v7

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    shl-long/2addr v6, v12

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    and-long/2addr v7, v9

    const/16 v0, 0x18

    shl-long/2addr v7, v0

    or-long/2addr v4, v7

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    and-long/2addr v7, v9

    shl-long/2addr v7, v11

    or-long/2addr v4, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v0, v1, v6

    int-to-long v0, v0

    and-long/2addr v0, v9

    or-long/2addr v0, v4

    .line 390
    iget-wide v4, p0, Lokio/Buffer;->size:J

    sub-long/2addr v4, v13

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 392
    if-ne v7, v3, :cond_a3

    .line 393
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 394
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_46

    .line 396
    :cond_a3
    iput v7, v2, Lokio/Segment;->pos:I

    goto :goto_46
.end method

.method public readLongLe()J
    .registers 3

    .prologue
    .line 411
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 9

    .prologue
    const-wide/16 v6, 0x2

    .line 308
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_23
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 311
    iget v1, v0, Lokio/Segment;->pos:I

    .line 312
    iget v2, v0, Lokio/Segment;->limit:I

    .line 315
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3f

    .line 316
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 317
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 318
    int-to-short v0, v0

    .line 333
    :goto_3e
    return v0

    .line 321
    :cond_3f
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 322
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 324
    iget-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 326
    if-ne v5, v2, :cond_62

    .line 327
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 328
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 333
    :goto_60
    int-to-short v0, v1

    goto :goto_3e

    .line 330
    :cond_62
    iput v5, v0, Lokio/Segment;->pos:I

    goto :goto_60
.end method

.method public readShortLe()S
    .registers 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 610
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 611
    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    .line 613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_32
    cmp-long v0, p1, v2

    if-nez v0, :cond_39

    const-string v0, ""

    .line 632
    :cond_38
    :goto_38
    return-object v0

    .line 617
    :cond_39
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 618
    iget v0, v1, Lokio/Segment;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_50

    .line 620
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_38

    .line 623
    :cond_50
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 624
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->pos:I

    .line 625
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 627
    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_38

    .line 628
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 629
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_38
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 603
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 604
    :catch_7
    move-exception v0

    .line 605
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    .prologue
    .line 591
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 592
    :catch_9
    move-exception v0

    .line 593
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 598
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    const/16 v1, 0x80

    const/4 v3, 0x1

    const v5, 0xfffd

    .line 680
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 682
    :cond_14
    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 687
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_61

    .line 689
    and-int/lit8 v2, v6, 0x7f

    .line 691
    const/4 v0, 0x0

    move v4, v2

    move v2, v3

    .line 717
    :goto_21
    iget-wide v7, p0, Lokio/Buffer;->size:J

    int-to-long v9, v2

    cmp-long v7, v7, v9

    if-gez v7, :cond_8d

    .line 718
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (to read code point prefixed 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 719
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_61
    and-int/lit16 v0, v6, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_6e

    .line 695
    and-int/lit8 v2, v6, 0x1f

    .line 696
    const/4 v0, 0x2

    move v4, v2

    move v2, v0

    move v0, v1

    .line 697
    goto :goto_21

    .line 699
    :cond_6e
    and-int/lit16 v0, v6, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_7a

    .line 701
    and-int/lit8 v4, v6, 0xf

    .line 702
    const/4 v2, 0x3

    .line 703
    const/16 v0, 0x800

    goto :goto_21

    .line 705
    :cond_7a
    and-int/lit16 v0, v6, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_86

    .line 707
    and-int/lit8 v4, v6, 0x7

    .line 708
    const/4 v2, 0x4

    .line 709
    const/high16 v0, 0x10000

    goto :goto_21

    .line 713
    :cond_86
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    move v0, v5

    .line 751
    :goto_8c
    return v0

    :cond_8d
    move v11, v3

    move v3, v4

    move v4, v11

    .line 725
    :goto_90
    if-ge v4, v2, :cond_ab

    .line 726
    int-to-long v6, v4

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 727
    and-int/lit16 v7, v6, 0xc0

    if-ne v7, v1, :cond_a5

    .line 729
    shl-int/lit8 v3, v3, 0x6

    .line 730
    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    .line 725
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_90

    .line 732
    :cond_a5
    int-to-long v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    move v0, v5

    .line 733
    goto :goto_8c

    .line 737
    :cond_ab
    int-to-long v1, v2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 739
    const v1, 0x10ffff

    if-le v3, v1, :cond_b6

    move v0, v5

    .line 740
    goto :goto_8c

    .line 743
    :cond_b6
    const v1, 0xd800

    if-lt v3, v1, :cond_c2

    const v1, 0xdfff

    if-gt v3, v1, :cond_c2

    move v0, v5

    .line 744
    goto :goto_8c

    .line 747
    :cond_c2
    if-ge v3, v0, :cond_c6

    move v0, v5

    .line 748
    goto :goto_8c

    :cond_c6
    move v0, v3

    .line 751
    goto :goto_8c
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 636
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 638
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    .line 639
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 642
    :goto_1a
    return-object v0

    .line 639
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    .line 642
    :cond_1d
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v2, 0x1

    .line 665
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    .line 667
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 668
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 675
    :goto_1d
    return-object v0

    .line 673
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    goto :goto_1d
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3

    .prologue
    .line 646
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 15

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    .line 650
    cmp-long v0, p1, v2

    if-gez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_28
    cmp-long v0, p1, v4

    if-nez v0, :cond_3c

    :goto_2c
    move-object v0, p0

    .line 652
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v6

    .line 653
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3f

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    .line 656
    :goto_3b
    return-object v0

    .line 651
    :cond_3c
    add-long v4, p1, v10

    goto :goto_2c

    .line 654
    :cond_3f
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5c

    sub-long v6, v4, v10

    .line 655
    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_5c

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, v1, :cond_5c

    .line 656
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 658
    :cond_5c
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 659
    const-wide/16 v4, 0x20

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 660
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 661
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .registers 5

    .prologue
    .line 110
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public require(J)V
    .registers 5

    .prologue
    .line 106
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 107
    :cond_c
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1539
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1545
    :goto_8
    return-object v0

    .line 1540
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_22
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_35

    .line 1543
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_22

    :cond_35
    move-object v0, v1

    .line 1545
    goto :goto_8
.end method

.method public select(Lokio/Options;)I
    .registers 15

    .prologue
    const/4 v4, 0x0

    .line 537
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 538
    if-nez v1, :cond_c

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {p1, v0}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 552
    :goto_b
    return v0

    .line 540
    :cond_c
    iget-object v7, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 541
    array-length v8, v7

    move v6, v4

    :goto_10
    if-ge v6, v8, :cond_40

    .line 542
    aget-object v3, v7, v6

    .line 543
    iget-wide v9, p0, Lokio/Buffer;->size:J

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v9, v11

    if-ltz v0, :cond_3d

    iget v2, v1, Lokio/Segment;->pos:I

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 545
    :try_start_2c
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_34} :catch_36

    move v0, v6

    .line 546
    goto :goto_b

    .line 547
    :catch_36
    move-exception v0

    .line 548
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 541
    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 552
    :cond_40
    const/4 v0, -0x1

    goto :goto_b
.end method

.method selectPrefix(Lokio/Options;)I
    .registers 15

    .prologue
    const/4 v4, 0x0

    .line 561
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 562
    iget-object v7, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 563
    array-length v8, v7

    move v6, v4

    :goto_7
    if-ge v6, v8, :cond_27

    .line 564
    aget-object v3, v7, v6

    .line 565
    iget-wide v9, p0, Lokio/Buffer;->size:J

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v5, v9

    .line 566
    if-eqz v5, :cond_22

    iget v2, v1, Lokio/Segment;->pos:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    move v0, v6

    .line 570
    :goto_23
    return v0

    .line 563
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 570
    :cond_27
    const/4 v0, -0x1

    goto :goto_23
.end method

.method public sha1()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1555
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1560
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha512()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1565
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 8

    .prologue
    .line 819
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_44

    .line 820
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 822
    :cond_10
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 823
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 824
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 825
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->pos:I

    .line 827
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 828
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 829
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 830
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 833
    :cond_44
    return-void
.end method

.method public snapshot()Lokio/ByteString;
    .registers 5

    .prologue
    .line 1686
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 1687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1689
    :cond_24
    iget-wide v0, p0, Lokio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(I)Lokio/ByteString;
    .registers 3

    .prologue
    .line 1696
    if-nez p1, :cond_5

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1697
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    goto :goto_4
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 1534
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1667
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .registers 5

    .prologue
    const/16 v2, 0x2000

    .line 1160
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    if-le p1, v2, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1162
    :cond_d
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_22

    .line 1163
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1164
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1171
    :cond_21
    :goto_21
    return-object v0

    .line 1167
    :cond_22
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1168
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-nez v1, :cond_21

    .line 1169
    :cond_2f
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    goto :goto_21
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .registers 4

    .prologue
    .line 836
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_a
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    .line 838
    return-object p0
.end method

.method public write([B)Lokio/Buffer;
    .registers 4

    .prologue
    .line 979
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_a
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .registers 10

    .prologue
    .line 984
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 987
    add-int v0, p2, p3

    .line 988
    :goto_13
    if-ge p2, v0, :cond_32

    .line 989
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 991
    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 992
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 994
    add-int/2addr p2, v2

    .line 995
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/Segment;->limit:I

    goto :goto_13

    .line 998
    :cond_32
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 999
    return-object p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .registers 8

    .prologue
    .line 1012
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_18

    .line 1013
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 1014
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1015
    :cond_16
    sub-long/2addr p2, v0

    .line 1016
    goto :goto_0

    .line 1017
    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .registers 5

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    .line 1225
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_c
    if-ne p1, p0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_16
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1229
    :goto_1c
    cmp-long v0, p2, v2

    if-lez v0, :cond_5e

    .line 1231
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6e

    .line 1232
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object v1, v0

    .line 1233
    :goto_37
    if-eqz v1, :cond_65

    iget-boolean v0, v1, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_65

    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_62

    .line 1234
    const/4 v0, 0x0

    :goto_46
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_65

    .line 1236
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1237
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1238
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1263
    :cond_5e
    return-void

    .line 1232
    :cond_5f
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_37

    .line 1234
    :cond_62
    iget v0, v1, Lokio/Segment;->pos:I

    goto :goto_46

    .line 1243
    :cond_65
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1248
    :cond_6e
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1249
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1250
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1251
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_98

    .line 1252
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1253
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v6, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v6, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1259
    :goto_8c
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1260
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1261
    sub-long/2addr p2, v4

    .line 1262
    goto :goto_1c

    .line 1255
    :cond_98
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1256
    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Lokio/Segment;->compact()V

    goto :goto_8c
.end method

.method public writeAll(Lokio/Source;)J
    .registers 8

    .prologue
    .line 1003
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_a
    const-wide/16 v0, 0x0

    .line 1005
    :goto_c
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    .line 1006
    add-long/2addr v0, v2

    goto :goto_c

    .line 1008
    :cond_1a
    return-wide v0
.end method

.method public writeByte(I)Lokio/Buffer;
    .registers 6

    .prologue
    .line 1021
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1022
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 1023
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1024
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .registers 16

    .prologue
    const/4 v0, 0x1

    const-wide/16 v11, 0xa

    const-wide/16 v9, 0x0

    .line 1081
    cmp-long v1, p1, v9

    if-nez v1, :cond_10

    .line 1083
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1133
    :goto_f
    return-object p0

    .line 1086
    :cond_10
    const/4 v1, 0x0

    .line 1087
    cmp-long v2, p1, v9

    if-gez v2, :cond_117

    .line 1088
    neg-long v2, p1

    .line 1089
    cmp-long v1, v2, v9

    if-gez v1, :cond_21

    .line 1090
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    goto :goto_f

    :cond_21
    move v4, v0

    .line 1096
    :goto_22
    const-wide/32 v5, 0x5f5e100

    cmp-long v1, v2, v5

    if-gez v1, :cond_81

    .line 1099
    const-wide/16 v5, 0x2710

    cmp-long v1, v2, v5

    if-gez v1, :cond_63

    .line 1100
    const-wide/16 v5, 0x64

    cmp-long v1, v2, v5

    if-gez v1, :cond_59

    cmp-long v1, v2, v11

    if-gez v1, :cond_57

    .line 1115
    :goto_39
    if-eqz v4, :cond_3d

    .line 1116
    add-int/lit8 v0, v0, 0x1

    .line 1119
    :cond_3d
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v5

    .line 1120
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1121
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    .line 1122
    :goto_46
    cmp-long v7, v2, v9

    if-eqz v7, :cond_101

    .line 1123
    rem-long v7, v2, v11

    long-to-int v7, v7

    .line 1124
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lokio/Buffer;->DIGITS:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 1125
    div-long/2addr v2, v11

    goto :goto_46

    .line 1100
    :cond_57
    const/4 v0, 0x2

    goto :goto_39

    .line 1101
    :cond_59
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_61

    const/4 v0, 0x3

    goto :goto_39

    :cond_61
    const/4 v0, 0x4

    goto :goto_39

    .line 1103
    :cond_63
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_75

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_73

    const/4 v0, 0x5

    goto :goto_39

    :cond_73
    const/4 v0, 0x6

    goto :goto_39

    .line 1104
    :cond_75
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_7e

    const/4 v0, 0x7

    goto :goto_39

    :cond_7e
    const/16 v0, 0x8

    goto :goto_39

    .line 1106
    :cond_81
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_af

    .line 1107
    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_a0

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_9d

    const/16 v0, 0x9

    goto :goto_39

    :cond_9d
    const/16 v0, 0xa

    goto :goto_39

    .line 1108
    :cond_a0
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ac

    const/16 v0, 0xb

    goto :goto_39

    :cond_ac
    const/16 v0, 0xc

    goto :goto_39

    .line 1110
    :cond_af
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d6

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c5

    const/16 v0, 0xd

    goto/16 :goto_39

    .line 1111
    :cond_c5
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d2

    const/16 v0, 0xe

    goto/16 :goto_39

    :cond_d2
    const/16 v0, 0xf

    goto/16 :goto_39

    .line 1113
    :cond_d6
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f0

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ec

    const/16 v0, 0x10

    goto/16 :goto_39

    :cond_ec
    const/16 v0, 0x11

    goto/16 :goto_39

    .line 1114
    :cond_f0
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_fd

    const/16 v0, 0x12

    goto/16 :goto_39

    :cond_fd
    const/16 v0, 0x13

    goto/16 :goto_39

    .line 1127
    :cond_101
    if-eqz v4, :cond_109

    .line 1128
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 1131
    :cond_109
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Lokio/Segment;->limit:I

    .line 1132
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto/16 :goto_f

    :cond_117
    move v4, v1

    move-wide v2, p1

    goto/16 :goto_22
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .registers 11

    .prologue
    .line 1137
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1139
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1152
    :goto_c
    return-object p0

    .line 1142
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1144
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1145
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1146
    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lokio/Segment;->limit:I

    :goto_26
    if-lt v0, v4, :cond_37

    .line 1147
    sget-object v5, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1148
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1146
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1150
    :cond_37
    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Lokio/Segment;->limit:I

    .line 1151
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto :goto_c
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .registers 7

    .prologue
    .line 1043
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1044
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1045
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1046
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1047
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1048
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1049
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1050
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1051
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1052
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .registers 3

    .prologue
    .line 1056
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .registers 12

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 1060
    invoke-virtual {p0, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1061
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1062
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1063
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1064
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1065
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1066
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1067
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1068
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1069
    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1070
    add-int/lit8 v2, v3, 0x1

    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1071
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1072
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1073
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .registers 5

    .prologue
    .line 1077
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .registers 7

    .prologue
    .line 1028
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1029
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1030
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1031
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1032
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1033
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1034
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1035
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .registers 3

    .prologue
    .line 1039
    int-to-short v0, p1

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 8

    .prologue
    .line 963
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_a
    if-gez p2, :cond_25

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_25
    if-ge p3, p2, :cond_4a

    .line 966
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_77

    .line 969
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 970
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_77
    if-nez p4, :cond_81

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_81
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    .line 975
    :goto_8d
    return-object v0

    .line 974
    :cond_8e
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 975
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    goto :goto_8d
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 6

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 4

    .prologue
    .line 202
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    .line 207
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_c
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 210
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 211
    :goto_14
    cmp-long v0, p2, v2

    if-lez v0, :cond_48

    .line 212
    iget v0, v1, Lokio/Segment;->limit:I

    iget v4, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v4

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 213
    iget-object v4, v1, Lokio/Segment;->data:[B

    iget v5, v1, Lokio/Segment;->pos:I

    invoke-virtual {p1, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 215
    iget v4, v1, Lokio/Segment;->pos:I

    add-int/2addr v4, v0

    iput v4, v1, Lokio/Segment;->pos:I

    .line 216
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 217
    int-to-long v4, v0

    sub-long/2addr p2, v4

    .line 219
    iget v0, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v0, v4, :cond_49

    .line 221
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 222
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :goto_46
    move-object v1, v0

    .line 224
    goto :goto_14

    .line 226
    :cond_48
    return-object p0

    :cond_49
    move-object v0, v1

    goto :goto_46
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .registers 13

    .prologue
    const v8, 0xdfff

    const/16 v7, 0x80

    .line 846
    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_f
    if-gez p2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_2a
    if-ge p3, p2, :cond_4f

    .line 849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_90

    .line 852
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 853
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_7c
    const/4 v0, 0x0

    .line 898
    :goto_7d
    const v2, 0xdbff

    if-gt v1, v2, :cond_89

    const v2, 0xdc00

    if-lt v0, v2, :cond_89

    if-le v0, v8, :cond_115

    .line 899
    :cond_89
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 900
    add-int/lit8 p2, p2, 0x1

    .line 857
    :cond_90
    :goto_90
    if-ge p2, p3, :cond_146

    .line 858
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 860
    if-ge v1, v7, :cond_d3

    .line 861
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 862
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 863
    iget v0, v2, Lokio/Segment;->limit:I

    sub-int v4, v0, p2

    .line 864
    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 867
    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    .line 871
    :goto_b0
    if-ge v0, v5, :cond_b8

    .line 872
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 873
    if-lt v6, v7, :cond_cb

    .line 877
    :cond_b8
    add-int v1, v0, v4

    iget v3, v2, Lokio/Segment;->limit:I

    sub-int/2addr v1, v3

    .line 878
    iget v3, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lokio/Segment;->limit:I

    .line 879
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long v1, v2, v4

    iput-wide v1, p0, Lokio/Buffer;->size:J

    :goto_c9
    move p2, v0

    .line 916
    goto :goto_90

    .line 874
    :cond_cb
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_b0

    .line 881
    :cond_d3
    const/16 v0, 0x800

    if-ge v1, v0, :cond_e8

    .line 883
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 884
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 885
    add-int/lit8 v0, p2, 0x1

    goto :goto_c9

    .line 887
    :cond_e8
    const v0, 0xd800

    if-lt v1, v0, :cond_ef

    if-le v1, v8, :cond_109

    .line 889
    :cond_ef
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 890
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 891
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 892
    add-int/lit8 v0, p2, 0x1

    goto :goto_c9

    .line 897
    :cond_109
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_7c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_7d

    .line 907
    :cond_115
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 910
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 911
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 912
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 913
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 914
    add-int/lit8 v0, p2, 0x2

    goto :goto_c9

    .line 918
    :cond_146
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .registers 5

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .registers 5

    .prologue
    .line 922
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 924
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 954
    :goto_7
    return-object p0

    .line 926
    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    .line 928
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 929
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 931
    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_47

    .line 932
    const v0, 0xd800

    if-lt p1, v0, :cond_2f

    const v0, 0xdfff

    if-gt p1, v0, :cond_2f

    .line 934
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 937
    :cond_2f
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 938
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 939
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 942
    :cond_47
    const v0, 0x10ffff

    if-gt p1, v0, :cond_6d

    .line 944
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 945
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 946
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 947
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 950
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 951
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method
