.class public final Lqunar/lego/utils/diffpatch/MD5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    const v0, 0x19000

    invoke-static {p0, v0}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/io/File;I)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 126
    if-eqz p0, :cond_3c

    if-lez p1, :cond_3c

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 134
    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_33
    .catchall {:try_start_b .. :try_end_10} :catchall_2b

    int-to-long v3, p1

    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_26

    int-to-long v3, p1

    :goto_1a
    long-to-int v0, v3

    invoke-static {v2, v0}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_46
    .catchall {:try_start_11 .. :try_end_22} :catchall_44

    .line 165
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_42

    .line 172
    :goto_25
    return-object v0

    .line 134
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Ljava/io/File;->length()J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_46
    .catchall {:try_start_26 .. :try_end_29} :catchall_44

    move-result-wide v3

    goto :goto_1a

    .line 141
    :catchall_2b
    move-exception v0

    move-object v2, v1

    .line 143
    :goto_2d
    if-eqz v2, :cond_32

    .line 144
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3e

    .line 148
    :cond_32
    :goto_32
    throw v0

    .line 138
    :catch_33
    move-exception v0

    move-object v0, v1

    .line 154
    :goto_35
    if-eqz v0, :cond_3a

    .line 155
    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_40

    :cond_3a
    :goto_3a
    move-object v0, v1

    .line 161
    goto :goto_25

    :cond_3c
    move-object v0, v1

    .line 172
    goto :goto_25

    .line 146
    :catch_3e
    move-exception v1

    goto :goto_32

    .line 157
    :catch_40
    move-exception v0

    goto :goto_3a

    .line 166
    :catch_42
    move-exception v1

    goto :goto_25

    .line 141
    :catchall_44
    move-exception v0

    goto :goto_2d

    .line 138
    :catch_46
    move-exception v0

    move-object v0, v2

    goto :goto_35
.end method

.method public static getMD5(Ljava/io/File;II)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    if-lez p2, :cond_31

    .line 190
    :try_start_d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_28
    .catchall {:try_start_d .. :try_end_12} :catchall_20

    const v0, 0x19000

    :try_start_15
    invoke-static {v2, v0, p1, p2}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/InputStream;III)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_3b
    .catchall {:try_start_15 .. :try_end_1c} :catchall_39

    .line 221
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_37

    .line 228
    :goto_1f
    return-object v0

    .line 197
    :catchall_20
    move-exception v0

    move-object v2, v1

    .line 199
    :goto_22
    if-eqz v2, :cond_27

    .line 200
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_33

    .line 204
    :cond_27
    :goto_27
    throw v0

    .line 194
    :catch_28
    move-exception v0

    move-object v0, v1

    .line 210
    :goto_2a
    if-eqz v0, :cond_2f

    .line 211
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_35

    :cond_2f
    :goto_2f
    move-object v0, v1

    .line 217
    goto :goto_1f

    :cond_31
    move-object v0, v1

    .line 228
    goto :goto_1f

    .line 202
    :catch_33
    move-exception v1

    goto :goto_27

    .line 213
    :catch_35
    move-exception v0

    goto :goto_2f

    .line 222
    :catch_37
    move-exception v1

    goto :goto_1f

    .line 197
    :catchall_39
    move-exception v0

    goto :goto_22

    .line 194
    :catch_3b
    move-exception v0

    move-object v0, v2

    goto :goto_2a
.end method

.method public static final getMD5(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    if-eqz p0, :cond_22

    if-lez p1, :cond_22

    .line 91
    :try_start_6
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    new-array v4, p1, [B

    .line 97
    :goto_15
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_15

    .line 108
    :catch_21
    move-exception v1

    .line 112
    :cond_22
    :goto_22
    return-object v0

    .line 101
    :cond_23
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 103
    :goto_27
    array-length v4, v2

    if-ge v1, v4, :cond_41

    .line 104
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 107
    :cond_41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_44} :catch_21

    move-result-object v0

    goto :goto_22
.end method

.method public static final getMD5(Ljava/io/InputStream;III)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    if-eqz p0, :cond_14

    if-lez p1, :cond_14

    if-ltz p2, :cond_14

    if-lez p3, :cond_14

    .line 52
    int-to-long v2, p2

    :try_start_b
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_15

    .line 84
    :cond_14
    :goto_14
    return-object v0

    .line 55
    :cond_15
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    new-array v5, p1, [B

    move v2, v1

    .line 62
    :goto_25
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_40

    if-ge v2, p3, :cond_40

    .line 63
    add-int v7, v2, v6

    if-gt v7, p3, :cond_38

    .line 64
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 65
    add-int/2addr v2, v6

    goto :goto_25

    .line 67
    :cond_38
    const/4 v6, 0x0

    sub-int v2, p3, v2

    invoke-virtual {v3, v5, v6, v2}, Ljava/security/MessageDigest;->update([BII)V

    move v2, p3

    .line 68
    goto :goto_25

    .line 72
    :cond_40
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 74
    :goto_44
    array-length v3, v2

    if-ge v1, v3, :cond_5e

    .line 75
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 78
    :cond_5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_61} :catch_63

    move-result-object v0

    goto :goto_14

    .line 80
    :catch_63
    move-exception v1

    goto :goto_14
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x19000

    invoke-static {v1, v0}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getMD5(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 178
    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, p1, p2}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/File;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static final getMessageDigest([B)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 18
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_3e

    .line 22
    :try_start_8
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 24
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v3

    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 27
    :goto_1b
    if-ge v0, v4, :cond_34

    .line 28
    aget-byte v6, v3, v0

    .line 29
    add-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v1

    .line 30
    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 33
    :cond_34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_3a

    .line 35
    :goto_39
    return-object v0

    .line 34
    :catch_3a
    move-exception v0

    .line 35
    const/4 v0, 0x0

    goto :goto_39

    .line 18
    nop

    :array_3e
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

.method public static final getRawDigest([B)[B
    .registers 2

    .prologue
    .line 42
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 45
    :goto_d
    return-object v0

    .line 44
    :catch_e
    move-exception v0

    .line 45
    const/4 v0, 0x0

    goto :goto_d
.end method
