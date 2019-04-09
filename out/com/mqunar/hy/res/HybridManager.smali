.class public Lcom/mqunar/hy/res/HybridManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QP_UPDATED_TO_CACHE_ACTION:Ljava/lang/String; = "QP_UPDATED_TO_CACHE_ACTION"

.field public static final QP_UPDATED_TO_CACHE_DATA_KEY:Ljava/lang/String; = "QP_UPDATED_TO_CACHE_DATA_KEY"

.field public static final QP_UPDATED_TO_CACHE_HYBRID_KEY:Ljava/lang/String; = "QP_UPDATED_TO_CACHE_HYBRID_KEY"

.field private static mHybrididSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static parseFlag:Z

.field private static parseThread:Ljava/lang/Thread;


# instance fields
.field private DATA_PATH:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/HybridManager;->mHybrididSet:Ljava/util/Set;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/hy/res/HybridManager;->parseFlag:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HybridManager>new>begin>parserHybridInfos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->initManager()V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HybridManager>new>end>parserHybridInfos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/HybridManager$1;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/mqunar/hy/res/HybridManager;)V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->saveDatas()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .prologue
    .line 53
    sput-boolean p0, Lcom/mqunar/hy/res/HybridManager;->parseFlag:Z

    return p0
.end method

.method private addNewModuleFromAssert(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    .prologue
    const/4 v9, 0x0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes \u6dfb\u52a0\u4e86\u79bb\u7ebf\u8d44\u6e90\u5305,assertname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 279
    :cond_1f
    :goto_1f
    return-void

    .line 264
    :cond_20
    invoke-direct {p0, p2}, Lcom/mqunar/hy/res/HybridManager;->isCopyNewQp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "begin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/mqunar/hy/res/HybridManager;->copyAssertToSdcard(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 271
    invoke-static {p1, p3}, Lcom/mqunar/hy/res/utils/AssetUtils;->getAssetFileToStr(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {p0, v2}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoByFilePath(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v4

    .line 273
    if-eqz v4, :cond_77

    iget-wide v5, v4, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_77

    invoke-static {v2}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/mqunar/hy/res/model/HybridInfo;->getEncodedMd5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 274
    :cond_77
    invoke-direct {p0, v2, v3, p4}, Lcom/mqunar/hy/res/HybridManager;->parseHyRes(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    :cond_7a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method private copyAssertToSdcard(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p1, :cond_a

    .line 112
    :cond_9
    :goto_9
    return-object v0

    .line 76
    :cond_a
    const/4 v1, 0x0

    .line 78
    :try_start_b
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1a} :catch_b3
    .catchall {:try_start_b .. :try_end_1a} :catchall_94

    move-result-object v3

    .line 80
    :try_start_1b
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/mqunar/hy/res/HybridManager;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2f} :catch_b7
    .catchall {:try_start_1b .. :try_end_2f} :catchall_ad

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_4a

    .line 97
    if-eqz v3, :cond_3a

    .line 99
    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_45

    .line 104
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_9

    .line 106
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_9

    .line 107
    :catch_40
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 100
    :catch_45
    move-exception v2

    .line 101
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 85
    :cond_4a
    :try_start_4a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_b7
    .catchall {:try_start_4a .. :try_end_4f} :catchall_ad

    .line 87
    const/16 v1, 0x1000

    :try_start_51
    new-array v1, v1, [B

    .line 89
    :goto_53
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_73

    .line 90
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5e} :catch_5f
    .catchall {:try_start_51 .. :try_end_5e} :catchall_b1

    goto :goto_53

    .line 94
    :catch_5f
    move-exception v1

    .line 95
    :goto_60
    :try_start_60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_b1

    .line 97
    if-eqz v3, :cond_68

    .line 99
    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_8f

    .line 104
    :cond_68
    :goto_68
    if-eqz v2, :cond_9

    .line 106
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_9

    .line 107
    :catch_6e
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 92
    :cond_73
    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_79} :catch_5f
    .catchall {:try_start_73 .. :try_end_79} :catchall_b1

    move-result-object v0

    .line 97
    if-eqz v3, :cond_7f

    .line 99
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8a

    .line 104
    :cond_7f
    :goto_7f
    if-eqz v2, :cond_9

    .line 106
    :try_start_81
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_9

    .line 107
    :catch_85
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 100
    :catch_8a
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    .line 100
    :catch_8f
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 97
    :catchall_94
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_98
    if-eqz v3, :cond_9d

    .line 99
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a3

    .line 104
    :cond_9d
    :goto_9d
    if-eqz v2, :cond_a2

    .line 106
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a8

    .line 109
    :cond_a2
    :goto_a2
    throw v0

    .line 100
    :catch_a3
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    .line 107
    :catch_a8
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 97
    :catchall_ad
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_98

    :catchall_b1
    move-exception v0

    goto :goto_98

    .line 94
    :catch_b3
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_60

    :catch_b7
    move-exception v1

    move-object v2, v0

    goto :goto_60
.end method

.method public static getInstance()Lcom/mqunar/hy/res/HybridManager;
    .registers 1

    .prologue
    .line 384
    # getter for: Lcom/mqunar/hy/res/HybridManager$SingletonHolder;->INSTANCE:Lcom/mqunar/hy/res/HybridManager;
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager$SingletonHolder;->access$100()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    return-object v0
.end method

.method private initManager()V
    .registers 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/hy/res/utils/QunarUtils;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hybrid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->DATA_PATH:Ljava/lang/String;

    .line 395
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mqunar/hy/res/HybridManager;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 400
    :cond_35
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->preferences:Landroid/content/SharedPreferences;

    .line 401
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->parserHybridInfos()V

    .line 402
    return-void
.end method

.method private isCopyNewQp(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    .line 294
    :try_start_2
    const-string v0, "_prod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 295
    const/4 v3, -0x1

    if-le v0, v3, :cond_cb

    .line 296
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_86

    move-result-object v0

    .line 299
    :goto_10
    const/4 v3, 0x0

    :try_start_11
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 300
    const/4 v4, 0x0

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 301
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {p0, v4}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v4

    .line 303
    if-nez v4, :cond_57

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsCopyNewQp:true assertName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 316
    :goto_56
    return v0

    .line 307
    :cond_57
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 308
    iget v5, v4, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-lt v5, v3, :cond_a5

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsCopyNewQp:false assertName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v4, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_84} :catch_c9

    move v0, v2

    .line 310
    goto :goto_56

    .line 312
    :catch_86
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    .line 313
    :goto_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsCopyNewQp Exception! QP name is illegal!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    :cond_a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsCopyNewQp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " assertName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 316
    goto :goto_56

    .line 312
    :catch_c9
    move-exception v3

    goto :goto_89

    :cond_cb
    move-object v0, p1

    goto/16 :goto_10
.end method

.method private onLoadLog(ZLjava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 694
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_a

    .line 695
    iget-object p2, p3, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 697
    :cond_a
    if-nez p3, :cond_12

    const-string v0, ""

    :goto_e
    invoke-static {p1, p2, v0, p4}, Lcom/mqunar/hy/res/logger/DevQPLog;->onLoadLog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void

    .line 697
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private onLoadResFail(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mqunar/hy/res/HybridManager;->onLoadLog(ZLjava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method private onLoadResSucc(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 690
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mqunar/hy/res/HybridManager;->onLoadLog(ZLjava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method private parseHyRes(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mqunar/hy/res/HybridManager;->parseHyRes(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    return-void
.end method

.method private parseHyRes(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    :cond_6
    :goto_6
    return-void

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->parseAndCheck(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    .line 206
    if-eqz p3, :cond_6

    .line 207
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->saveDatas()V

    goto :goto_6
.end method

.method private parserHybridInfos()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 407
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v2

    .line 408
    sget-object v0, Lcom/mqunar/hy/res/HybridManager;->mHybrididSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 409
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hybrid_infos"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HyRes parserHybridInfos>old>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :try_start_30
    const-class v1, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_7d

    move-result-object v0

    move-object v1, v0

    .line 418
    :goto_37
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->moveCacheList()Ljava/util/List;

    move-result-object v0

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HyRes parserHybridInfos>rename>begin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_85

    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_67
    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 422
    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/HybridManager;->moveToWorkspace(Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v4

    .line 423
    if-eqz v4, :cond_67

    .line 424
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 415
    :catch_7d
    move-exception v0

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    goto :goto_37

    .line 428
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HyRes parserHybridInfos>rename>end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    if-eqz v1, :cond_100

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_100

    .line 431
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b2
    :goto_b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_100

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 432
    if-eqz v0, :cond_b2

    .line 435
    iget-object v4, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b2

    .line 438
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 440
    iget-object v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getOfflineHybridVersion(Ljava/lang/String;)I

    move-result v5

    .line 442
    if-eqz v5, :cond_e5

    iget v6, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ne v5, v6, :cond_e5

    .line 443
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_b2

    .line 446
    :cond_e5
    iget-wide v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_fc

    .line 447
    iput v9, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 448
    iput-boolean v9, v0, Lcom/mqunar/hy/res/model/HybridInfo;->checked:Z

    .line 449
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v4, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 452
    :cond_fc
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_b2

    .line 457
    :cond_100
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->saveDatas()V

    .line 458
    new-instance v0, Lcom/mqunar/hy/res/HybridManager$1;

    invoke-direct {v0, p0, v3}, Lcom/mqunar/hy/res/HybridManager$1;-><init>(Lcom/mqunar/hy/res/HybridManager;Ljava/util/List;)V

    sput-object v0, Lcom/mqunar/hy/res/HybridManager;->parseThread:Ljava/lang/Thread;

    .line 478
    sput-boolean v9, Lcom/mqunar/hy/res/HybridManager;->parseFlag:Z

    .line 479
    sget-object v0, Lcom/mqunar/hy/res/HybridManager;->parseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 481
    return-void
.end method

.method private saveDatas()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 323
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 324
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 326
    iput v4, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 327
    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 329
    :cond_2a
    iget-object v2, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 333
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    const-string v1, "hybrid_infos"

    iget-object v2, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_44} :catch_45

    .line 339
    :goto_44
    return-void

    .line 336
    :catch_45
    move-exception v0

    .line 337
    const-string v1, ""

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44
.end method


# virtual methods
.method public addCacheList()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 502
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    .line 503
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_50

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HybridManager>begin>addCacheList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->parserHybridInfos()V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HybridManager>end>addCacheList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :goto_4f
    return-void

    .line 509
    :cond_50
    const-string v0, "HybridManager>addCacheList:no cache"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4f
.end method

.method public addNewModule(Lcom/mqunar/hy/res/model/HybridInfo;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 124
    if-nez p1, :cond_4

    .line 190
    :goto_3
    return-void

    .line 127
    :cond_4
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getInstance()Lcom/mqunar/hy/res/HyResInitializer;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/mqunar/hy/res/HyResInitializer;->getReplaceInterceptor()Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->isInterceptor(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 131
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 132
    :try_start_21
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 133
    if-eqz v0, :cond_25

    .line 134
    const/16 v3, 0x69

    const-string v4, "\u4e0b\u8f7d\u7684qp\u5305\u6bd4\u5df2\u7ecf\u4f7f\u7528\u7684\u7248\u672c\u8fd8\u8981\u4f4e"

    invoke-interface {v0, p1, v3, v4}, Lcom/mqunar/hy/res/DownloadTaskResult;->error(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    goto :goto_25

    .line 137
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    goto :goto_3

    .line 140
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes \u6dfb\u52a0\u4e86\u79bb\u7ebf\u8d44\u6e90\u5305,filpath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hybridid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_171

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HyRes \u65b0\u65e7\u6587\u4ef6\u4fe1\u606f oldInfo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <--> newInfo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ge v1, v3, :cond_f9

    .line 146
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 147
    iget-object v1, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    :cond_ad
    :goto_ad
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_18f

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v0

    if-nez v0, :cond_18f

    move v1, v2

    .line 176
    :goto_bf
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_18f

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HyRes list["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] info = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_bf

    .line 148
    :cond_f9
    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-le v1, v3, :cond_156

    .line 149
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_145

    .line 151
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 152
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 153
    :try_start_125
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_129
    :goto_129
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 154
    if-eqz v0, :cond_129

    .line 155
    const/16 v3, 0x69

    const-string v4, "\u4e0b\u8f7d\u7684qp\u5305\u6bd4\u5df2\u7ecf\u4f7f\u7528\u7684\u7248\u672c\u8fd8\u8981\u4f4e"

    invoke-interface {v0, p1, v3, v4}, Lcom/mqunar/hy/res/DownloadTaskResult;->error(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    goto :goto_129

    .line 158
    :catchall_13f
    move-exception v0

    monitor-exit v1
    :try_end_141
    .catchall {:try_start_125 .. :try_end_141} :catchall_13f

    throw v0

    :cond_142
    :try_start_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_13f

    goto/16 :goto_3

    .line 161
    :cond_145
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 162
    iget-object v1, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_ad

    .line 165
    :cond_156
    iget-object v1, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 167
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_ad

    .line 171
    :cond_171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes \u6ca1\u6709\u65e7\u6587\u4ef6 info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_ad

    .line 181
    :cond_18f
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->saveDatas()V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes \u4fdd\u5b58\u7f13\u5b58\u6587\u4ef6 info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 184
    :try_start_1b3
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b7
    :goto_1b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 185
    if-eqz v0, :cond_1b7

    .line 186
    invoke-interface {v0, p1}, Lcom/mqunar/hy/res/DownloadTaskResult;->sucess(Ljava/lang/Object;)V

    goto :goto_1b7

    .line 189
    :catchall_1c9
    move-exception v0

    monitor-exit v1
    :try_end_1cb
    .catchall {:try_start_1b3 .. :try_end_1cb} :catchall_1c9

    throw v0

    :cond_1cc
    :try_start_1cc
    monitor-exit v1
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1c9

    goto/16 :goto_3
.end method

.method public addNewModule(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes \u6dfb\u52a0\u4e86\u79bb\u7ebf\u8d44\u6e90\u5305,filpath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/mqunar/hy/res/HybridManager;->parseHyRes(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public addNewModuleFromAssert(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mqunar/hy/res/HybridManager;->addNewModuleFromAssert(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    return-void
.end method

.method public varargs addNewModuleFromAssert(Landroid/content/res/AssetManager;[Lcom/mqunar/hy/res/model/QpPathInfo;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 241
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_7

    .line 249
    :cond_6
    :goto_6
    return-void

    .line 245
    :cond_7
    array-length v2, p2

    move v0, v1

    :goto_9
    if-ge v0, v2, :cond_1b

    aget-object v3, p2, v0

    .line 246
    invoke-virtual {v3}, Lcom/mqunar/hy/res/model/QpPathInfo;->getQpPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mqunar/hy/res/model/QpPathInfo;->getQpMd5Path()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v4, v3, v1}, Lcom/mqunar/hy/res/HybridManager;->addNewModuleFromAssert(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 248
    :cond_1b
    invoke-direct {p0}, Lcom/mqunar/hy/res/HybridManager;->saveDatas()V

    goto :goto_6
.end method

.method public danger_ForceReplaceFromCacheModule(Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 850
    if-nez p1, :cond_4

    .line 861
    :cond_3
    :goto_3
    return v0

    .line 854
    :cond_4
    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mqunar/hy/res/HybridManager;->removeModule(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->moveToWorkspace(Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;

    .line 858
    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mqunar/hy/res/HybridManager;->parseHyRes(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v1

    .line 861
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public danger_ForceReplaceFromCacheModule(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getCacheHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/HybridManager;->danger_ForceReplaceFromCacheModule(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v0

    return v0
.end method

.method public getCacheHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 3

    .prologue
    .line 833
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getCacheHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 5

    .prologue
    .line 719
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 721
    new-instance v1, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v1}, Lcom/mqunar/hy/res/model/HybridInfo;-><init>()V

    .line 722
    iput-object p1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 723
    const/4 v2, 0x5

    iput v2, v1, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 724
    if-eqz v0, :cond_20

    .line 725
    iget v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iput v2, v1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    .line 726
    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/model/HybridInfo;->setMd5(Ljava/lang/String;)V

    .line 731
    :goto_1f
    return-object v1

    .line 728
    :cond_20
    const/4 v0, 0x0

    iput v0, v1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    .line 729
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/model/HybridInfo;->setMd5(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public getDefaultHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 4

    .prologue
    .line 701
    new-instance v0, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v0}, Lcom/mqunar/hy/res/model/HybridInfo;-><init>()V

    .line 702
    iput-object p1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 703
    const/4 v1, 0x1

    iput v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 704
    const/4 v1, 0x0

    iput v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    .line 705
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/model/HybridInfo;->setMd5(Ljava/lang/String;)V

    .line 706
    return-object v0
.end method

.method public getExtraByHyId(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .registers 3

    .prologue
    .line 771
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 775
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->extra:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_7
.end method

.method public getHybridInfoAndStatus(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 4

    .prologue
    .line 710
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_e

    .line 712
    const/4 v1, 0x2

    iput v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 715
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getDefaultHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    goto :goto_d
.end method

.method public getHybridInfoByFilePath(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 380
    :goto_8
    return-object v0

    .line 371
    :cond_9
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    move-object v0, v1

    .line 372
    goto :goto_8

    .line 374
    :cond_17
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 375
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_8

    :cond_32
    move-object v0, v1

    .line 380
    goto :goto_8
.end method

.method public getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 364
    :goto_8
    return-object v0

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    move-object v0, v1

    .line 356
    goto :goto_8

    .line 358
    :cond_17
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 359
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_8

    :cond_32
    move-object v0, v1

    .line 364
    goto :goto_8
.end method

.method public getHybridInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getHybrididByUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfos()Ljava/util/List;

    move-result-object v2

    .line 516
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 517
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 518
    if-nez v0, :cond_1a

    .line 516
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 521
    :cond_1a
    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->getActualResource()Ljava/util/Map;

    move-result-object v3

    .line 522
    invoke-static {p1}, Lcom/mqunar/hy/res/utils/UriCodec;->getUrlWithOutQueryAndHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 523
    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 526
    :goto_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public getHybrididByUrlandParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 530
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 531
    const-string v1, "hybridid"

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/utils/QunarUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 533
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybrididByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 535
    invoke-static {p1}, Lcom/mqunar/hy/res/utils/HybridIdUtils;->getHybrididByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_1e
    return-object v0
.end method

.method public getResByUrl(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/hy/res/HybridManager;->getResByUrlAndHyId(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResByUrlAndHyId(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/mqunar/hy/res/HybridManager;->waitParseThread()V

    .line 581
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v0, v2

    .line 681
    :goto_12
    return-object v0

    .line 585
    :cond_13
    invoke-static {p1}, Lcom/mqunar/hy/res/utils/QHepburnMimeTypeUtils;->obtainMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 586
    if-nez p2, :cond_1f

    const-string v1, "hybridid"

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/utils/QunarUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 589
    :cond_1f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 590
    invoke-virtual {p0}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfos()Ljava/util/List;

    move-result-object v6

    move v3, v5

    move-object v1, v2

    move-object v0, v2

    .line 591
    :goto_2c
    if-eqz v6, :cond_2d8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2d8

    .line 592
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 593
    if-nez v0, :cond_3f

    .line 591
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 596
    :cond_3f
    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/model/HybridInfo;->getHybridFileByUrl(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridFile;

    move-result-object v1

    .line 597
    if-eqz v1, :cond_3c

    .line 598
    sget-object v3, Lcom/mqunar/hy/res/HybridManager;->mHybrididSet:Ljava/util/Set;

    iget-object v6, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 602
    :goto_4f
    if-eqz v1, :cond_53

    if-nez v0, :cond_18b

    .line 604
    :cond_53
    const-string v0, "text/html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 605
    :cond_61
    invoke-static {p1}, Lcom/mqunar/hy/res/utils/HybridIdUtils;->getHybrididByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HybridIdUtils.getHybrididByUrl(url):url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; hybridId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 608
    sget-object v0, Lcom/mqunar/hy/res/HybridManager;->mHybrididSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {p0, p2}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 610
    if-nez v0, :cond_be

    .line 611
    invoke-virtual {p0, p2}, Lcom/mqunar/hy/res/HybridManager;->getDefaultHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CURRENNT_NO_QP,\u672c\u5730\u65e0qp,url\u65e0hybridid,\u8bf7\u6c42qp:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    :cond_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uppdate"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getInstance()Lcom/mqunar/hy/res/HyResInitializer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/HyResInitializer;->sendSingleUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 619
    :cond_e7
    invoke-direct {p0, p2, v2, p1}, Lcom/mqunar/hy/res/HybridManager;->onLoadResFail(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    move-object v0, v2

    .line 620
    goto/16 :goto_12

    .line 623
    :cond_ed
    sget-object v0, Lcom/mqunar/hy/res/HybridManager;->mHybrididSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {p0, p2}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v1

    .line 625
    if-nez v1, :cond_139

    .line 627
    const-string v0, "text/html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 628
    :cond_106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CURRENNT_NO_QP,\u672c\u5730\u65e0qp,url\u6709hybridid,\u8bf7\u6c42qp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getInstance()Lcom/mqunar/hy/res/HyResInitializer;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/mqunar/hy/res/HybridManager;->getDefaultHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mqunar/hy/res/HyResInitializer;->sendSingleUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 631
    :cond_133
    invoke-direct {p0, p2, v1, p1}, Lcom/mqunar/hy/res/HybridManager;->onLoadResFail(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    move-object v0, v2

    .line 632
    goto/16 :goto_12

    .line 634
    :cond_139
    invoke-virtual {v1, p1}, Lcom/mqunar/hy/res/model/HybridInfo;->getHybridFileByUrl(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridFile;

    move-result-object v0

    .line 635
    if-nez v0, :cond_18b

    .line 637
    const-string v0, "text/html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 638
    :cond_14d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CURRENNT_HAS_QP,\u672c\u5730\u6709\u5f53\u524d\u7684qp\u5305\uff0c\u4f46\u662f\u6ca1\u6709\u6307\u5b9a\u7684url,\u8bf7\u6c42qp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_185

    .line 640
    iput v10, v1, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 641
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getInstance()Lcom/mqunar/hy/res/HyResInitializer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/HyResInitializer;->sendSingleUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 644
    :cond_185
    invoke-direct {p0, p2, v1, p1}, Lcom/mqunar/hy/res/HybridManager;->onLoadResFail(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    move-object v0, v2

    .line 645
    goto/16 :goto_12

    .line 649
    :cond_18b
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a2

    iget-wide v6, v1, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1ec

    .line 651
    :cond_1a2
    const-string v0, "***file deleted****"

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/model/HybridInfo;->setMd5(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 653
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 655
    :cond_1b0
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CURRENNT_NO_QP,\u672c\u5730\u65e0qp,\u6587\u4ef6\u88ab\u5220\u9664,\u8bf7\u6c42qp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getInstance()Lcom/mqunar/hy/res/HyResInitializer;

    move-result-object v0

    iget-object v3, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mqunar/hy/res/HybridManager;->getDefaultHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mqunar/hy/res/HyResInitializer;->sendSingleUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 658
    invoke-direct {p0, p2, v1, p1}, Lcom/mqunar/hy/res/HybridManager;->onLoadResFail(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    move-object v0, v2

    .line 659
    goto/16 :goto_12

    .line 661
    :cond_1ec
    const-string v3, "text/html"

    iget-object v4, v0, Lcom/mqunar/hy/res/model/HybridFile;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1fe

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridFile;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22b

    .line 662
    :cond_1fe
    iput v10, v1, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENNT_HAS_QP,\u672c\u5730\u6709qp,\u68c0\u6d4b\u66f4\u65b0,\u8bf7\u6c42qp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getInstance()Lcom/mqunar/hy/res/HyResInitializer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mqunar/hy/res/HyResInitializer;->sendSingleUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 667
    :cond_22b
    :try_start_22b
    const-string v3, "HyRes \u51c6\u5907\u4f7f\u7528\u79bb\u7ebf\u8d44\u6e90 url=%s,hybrid=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->isQpCanUse(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v3

    if-nez v3, :cond_271

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HyRes QP\u5305"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isQpCanUse = false"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    invoke-direct {p0, p2, v1, p1}, Lcom/mqunar/hy/res/HybridManager;->onLoadResFail(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    move-object v0, v2

    .line 671
    goto/16 :goto_12

    .line 673
    :cond_271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HyRes QP\u5305"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isQpCanUse = true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v3

    iget-object v4, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->setUsedHybridid(Ljava/lang/String;)V

    .line 675
    invoke-direct {p0, p2, v1, p1}, Lcom/mqunar/hy/res/HybridManager;->onLoadResSucc(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    .line 676
    new-instance v3, Landroid/webkit/WebResourceResponse;

    iget-object v4, v0, Lcom/mqunar/hy/res/model/HybridFile;->mimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c5

    const-string v4, "text/html"

    :goto_2aa
    const-string v6, "utf-8"

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Lcom/mqunar/hy/res/utils/QmpFileInputStream;

    iget-object v9, v1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    iget v10, v0, Lcom/mqunar/hy/res/model/HybridFile;->start:I

    iget v0, v0, Lcom/mqunar/hy/res/model/HybridFile;->length:I

    invoke-direct {v8, v9, v10, v0}, Lcom/mqunar/hy/res/utils/QmpFileInputStream;-><init>(Ljava/lang/String;II)V

    const v0, 0x8000

    invoke-direct {v7, v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4, v6, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, v3

    goto/16 :goto_12

    :cond_2c5
    iget-object v4, v0, Lcom/mqunar/hy/res/model/HybridFile;->mimeType:Ljava/lang/String;
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_2c7} :catch_2c8

    goto :goto_2aa

    .line 678
    :catch_2c8
    move-exception v0

    .line 679
    const-string v3, "HyRes hy_res getresponse"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    invoke-direct {p0, p2, v1, p1}, Lcom/mqunar/hy/res/HybridManager;->onLoadResFail(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;Ljava/lang/String;)V

    move-object v0, v2

    .line 681
    goto/16 :goto_12

    :cond_2d8
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_4f
.end method

.method public getUrlsByHyId(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_21

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    iget-boolean v2, v1, Lcom/mqunar/hy/res/model/HybridInfo;->errorChanged:Z

    if-nez v2, :cond_20

    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridInfo;->getActualResource()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 757
    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridInfo;->getActualResource()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 761
    :cond_20
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public hasUsedHybridInfo(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    :cond_7
    :goto_7
    return v0

    .line 345
    :cond_8
    sget-object v1, Lcom/mqunar/hy/res/HybridManager;->mHybrididSet:Ljava/util/Set;

    if-eqz v1, :cond_7

    .line 348
    sget-object v0, Lcom/mqunar/hy/res/HybridManager;->mHybrididSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public isForceUpgrade(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 795
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 812
    :cond_8
    :goto_8
    return v0

    .line 798
    :cond_9
    invoke-static {}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->getInstance()Lcom/mqunar/hy/res/utils/UpgradeInfoCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->getHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_8

    .line 803
    invoke-virtual {v2}, Lcom/mqunar/hy/res/model/HybridInfo;->isForce()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 804
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v3

    .line 805
    if-nez v3, :cond_21

    move v0, v1

    .line 806
    goto :goto_8

    .line 808
    :cond_21
    iget v2, v2, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v3, v3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-le v2, v3, :cond_8

    move v0, v1

    .line 809
    goto :goto_8
.end method

.method public isQPCanUse(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_12

    .line 551
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->isQpCanUse(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isResCanUse(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_18

    .line 565
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->isQpCanUse(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 566
    invoke-virtual {v0, p2}, Lcom/mqunar/hy/res/model/HybridInfo;->getHybridFileByUrl(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridFile;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public moveToWorkspace(Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 6

    .prologue
    .line 484
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mqunar/hy/res/HybridManager;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 487
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 488
    if-eqz v2, :cond_2b

    .line 489
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    .line 490
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    .line 498
    :goto_2a
    return-object p1

    .line 493
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 494
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 498
    :cond_34
    const/4 p1, 0x0

    goto :goto_2a
.end method

.method public removeModule(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 212
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deleteCacheHyInfo(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 215
    if-nez v0, :cond_e

    .line 224
    :cond_d
    :goto_d
    return-void

    .line 218
    :cond_e
    iget-object v1, p0, Lcom/mqunar/hy/res/HybridManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_d
.end method

.method public sendQpUpdatedToCacheBroadCast(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 5

    .prologue
    .line 817
    if-nez p1, :cond_3

    .line 824
    :goto_2
    return-void

    .line 820
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "QP_UPDATED_TO_CACHE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    const-string v1, "QP_UPDATED_TO_CACHE_HYBRID_KEY"

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v1, "QP_UPDATED_TO_CACHE_DATA_KEY"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2
.end method

.method public waitParseThread()V
    .registers 4

    .prologue
    .line 779
    sget-boolean v0, Lcom/mqunar/hy/res/HybridManager;->parseFlag:Z

    if-nez v0, :cond_d

    .line 781
    :try_start_4
    sget-object v0, Lcom/mqunar/hy/res/HybridManager;->parseThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 782
    sget-object v0, Lcom/mqunar/hy/res/HybridManager;->parseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_e

    .line 788
    :cond_d
    :goto_d
    return-void

    .line 784
    :catch_e
    move-exception v0

    .line 785
    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method
