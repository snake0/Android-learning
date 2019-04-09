.class public Lqunar/lego/utils/Hallua;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lqunar/lego/utils/Hallua;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/Hallua;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, "lua_v1_0_4"

    .line 25
    :try_start_a
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_d} :catch_e

    .line 33
    :goto_d
    return-void

    .line 26
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method private static varargs addAll([B[B)[B
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 101
    if-nez p0, :cond_8

    .line 102
    invoke-static {p1}, Lqunar/lego/utils/Hallua;->clone([B)[B

    move-result-object v0

    .line 109
    :goto_7
    return-object v0

    .line 103
    :cond_8
    if-nez p1, :cond_f

    .line 104
    invoke-static {p0}, Lqunar/lego/utils/Hallua;->clone([B)[B

    move-result-object v0

    goto :goto_7

    .line 106
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 107
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static clone([B)[B
    .registers 2

    .prologue
    .line 113
    if-nez p0, :cond_4

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_3
.end method

.method private static decryptByPrivateKey([BLjava/lang/String;)[B
    .registers 5

    .prologue
    .line 189
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/Hallua$Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 191
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 192
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 195
    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 196
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 197
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Hallua$Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Hallua;->uEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    .line 199
    :goto_2f
    return-object v0

    .line 198
    :catch_30
    move-exception v0

    .line 199
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private static decryptByPublicKey([BLjava/lang/String;)[B
    .registers 5

    .prologue
    .line 173
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/Hallua$Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 174
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 175
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 178
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 179
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Hallua$Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Hallua;->uEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    .line 181
    :goto_2f
    return-object v0

    .line 180
    :catch_30
    move-exception v0

    .line 181
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private static encryptByPrivateKey([BLjava/lang/String;)[B
    .registers 5

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/Hallua$Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 159
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 160
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 164
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 165
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Hallua$Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Hallua;->uEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    .line 167
    :goto_2f
    return-object v0

    .line 166
    :catch_30
    move-exception v0

    .line 167
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private static encryptByPublicKey([BLjava/lang/String;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 129
    :try_start_1
    invoke-static {p1}, Lqunar/lego/utils/Hallua$Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 130
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 131
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 133
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 134
    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 135
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 136
    :goto_21
    array-length v2, p0

    if-ge v0, v2, :cond_35

    .line 137
    add-int/lit8 v2, v0, 0x64

    invoke-static {p0, v0, v2}, Lqunar/lego/utils/Hallua;->subArray([BII)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Lqunar/lego/utils/Hallua;->addAll([B[B)[B

    move-result-object v1

    .line 136
    add-int/lit8 v0, v0, 0x64

    goto :goto_21

    .line 140
    :cond_35
    invoke-static {v1}, Lqunar/lego/utils/Hallua$Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Hallua;->uEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_42

    move-result-object v0

    .line 143
    :goto_41
    return-object v0

    .line 141
    :catch_42
    move-exception v0

    .line 143
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public static rsa([B[BI)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 60
    const/4 v1, 0x2

    if-ne p2, v1, :cond_10

    .line 62
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v1}, Lqunar/lego/utils/Hallua;->encryptByPublicKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 76
    :cond_f
    :goto_f
    return-object v0

    .line 63
    :cond_10
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1f

    .line 65
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v1}, Lqunar/lego/utils/Hallua;->encryptByPrivateKey([BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_f

    .line 66
    :cond_1f
    if-nez p2, :cond_2d

    .line 68
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v1}, Lqunar/lego/utils/Hallua;->decryptByPublicKey([BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_f

    .line 69
    :cond_2d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_f

    .line 71
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v1}, Lqunar/lego/utils/Hallua;->decryptByPrivateKey([BLjava/lang/String;)[B
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3a} :catch_3c

    move-result-object v0

    goto :goto_f

    .line 75
    :catch_3c
    move-exception v1

    goto :goto_f
.end method

.method public static native runLua(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method private static subArray([BII)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 81
    if-nez p0, :cond_5

    .line 82
    const/4 v0, 0x0

    .line 97
    :goto_4
    return-object v0

    .line 84
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 87
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 88
    array-length p2, p0

    .line 90
    :cond_c
    sub-int v2, p2, p1

    .line 91
    if-gtz v2, :cond_13

    .line 92
    new-array v0, v0, [B

    goto :goto_4

    .line 95
    :cond_13
    new-array v1, v2, [B

    .line 96
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 97
    goto :goto_4
.end method

.method private static uEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 208
    :goto_6
    return-object v0

    .line 207
    :catch_7
    move-exception v0

    .line 208
    const/4 v0, 0x0

    goto :goto_6
.end method
