.class public final Lcom/iflytek/cloud/thirdparty/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/iflytek/cloud/thirdparty/a;->a:[C

    return-void

    :array_a
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

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    :try_start_5
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_4c
    .catchall {:try_start_5 .. :try_end_10} :catchall_3e

    const/16 v1, 0x800

    :try_start_12
    new-array v1, v1, [B

    :goto_14
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/a;->a([B)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_2c
    .catchall {:try_start_12 .. :try_end_22} :catchall_4a

    move-result-object v0

    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_39

    :goto_26
    return-object v0

    :cond_27
    const/4 v5, 0x0

    :try_start_28
    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4a

    goto :goto_14

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_4a

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_26

    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    :catchall_3e
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    :goto_44
    throw v0

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catchall_4a
    move-exception v0

    goto :goto_41

    :catch_4c
    move-exception v1

    move-object v2, v0

    goto :goto_2d
.end method

.method private static a([B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/16 v1, 0x20

    new-array v2, v1, [C

    move v1, v0

    :goto_6
    const/16 v3, 0x10

    if-lt v0, v3, :cond_10

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_10
    aget-byte v3, p0, v0

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/iflytek/cloud/thirdparty/a;->a:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v2, v1

    add-int/lit8 v1, v4, 0x1

    sget-object v5, Lcom/iflytek/cloud/thirdparty/a;->a:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v0, "MainActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_19
.end method
