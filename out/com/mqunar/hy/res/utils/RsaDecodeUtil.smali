.class public Lcom/mqunar/hy/res/utils/RsaDecodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static map:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static publicKey:Ljava/security/interfaces/RSAPublicKey; = null

.field private static final rsaLength:I = 0x3c


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->map:Ljava/util/Map;

    .line 21
    const-string v0, "RSA"

    const-string v1, "MEcwDQYJKoZIhvcNAQEBBQADNgAwMwIsAMtB+Gi1Yrzo48WkI8SJiWMwdiHkeXrq\nbmHMSZGM56qx2BmMjyi4zuJEhP8CAwEAAQ=="

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 31
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_c

    :cond_a
    move-object v0, p0

    .line 45
    :cond_b
    :goto_b
    return-object v0

    .line 34
    :cond_c
    sget-object v0, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    if-nez v0, :cond_b

    .line 36
    sget-object v1, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_b

    .line 38
    :try_start_1a
    sget-object v1, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p0, v1}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->decryptByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_26

    goto :goto_b

    .line 40
    :catch_26
    move-exception v1

    .line 41
    const-string v2, "\u89e3\u5bc6\u51fa\u9519"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method private static decryptByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 57
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 58
    const/4 v1, 0x2

    invoke-virtual {v2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 60
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v3, v1, 0x8

    .line 61
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 65
    const-string v1, ""

    .line 66
    invoke-static {v4, v3}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->splitArray([BI)[[B

    move-result-object v3

    .line 67
    array-length v4, v3

    :goto_20
    if-ge v0, v4, :cond_41

    aget-object v5, v3, v0

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 70
    :cond_41
    return-object v1
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 25
    invoke-static {p0}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p1}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 4

    .prologue
    .line 76
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 77
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 79
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_15

    .line 82
    :goto_14
    return-object v0

    .line 81
    :catch_15
    move-exception v0

    .line 82
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static splitArray([BI)[[B
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 113
    array-length v0, p0

    div-int v3, v0, p1

    .line 114
    array-length v0, p0

    rem-int v4, v0, p1

    .line 116
    if-eqz v4, :cond_2e

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_a
    add-int v2, v3, v0

    new-array v5, v2, [[B

    move v2, v1

    .line 121
    :goto_f
    add-int v6, v3, v0

    if-ge v2, v6, :cond_2d

    .line 122
    new-array v6, p1, [B

    .line 123
    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_27

    if-eqz v4, :cond_27

    .line 124
    mul-int v7, v2, p1

    invoke-static {p0, v7, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :goto_22
    aput-object v6, v5, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 126
    :cond_27
    mul-int v7, v2, p1

    invoke-static {p0, v7, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_22

    .line 130
    :cond_2d
    return-object v5

    :cond_2e
    move v0, v1

    goto :goto_a
.end method

.method public static splitString(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int v3, v0, p1

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int v4, v0, p1

    .line 93
    if-eqz v4, :cond_3d

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_10
    add-int v2, v3, v0

    new-array v5, v2, [Ljava/lang/String;

    .line 97
    const-string v2, ""

    move v2, v1

    .line 98
    :goto_17
    add-int v1, v3, v0

    if-ge v2, v1, :cond_3c

    .line 99
    add-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_32

    if-eqz v4, :cond_32

    .line 100
    mul-int v1, v2, p1

    mul-int v6, v2, p1

    add-int/2addr v6, v4

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_2c
    aput-object v1, v5, v2

    .line 98
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_17

    .line 102
    :cond_32
    mul-int v1, v2, p1

    mul-int v6, v2, p1

    add-int/2addr v6, p1

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 106
    :cond_3c
    return-object v5

    :cond_3d
    move v0, v1

    goto :goto_10
.end method
