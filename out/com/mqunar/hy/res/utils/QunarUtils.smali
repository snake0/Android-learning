.class public Lcom/mqunar/hy/res/utils/QunarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static canWriteFlag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/mqunar/hy/res/utils/QunarUtils;->canWriteFlag:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .prologue
    .line 89
    invoke-static {p0}, Lcom/mqunar/hy/res/utils/QunarUtils;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAppFileDir(Landroid/content/Context;)Ljava/io/File;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 20
    .line 22
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_55

    move-result-object v0

    .line 27
    :goto_7
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 28
    invoke-static {p0}, Lcom/mqunar/hy/res/utils/QunarUtils;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 30
    sget v2, Lcom/mqunar/hy/res/utils/QunarUtils;->canWriteFlag:I

    if-nez v2, :cond_50

    .line 35
    :try_start_17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 41
    :cond_2d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_32} :catch_64
    .catchall {:try_start_17 .. :try_end_32} :catchall_80

    .line 42
    :try_start_32
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_37} :catch_a8
    .catchall {:try_start_32 .. :try_end_37} :catchall_9e

    .line 43
    const/4 v1, 0x0

    :try_start_38
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 44
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 45
    const/4 v1, 0x1

    sput v1, Lcom/mqunar/hy/res/utils/QunarUtils;->canWriteFlag:I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_41} :catch_ad
    .catchall {:try_start_38 .. :try_end_41} :catchall_a2

    .line 49
    if-eqz v3, :cond_50

    .line 51
    :try_start_43
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_5d

    .line 56
    :goto_46
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 63
    :cond_50
    :goto_50
    sget v1, Lcom/mqunar/hy/res/utils/QunarUtils;->canWriteFlag:I

    if-ne v1, v6, :cond_99

    .line 68
    :goto_54
    return-object v0

    .line 23
    :catch_55
    move-exception v0

    .line 24
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_7

    .line 52
    :catch_5d
    move-exception v1

    .line 53
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_46

    .line 46
    :catch_64
    move-exception v2

    move-object v2, v1

    .line 47
    :goto_66
    const/4 v3, 0x2

    :try_start_67
    sput v3, Lcom/mqunar/hy/res/utils/QunarUtils;->canWriteFlag:I
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_a5

    .line 49
    if-eqz v2, :cond_50

    .line 51
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_79

    .line 56
    :goto_6e
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_50

    .line 52
    :catch_79
    move-exception v2

    .line 53
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6e

    .line 49
    :catchall_80
    move-exception v0

    move-object v3, v1

    :goto_82
    if-eqz v3, :cond_91

    .line 51
    :try_start_84
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_92

    .line 56
    :goto_87
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_91
    throw v0

    .line 52
    :catch_92
    move-exception v2

    .line 53
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_87

    .line 68
    :cond_99
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_54

    .line 49
    :catchall_9e
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_82

    :catchall_a2
    move-exception v0

    move-object v1, v2

    goto :goto_82

    :catchall_a5
    move-exception v0

    move-object v3, v2

    goto :goto_82

    .line 46
    :catch_a8
    move-exception v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_66

    :catch_ad
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_66
.end method

.method private static getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_15

    .line 75
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_e

    move-result-object v0

    .line 76
    if-eqz v0, :cond_15

    .line 85
    :goto_d
    return-object v0

    .line 79
    :catch_e
    move-exception v0

    .line 80
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 84
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v11, -0x1

    .line 93
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This isn\'t a hierarchical URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_11
    if-nez p1, :cond_1b

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1b
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v7

    .line 101
    if-nez v7, :cond_23

    move-object v0, v6

    .line 134
    :goto_22
    return-object v0

    .line 105
    :cond_23
    invoke-static {p1, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v1

    .line 109
    :goto_2c
    const/16 v2, 0x26

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 110
    if-eq v3, v11, :cond_57

    move v2, v3

    .line 112
    :goto_35
    const/16 v5, 0x3d

    invoke-virtual {v7, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 113
    if-gt v5, v2, :cond_3f

    if-ne v5, v11, :cond_40

    :cond_3f
    move v5, v2

    .line 117
    :cond_40
    sub-int v9, v5, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_67

    .line 118
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v0, v8, v1, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 119
    if-ne v5, v2, :cond_59

    .line 120
    const-string v0, ""

    goto :goto_22

    :cond_57
    move v2, v4

    .line 110
    goto :goto_35

    .line 122
    :cond_59
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    const/4 v2, 0x1

    sget-object v3, Lcom/mqunar/hy/res/utils/UriCodec;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v2, v3, v1}, Lcom/mqunar/hy/res/utils/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 128
    :cond_67
    if-eq v3, v11, :cond_6c

    .line 129
    add-int/lit8 v0, v3, 0x1

    .line 133
    goto :goto_2c

    :cond_6c
    move-object v0, v6

    .line 134
    goto :goto_22
.end method
