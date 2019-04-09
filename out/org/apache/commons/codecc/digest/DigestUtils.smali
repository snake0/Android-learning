.class public Lorg/apache/commons/codecc/digest/DigestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .registers 7

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 50
    new-array v1, v4, [B

    .line 51
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 53
    :goto_9
    const/4 v2, -0x1

    if-gt v0, v2, :cond_11

    .line 58
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 54
    :cond_11
    invoke-virtual {p0, v1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 55
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_9
.end method

.method private static getBytesUtf8(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 69
    invoke-static {p0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 88
    :catch_5
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getMd5Digest()Ljava/security/MessageDigest;
    .registers 1

    .prologue
    .line 101
    const-string v0, "MD5"

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha256Digest()Ljava/security/MessageDigest;
    .registers 1

    .prologue
    .line 115
    const-string v0, "SHA-256"

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha384Digest()Ljava/security/MessageDigest;
    .registers 1

    .prologue
    .line 129
    const-string v0, "SHA-384"

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha512Digest()Ljava/security/MessageDigest;
    .registers 1

    .prologue
    .line 143
    const-string v0, "SHA-512"

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getShaDigest()Ljava/security/MessageDigest;
    .registers 1

    .prologue
    .line 154
    const-string v0, "SHA"

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/io/InputStream;)[B
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 190
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)[B
    .registers 2

    .prologue
    .line 165
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha(Ljava/io/InputStream;)[B
    .registers 2

    .prologue
    .line 251
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getShaDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 262
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha([B)[B
    .registers 2

    .prologue
    .line 237
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getShaDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/io/InputStream;)[B
    .registers 2

    .prologue
    .line 294
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 309
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha256([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256([B)[B
    .registers 2

    .prologue
    .line 277
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha256(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha256(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384(Ljava/io/InputStream;)[B
    .registers 2

    .prologue
    .line 388
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 403
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha384([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384([B)[B
    .registers 2

    .prologue
    .line 371
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 435
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha384(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha384(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha384([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512(Ljava/io/InputStream;)[B
    .registers 2

    .prologue
    .line 482
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 497
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha512([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512([B)[B
    .registers 2

    .prologue
    .line 465
    invoke-static {}, Lorg/apache/commons/codecc/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha512(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 544
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha512(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha512([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 569
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 580
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 555
    invoke-static {p0}, Lorg/apache/commons/codecc/digest/DigestUtils;->sha([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
