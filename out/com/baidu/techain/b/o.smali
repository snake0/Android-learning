.class public final Lcom/baidu/techain/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/techain/b/o;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 80
    :cond_9
    :goto_9
    return-object v0

    .line 70
    :cond_a
    :try_start_a
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 71
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_56
    .catchall {:try_start_a .. :try_end_15} :catchall_45

    .line 72
    const/16 v3, 0x2000

    :try_start_17
    new-array v3, v3, [B

    .line 74
    :goto_19
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_34

    .line 75
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_24} :catch_25
    .catchall {:try_start_17 .. :try_end_24} :catchall_54

    goto :goto_19

    .line 79
    :catch_25
    move-exception v2

    :goto_26
    :try_start_26
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_54

    .line 83
    if-eqz v1, :cond_9

    .line 84
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_9

    .line 87
    :catch_2f
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9

    .line 77
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/o;->e([B)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3b} :catch_25
    .catchall {:try_start_34 .. :try_end_3b} :catchall_54

    move-result-object v0

    .line 84
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_9

    .line 87
    :catch_40
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9

    .line 82
    :catchall_45
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 83
    :goto_49
    if-eqz v1, :cond_4e

    .line 84
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 88
    :cond_4e
    :goto_4e
    throw v0

    .line 87
    :catch_4f
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_4e

    .line 82
    :catchall_54
    move-exception v0

    goto :goto_49

    .line 79
    :catch_56
    move-exception v1

    move-object v1, v0

    goto :goto_26
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 47
    :goto_7
    return-object v0

    .line 41
    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_20

    .line 42
    :try_start_d
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/o;->d([B)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1e} :catch_25

    move-result-object v0

    goto :goto_7

    .line 45
    :catch_20
    move-exception v1

    :goto_21
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_7

    :catch_25
    move-exception v0

    move-object v0, v1

    goto :goto_21
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p0, :cond_6

    array-length v1, p0

    if-gtz v1, :cond_7

    .line 61
    :cond_6
    :goto_6
    return-object v0

    .line 56
    :cond_7
    :try_start_7
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/b/o;->d([B)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_6

    .line 59
    :catch_16
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6
.end method

.method public static b([B)Ljava/lang/String;
    .registers 9

    .prologue
    .line 121
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 123
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 124
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const-string v2, ""

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    array-length v4, v1

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v4, :cond_3d

    aget-byte v5, v1, v0

    .line 1133
    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1135
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 1137
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 1138
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    :cond_33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1142
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_40} :catch_42

    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :catch_42
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c([B)[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 146
    if-eqz p0, :cond_6

    array-length v1, p0

    if-gtz v1, :cond_7

    .line 156
    :cond_6
    :goto_6
    return-object v0

    .line 151
    :cond_7
    :try_start_7
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 152
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_6

    .line 154
    :catch_12
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6
.end method

.method private static d([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 28
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_32

    .line 30
    aget-byte v1, p0, v0

    .line 1019
    if-gez v1, :cond_f

    .line 1020
    add-int/lit16 v1, v1, 0x100

    .line 1022
    :cond_f
    div-int/lit8 v3, v1, 0x10

    .line 1023
    rem-int/lit8 v1, v1, 0x10

    .line 1024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/techain/b/o;->a:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/techain/b/o;->a:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 32
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 108
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_30

    .line 109
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    .line 110
    const/4 v0, 0x0

    :goto_d
    array-length v3, p0

    if-ge v0, v3, :cond_29

    .line 111
    aget-byte v3, p0, v0

    .line 112
    mul-int/lit8 v4, v0, 0x2

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 113
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 115
    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 108
    nop

    :array_30
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
