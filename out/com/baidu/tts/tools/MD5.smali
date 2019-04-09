.class public Lcom/baidu/tts/tools/MD5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/tts/tools/MD5;


# instance fields
.field private b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/tools/MD5;->a:Lcom/baidu/tts/tools/MD5;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/baidu/tts/tools/MD5;->b:[C

    .line 21
    return-void

    .line 18
    nop

    :array_e
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

.method private a([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/tools/MD5;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BII)Ljava/lang/String;
    .registers 7

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 120
    add-int v1, p2, p3

    .line 121
    :goto_9
    if-ge p2, v1, :cond_13

    .line 122
    aget-byte v2, p1, p2

    invoke-direct {p0, v2, v0}, Lcom/baidu/tts/tools/MD5;->a(BLjava/lang/StringBuffer;)V

    .line 121
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 124
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(BLjava/lang/StringBuffer;)V
    .registers 6

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/tts/tools/MD5;->b:[C

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 129
    iget-object v1, p0, Lcom/baidu/tts/tools/MD5;->b:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    return-void
.end method

.method public static getInstance()Lcom/baidu/tts/tools/MD5;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/tts/tools/MD5;->a:Lcom/baidu/tts/tools/MD5;

    if-nez v0, :cond_13

    .line 25
    const-class v1, Lcom/baidu/tts/tools/MD5;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lcom/baidu/tts/tools/MD5;->a:Lcom/baidu/tts/tools/MD5;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lcom/baidu/tts/tools/MD5;

    invoke-direct {v0}, Lcom/baidu/tts/tools/MD5;-><init>()V

    sput-object v0, Lcom/baidu/tts/tools/MD5;->a:Lcom/baidu/tts/tools/MD5;

    .line 29
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 31
    :cond_13
    sget-object v0, Lcom/baidu/tts/tools/MD5;->a:Lcom/baidu/tts/tools/MD5;

    return-object v0

    .line 29
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getBigFileMd5(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_24

    .line 57
    :try_start_3
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 58
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_4e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3d

    .line 60
    const/16 v3, 0x2000

    :try_start_10
    new-array v3, v3, [B

    .line 62
    :goto_12
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_25

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e
    .catchall {:try_start_10 .. :try_end_1d} :catchall_4c

    goto :goto_12

    .line 66
    :catch_1e
    move-exception v2

    .line 70
    :goto_1f
    if-eqz v1, :cond_24

    .line 71
    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_38

    .line 78
    :cond_24
    :goto_24
    return-object v0

    .line 65
    :cond_25
    :try_start_25
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/tts/tools/MD5;->a([B)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_1e
    .catchall {:try_start_25 .. :try_end_2c} :catchall_4c

    move-result-object v0

    .line 70
    if-eqz v1, :cond_24

    .line 71
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_24

    .line 73
    :catch_33
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 73
    :catch_38
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 69
    :catchall_3d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 70
    :goto_41
    if-eqz v1, :cond_46

    .line 71
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 75
    :cond_46
    :goto_46
    throw v0

    .line 73
    :catch_47
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 69
    :catchall_4c
    move-exception v0

    goto :goto_41

    .line 66
    :catch_4e
    move-exception v1

    move-object v1, v0

    goto :goto_1f
.end method

.method public getBigFileMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/baidu/tts/tools/MD5;->getBigFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 88
    .line 91
    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 92
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_3d
    .catchall {:try_start_1 .. :try_end_11} :catchall_51

    .line 94
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_69
    .catchall {:try_start_11 .. :try_end_14} :catchall_63

    move-result-object v0

    .line 95
    :try_start_15
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 96
    invoke-virtual {v8, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 97
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/tts/tools/MD5;->a([B)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_6d
    .catchall {:try_start_15 .. :try_end_2b} :catchall_65

    move-result-object v1

    .line 102
    if-eqz v0, :cond_31

    .line 103
    :try_start_2e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 105
    :cond_31
    if-eqz v7, :cond_36

    .line 106
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_38

    :cond_36
    :goto_36
    move-object v0, v1

    .line 110
    :goto_37
    return-object v0

    .line 108
    :catch_38
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 98
    :catch_3d
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    .line 102
    :goto_40
    if-eqz v0, :cond_45

    .line 103
    :try_start_42
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 105
    :cond_45
    if-eqz v1, :cond_4a

    .line 106
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    move-object v0, v6

    .line 110
    goto :goto_37

    .line 108
    :catch_4c
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 101
    :catchall_51
    move-exception v0

    move-object v7, v6

    .line 102
    :goto_53
    if-eqz v6, :cond_58

    .line 103
    :try_start_55
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 105
    :cond_58
    if-eqz v7, :cond_5d

    .line 106
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_5e

    .line 110
    :cond_5d
    :goto_5d
    throw v0

    .line 108
    :catch_5e
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 101
    :catchall_63
    move-exception v0

    goto :goto_53

    :catchall_65
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_53

    .line 98
    :catch_69
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto :goto_40

    :catch_6d
    move-exception v1

    move-object v1, v7

    goto :goto_40
.end method

.method public getMD5([B)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 36
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 37
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 39
    array-length v3, v2

    .line 40
    mul-int/lit8 v1, v3, 0x2

    new-array v4, v1, [C

    move v1, v0

    .line 42
    :goto_14
    if-ge v0, v3, :cond_33

    .line 43
    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/baidu/tts/tools/MD5;->b:[C

    aget-byte v7, v2, v0

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v1

    .line 44
    add-int/lit8 v1, v5, 0x1

    iget-object v6, p0, Lcom/baidu/tts/tools/MD5;->b:[C

    aget-byte v7, v2, v0

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 46
    :cond_33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    .line 49
    :goto_38
    return-object v0

    .line 47
    :catch_39
    move-exception v0

    .line 49
    const/4 v0, 0x0

    goto :goto_38
.end method
