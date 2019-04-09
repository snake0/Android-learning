.class public Lcom/baidu/mapsdkplatform/comapi/commonutils/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 5

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_4
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_10

    goto :goto_4

    :catchall_10
    move-exception v0

    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_26

    :try_start_14
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_28

    throw v0

    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_10

    :try_start_1b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_22

    :try_start_1e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    :goto_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_21

    :catch_24
    move-exception v0

    goto :goto_21

    :catch_26
    move-exception v0

    goto :goto_21

    :catch_28
    move-exception v0

    goto :goto_21
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_5f
    .catchall {:try_start_1 .. :try_end_8} :catchall_87

    move-result-object v2

    if-eqz v2, :cond_b0

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_41
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_49} :catch_a9
    .catchall {:try_start_b .. :try_end_49} :catchall_9c

    :try_start_49
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4f} :catch_ac
    .catchall {:try_start_49 .. :try_end_4f} :catchall_a1

    :goto_4f
    if-eqz v2, :cond_54

    :try_start_51
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_54
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_59} :catch_5a

    :cond_59
    :goto_59
    return-void

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    :catch_5f
    move-exception v1

    move-object v1, v0

    :goto_61
    :try_start_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_a3

    if-eqz v1, :cond_7c

    :try_start_79
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7c
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_59

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    :catchall_87
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_8c
    if-eqz v2, :cond_91

    :try_start_8e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_91
    if-eqz v1, :cond_96

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_96} :catch_97

    :cond_96
    :goto_96
    throw v0

    :catch_97
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    :catchall_9c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8c

    :catchall_a1
    move-exception v0

    goto :goto_8c

    :catchall_a3
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8c

    :catch_a9
    move-exception v1

    move-object v1, v2

    goto :goto_61

    :catch_ac
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_61

    :cond_b0
    move-object v1, v0

    goto :goto_4f
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    const-string v0, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a:Z

    if-eqz v2, :cond_18

    invoke-virtual {p2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    :cond_18
    :try_start_18
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_cd
    .catchall {:try_start_18 .. :try_end_1d} :catchall_ba

    :try_start_1d
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_71

    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_67} :catch_86
    .catchall {:try_start_1d .. :try_end_67} :catchall_c8

    move-result-object v3

    if-nez v3, :cond_9d

    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_c2

    :cond_6f
    :goto_6f
    move-object v0, v1

    :goto_70
    return-object v0

    :cond_71
    :try_start_71
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v5, "assets"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_85} :catch_86
    .catchall {:try_start_71 .. :try_end_85} :catchall_c8

    goto :goto_61

    :catch_86
    move-exception v0

    move-object v1, v2

    :goto_88
    :try_start_88
    const-class v2, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "copyAssetsError"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_ca

    if-eqz v1, :cond_98

    :try_start_95
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_c4

    :cond_98
    :goto_98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :cond_9d
    :try_start_9d
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v3}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b2} :catch_86
    .catchall {:try_start_9d .. :try_end_b2} :catchall_c8

    if-eqz v2, :cond_98

    :try_start_b4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_98

    :catch_b8
    move-exception v0

    goto :goto_98

    :catchall_ba
    move-exception v0

    move-object v2, v1

    :goto_bc
    if-eqz v2, :cond_c1

    :try_start_be
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c6

    :cond_c1
    :goto_c1
    throw v0

    :catch_c2
    move-exception v0

    goto :goto_6f

    :catch_c4
    move-exception v0

    goto :goto_98

    :catch_c6
    move-exception v1

    goto :goto_c1

    :catchall_c8
    move-exception v0

    goto :goto_bc

    :catchall_ca
    move-exception v0

    move-object v2, v1

    goto :goto_bc

    :catch_cd
    move-exception v0

    goto :goto_88
.end method
