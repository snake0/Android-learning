.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "SourceFile"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 73
    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_c} :catch_d

    .line 78
    return-void

    .line 75
    :catch_d
    move-exception v0

    .line 76
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 83
    :try_start_3
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    .line 84
    iget-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_1a} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_1a} :catch_22

    .line 91
    return-void

    .line 86
    :catch_1b
    move-exception v0

    .line 87
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :catch_22
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacSha1(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .registers 4

    .prologue
    .line 62
    new-instance v0, Lokio/HashingSource;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .registers 4

    .prologue
    .line 67
    new-instance v0, Lokio/HashingSource;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lokio/Source;)Lokio/HashingSource;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lokio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lokio/Source;)Lokio/HashingSource;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lokio/Source;)Lokio/HashingSource;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lokio/ByteString;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 132
    :goto_a
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 131
    :cond_f
    iget-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    goto :goto_a
.end method

.method public read(Lokio/Buffer;J)J
    .registers 13

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v5

    .line 96
    const-wide/16 v0, -0x1

    cmp-long v0, v5, v0

    if-eqz v0, :cond_50

    .line 97
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long v3, v0, v5

    .line 100
    iget-wide v1, p1, Lokio/Buffer;->size:J

    .line 101
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 102
    :goto_12
    cmp-long v7, v1, v3

    if-lez v7, :cond_20

    .line 103
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 104
    iget v7, v0, Lokio/Segment;->limit:I

    iget v8, v0, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v1, v7

    goto :goto_12

    .line 108
    :cond_20
    :goto_20
    iget-wide v7, p1, Lokio/Buffer;->size:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_50

    .line 109
    iget v7, v0, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v3, v7

    sub-long/2addr v3, v1

    long-to-int v3, v3

    .line 110
    iget-object v4, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_45

    .line 111
    iget-object v4, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, v0, Lokio/Segment;->data:[B

    iget v8, v0, Lokio/Segment;->limit:I

    sub-int/2addr v8, v3

    invoke-virtual {v4, v7, v3, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 115
    :goto_3a
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 117
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v3, v1

    .line 118
    goto :goto_20

    .line 113
    :cond_45
    iget-object v4, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    iget-object v7, v0, Lokio/Segment;->data:[B

    iget v8, v0, Lokio/Segment;->limit:I

    sub-int/2addr v8, v3

    invoke-virtual {v4, v7, v3, v8}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_3a

    .line 121
    :cond_50
    return-wide v5
.end method
