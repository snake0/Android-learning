.class public final Lcom/baidu/techain/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Landroid/content/Context;

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/baidu/techain/core/d;

.field private static g:I


# instance fields
.field public a:Lcom/baidu/techain/e;

.field c:Lcom/baidu/techain/a/a;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/baidu/techain/core/d;->g:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/techain/core/d;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/core/d;->e:Z

    .line 87
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 89
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    .line 90
    new-instance v0, Lcom/baidu/techain/e;

    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    return-object v0
.end method

.method public static a()Lcom/baidu/techain/core/d;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/baidu/techain/core/d;->f:Lcom/baidu/techain/core/d;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/techain/core/d;
    .registers 4

    .prologue
    .line 145
    const-class v1, Lcom/baidu/techain/core/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/techain/core/d;->f:Lcom/baidu/techain/core/d;

    if-nez v0, :cond_12

    .line 146
    new-instance v0, Lcom/baidu/techain/core/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/techain/core/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/techain/core/d;->f:Lcom/baidu/techain/core/d;

    .line 148
    :cond_12
    sget-object v0, Lcom/baidu/techain/core/d;->f:Lcom/baidu/techain/core/d;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)V
    .registers 2

    .prologue
    .line 1513
    sget v0, Lcom/baidu/techain/core/d;->g:I

    if-nez v0, :cond_6

    .line 1514
    sput p0, Lcom/baidu/techain/core/d;->g:I

    .line 1516
    :cond_6
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 466
    :try_start_3
    iget-object v1, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v1, p1}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_1c

    .line 468
    iget-object v1, v1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 469
    invoke-static {p2, v1}, Lcom/baidu/techain/b/e;->c(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_fe

    move-result v1

    if-nez v1, :cond_14

    .line 574
    :cond_13
    :goto_13
    return-void

    .line 3823
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v1, p1}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_f8

    move-result-object v1

    .line 3824
    if-nez v1, :cond_a7

    .line 481
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26d

    .line 482
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v5, ".tmp_techain"

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_38

    .line 484
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 487
    :cond_38
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_5a} :catch_254
    .catchall {:try_start_1c .. :try_end_5a} :catchall_224

    .line 488
    :try_start_5a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5f} :catch_259
    .catchall {:try_start_5a .. :try_end_5f} :catchall_224

    .line 489
    :try_start_5f
    sget-object v5, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_6c} :catch_260
    .catchall {:try_start_5f .. :try_end_6c} :catchall_245

    move-result-object v0

    .line 491
    const/16 v5, 0x2000

    :try_start_6f
    new-array v5, v5, [B

    .line 493
    :goto_71
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_104

    .line 494
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_7c} :catch_7d
    .catchall {:try_start_6f .. :try_end_7c} :catchall_24a

    goto :goto_71

    .line 552
    :catch_7d
    move-exception v3

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    :goto_82
    :try_start_82
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 553
    if-eqz v0, :cond_215

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_215

    .line 554
    invoke-static {v0}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 555
    iget-object v3, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v3, p1}, Lcom/baidu/techain/a/a;->h(I)V

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_98
    .catchall {:try_start_82 .. :try_end_98} :catchall_24f

    .line 560
    if-eqz v2, :cond_9d

    .line 562
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_23c

    .line 566
    :cond_9d
    :goto_9d
    if-eqz v1, :cond_13

    .line 568
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a4

    goto/16 :goto_13

    :catch_a4
    move-exception v0

    goto/16 :goto_13

    .line 3827
    :cond_a7
    :try_start_a7
    iget-object v2, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v2, p1}, Lcom/baidu/techain/a/a;->h(I)V

    .line 3828
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", e="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 3831
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3832
    invoke-static {v2}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 3833
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 3834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " s="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_f6} :catch_f8

    goto/16 :goto_1c

    .line 3837
    :catch_f8
    move-exception v1

    :try_start_f9
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_fc} :catch_fe

    goto/16 :goto_1c

    .line 475
    :catch_fe
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_1c

    .line 496
    :cond_104
    :try_start_104
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V

    .line 500
    invoke-static {v1}, Lcom/baidu/techain/b/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 501
    if-eqz v5, :cond_11b

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12b

    .line 502
    :cond_11b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_11e} :catch_7d
    .catchall {:try_start_104 .. :try_end_11e} :catchall_24a

    .line 560
    if-eqz v0, :cond_123

    .line 562
    :try_start_120
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_234

    .line 568
    :cond_123
    :goto_123
    :try_start_123
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_128

    goto/16 :goto_13

    .line 503
    :catch_128
    move-exception v0

    goto/16 :goto_13

    .line 505
    :cond_12b
    :try_start_12b
    new-instance v6, Lcom/baidu/techain/core/ApkInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, p2, v7}, Lcom/baidu/techain/core/ApkInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    iput-object v5, v6, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 507
    const/4 v5, 0x1

    iput v5, v6, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 508
    iget-object v5, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v5, v6}, Lcom/baidu/techain/a/a;->a(Lcom/baidu/techain/core/ApkInfo;)J

    .line 510
    iget-object v5, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v5, p1}, Lcom/baidu/techain/a/a;->g(I)I

    move-result v5

    .line 512
    const/4 v6, 0x3

    if-ne v5, v6, :cond_26a

    .line 513
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 516
    :goto_14a
    iget-object v4, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v4}, Lcom/baidu/techain/e;->d()Z

    move-result v4

    if-eqz v4, :cond_1b7

    if-eqz v3, :cond_1b7

    .line 517
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".b_techain"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_16a

    .line 519
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 522
    :cond_16a
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 523
    invoke-static {v4}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_18f

    .line 524
    invoke-static {v1, v4}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    .line 526
    :cond_18f
    sget-object v3, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 527
    invoke-static {v3, p1, v1, v4}, Lcom/baidu/techain/c;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    :try_end_194
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_194} :catch_7d
    .catchall {:try_start_12b .. :try_end_194} :catchall_24a

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    .line 541
    :goto_198
    :try_start_198
    iget-object v3, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v3, p1}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_1a8

    iget-object v3, v3, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/techain/b/e;->c(Ljava/lang/String;)Z
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_198 .. :try_end_1a5} :catch_267
    .catchall {:try_start_198 .. :try_end_1a5} :catchall_24f

    move-result v3

    if-nez v3, :cond_1f7

    .line 560
    :cond_1a8
    if-eqz v2, :cond_1ad

    .line 562
    :try_start_1aa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_237

    .line 566
    :cond_1ad
    :goto_1ad
    if-eqz v1, :cond_13

    .line 568
    :try_start_1af
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b2} :catch_1b4

    goto/16 :goto_13

    :catch_1b4
    move-exception v0

    goto/16 :goto_13

    .line 530
    :cond_1b7
    :try_start_1b7
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".b_techain"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1f2

    .line 532
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    invoke-static {v4}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1f2

    .line 534
    invoke-static {v4}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 535
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1f2
    .catch Ljava/lang/Throwable; {:try_start_1b7 .. :try_end_1f2} :catch_7d
    .catchall {:try_start_1b7 .. :try_end_1f2} :catchall_24a

    :cond_1f2
    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_198

    .line 546
    :cond_1f7
    :try_start_1f7
    invoke-virtual {p0, p1, p2, p4}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 547
    if-eqz v3, :cond_206

    .line 548
    sget-object v3, Lcom/baidu/techain/core/d;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_206
    .catch Ljava/lang/Throwable; {:try_start_1f7 .. :try_end_206} :catch_267
    .catchall {:try_start_1f7 .. :try_end_206} :catchall_24f

    .line 560
    :cond_206
    if-eqz v2, :cond_20b

    .line 562
    :try_start_208
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_20b} :catch_23a

    .line 566
    :cond_20b
    :goto_20b
    if-eqz v1, :cond_13

    .line 568
    :try_start_20d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_210
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_210} :catch_212

    goto/16 :goto_13

    .line 570
    :catch_212
    move-exception v0

    goto/16 :goto_13

    .line 560
    :cond_215
    if-eqz v2, :cond_21a

    .line 562
    :try_start_217
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21a} :catch_23f

    .line 566
    :cond_21a
    :goto_21a
    if-eqz v1, :cond_13

    .line 568
    :try_start_21c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21f} :catch_221

    goto/16 :goto_13

    .line 570
    :catch_221
    move-exception v0

    goto/16 :goto_13

    .line 560
    :catchall_224
    move-exception v1

    move-object v2, v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_229
    if-eqz v1, :cond_22e

    .line 562
    :try_start_22b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22e
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_22e} :catch_241

    .line 566
    :cond_22e
    :goto_22e
    if-eqz v2, :cond_233

    .line 568
    :try_start_230
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_233
    .catch Ljava/io/IOException; {:try_start_230 .. :try_end_233} :catch_243

    .line 570
    :cond_233
    :goto_233
    throw v0

    :catch_234
    move-exception v0

    goto/16 :goto_123

    :catch_237
    move-exception v0

    goto/16 :goto_1ad

    :catch_23a
    move-exception v0

    goto :goto_20b

    :catch_23c
    move-exception v0

    goto/16 :goto_9d

    :catch_23f
    move-exception v0

    goto :goto_21a

    :catch_241
    move-exception v1

    goto :goto_22e

    :catch_243
    move-exception v1

    goto :goto_233

    .line 560
    :catchall_245
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_229

    :catchall_24a
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_229

    :catchall_24f
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_229

    .line 552
    :catch_254
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_82

    :catch_259
    move-exception v2

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_82

    :catch_260
    move-exception v3

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto/16 :goto_82

    :catch_267
    move-exception v3

    goto/16 :goto_82

    :cond_26a
    move v3, v4

    goto/16 :goto_14a

    :cond_26d
    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_198
.end method

.method private declared-synchronized a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z
    .registers 14

    .prologue
    .line 593
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 595
    if-eqz p3, :cond_1a

    .line 597
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->c(I)I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_2cd
    .catchall {:try_start_1 .. :try_end_13} :catchall_345

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 598
    const/4 v0, 0x0

    .line 817
    :goto_18
    monitor-exit p0

    return v0

    .line 602
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v1

    .line 603
    if-nez v1, :cond_4d

    .line 604
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 607
    const-string v1, "0"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v1, "2"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    if-nez p3, :cond_4b

    .line 611
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003105"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 617
    :cond_4b
    const/4 v0, 0x0

    goto :goto_18

    .line 637
    :cond_4d
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 639
    invoke-static {v0}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 640
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 642
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->f(I)V

    .line 644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 645
    const-string v1, "0"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "2"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    if-nez p3, :cond_8e

    .line 650
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003105"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 653
    :cond_8e
    const/4 v0, 0x0

    goto :goto_18

    .line 655
    :cond_90
    if-eqz p4, :cond_94

    .line 656
    iput-object p4, v1, Lcom/baidu/techain/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    .line 658
    :cond_94
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 659
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/core/g;->a(Landroid/content/Context;)Lcom/baidu/techain/core/g;

    move-result-object v4

    .line 661
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 662
    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Z)Z

    move-result v0

    if-nez v0, :cond_de

    .line 663
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->f(I)V

    .line 667
    iget-object v0, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/baidu/techain/core/g;->a(Ljava/lang/String;)Z

    .line 669
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 670
    const-string v1, "0"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v1, "2"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    if-nez p3, :cond_d8

    .line 674
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003105"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 677
    :cond_d8
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 678
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 681
    :cond_de
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_e1} :catch_2cd
    .catchall {:try_start_1a .. :try_end_e1} :catchall_345

    .line 683
    :try_start_e1
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 686
    if-eqz v2, :cond_1a7

    array-length v0, v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a7

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a7

    const/4 v0, 0x1

    aget-object v0, v2, v0

    .line 687
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a7

    .line 688
    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 689
    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object v3, v2

    move-object v2, v0

    .line 695
    :goto_107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "ak="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", sk="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 697
    iget-object v0, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/baidu/techain/core/g;->c(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v1

    .line 699
    iget-object v0, v1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/baidu/techain/core/f;

    .line 701
    const-string v5, "com.baidu.techain.engine.EngineImpl"

    .line 702
    invoke-virtual {v0, v5}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 704
    if-nez v5, :cond_1af

    .line 705
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 706
    const-string v2, "java.lang.String"

    invoke-virtual {v0, v2}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 708
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 709
    const-string v5, "0"

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v5, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v5, "2"

    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "classloader="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",StringClass="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 714
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    const-string v6, ""

    .line 717
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\t"

    const-string v6, ""

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    const-string v6, ""

    .line 718
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    if-nez p3, :cond_19f

    .line 720
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003105"

    invoke-static {v0, v2, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 723
    :cond_19f
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->f(I)V

    .line 724
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 691
    :cond_1a7
    const-string v0, "3"

    .line 692
    const-string v2, "925fc15df8a49bed0b3eca8d2b44cb7b"

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_107

    .line 727
    :cond_1af
    const-string v0, "getInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 728
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ai="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_1d6
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_1d6} :catch_25f
    .catchall {:try_start_e1 .. :try_end_1d6} :catchall_345

    .line 733
    :try_start_1d6
    const-string v5, "setSecurityVerifyInfo"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    .line 734
    invoke-static {v0, v5, v6, v7}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f1
    .catch Ljava/lang/Throwable; {:try_start_1d6 .. :try_end_1f1} :catch_25a
    .catchall {:try_start_1d6 .. :try_end_1f1} :catchall_345

    .line 741
    :goto_1f1
    :try_start_1f1
    const-string v2, "init"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 743
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v7}, Lcom/baidu/techain/e;->o()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 741
    invoke-static {v0, v2, v3, v5}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2d4

    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 746
    const-string v2, "0"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string v2, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string v2, "2"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    if-nez p3, :cond_24a

    .line 750
    sget-object v2, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v3, "1003105"

    invoke-static {v2, v3, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 753
    :cond_24a
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->f(I)V

    .line 757
    iget-object v0, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/baidu/techain/core/g;->a(Ljava/lang/String;)Z

    .line 759
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 761
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 738
    :catch_25a
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_25e
    .catch Ljava/lang/Throwable; {:try_start_1f1 .. :try_end_25e} :catch_25f
    .catchall {:try_start_1f1 .. :try_end_25e} :catchall_345

    goto :goto_1f1

    .line 764
    :catch_25f
    move-exception v0

    .line 766
    :try_start_260
    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 767
    iget-object v2, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v2, p1}, Lcom/baidu/techain/a/a;->f(I)V

    .line 770
    invoke-static {v0}, Lcom/baidu/techain/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 771
    sget-object v2, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 772
    invoke-static {v2, v0, v3}, Lcom/baidu/techain/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/baidu/techain/core/g;->a(Ljava/lang/String;)Z

    .line 776
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 777
    const-string v2, "0"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v2, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v2, "2"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v2, "3"

    .line 781
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    const-string v4, ""

    .line 782
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\t"

    const-string v4, ""

    .line 783
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\r"

    const-string v4, ""

    .line 784
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    if-nez p3, :cond_2c5

    .line 786
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003105"

    invoke-static {v0, v2, v1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2c5
    .catch Ljava/lang/Throwable; {:try_start_260 .. :try_end_2c5} :catch_2c8
    .catchall {:try_start_260 .. :try_end_2c5} :catchall_345

    .line 791
    :cond_2c5
    :goto_2c5
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 789
    :catch_2c8
    move-exception v0

    :try_start_2c9
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_2cc
    .catch Ljava/lang/Throwable; {:try_start_2c9 .. :try_end_2cc} :catch_2cd
    .catchall {:try_start_2c9 .. :try_end_2cc} :catchall_345

    goto :goto_2c5

    .line 816
    :catch_2cd
    move-exception v0

    :try_start_2ce
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_2d1
    .catchall {:try_start_2ce .. :try_end_2d1} :catchall_345

    .line 817
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 794
    :cond_2d4
    const/4 v0, 0x1

    :try_start_2d5
    iput v0, v1, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    .line 795
    const/4 v0, 0x1

    iput v0, v1, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    .line 796
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/a/a;->a(Lcom/baidu/techain/core/ApkInfo;)J

    .line 797
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 798
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v2, v1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v0, v2}, Lcom/baidu/techain/a/a;->g(I)I

    move-result v0

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "plugin now loadStatus :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 800
    const/4 v2, 0x3

    if-ge v0, v2, :cond_312

    const/4 v2, -0x1

    if-eq v0, v2, :cond_312

    .line 801
    iget-object v2, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v3, v1, Lcom/baidu/techain/core/ApkInfo;->key:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/baidu/techain/a/a;->b(II)V

    .line 803
    :cond_312
    iget v0, v1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-direct {p0, v0}, Lcom/baidu/techain/core/d;->b(I)V

    .line 804
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 805
    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v1, "2"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    if-nez p3, :cond_33d

    .line 809
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003105"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 812
    :cond_33d
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->c(Landroid/content/Context;)V
    :try_end_342
    .catch Ljava/lang/Throwable; {:try_start_2d5 .. :try_end_342} :catch_2cd
    .catchall {:try_start_2d5 .. :try_end_342} :catchall_345

    .line 814
    const/4 v0, 0x1

    goto/16 :goto_18

    .line 593
    :catchall_345
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/e;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    return-object v0
.end method

.method private b(I)V
    .registers 8

    .prologue
    .line 1526
    const v0, 0x186bc

    if-eq p1, v0, :cond_a

    const v0, 0x186b3

    if-ne p1, v0, :cond_88

    .line 1528
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " init suceed now to sri/src"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1529
    const-string v2, "sri"

    new-instance v3, Lcom/baidu/techain/core/d$5;

    invoke-direct {v3, p0}, Lcom/baidu/techain/core/d$5;-><init>(Lcom/baidu/techain/core/d;)V

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget v1, Lcom/baidu/techain/R$layout;->a_a:I

    .line 1539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    sget v1, Lcom/baidu/techain/R$drawable;->b_b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    move-object v0, p0

    move v1, p1

    .line 1529
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_49} :catch_89

    .line 1544
    :goto_49
    :try_start_49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1545
    const-string v1, "n_b_s0"

    sget v2, Lcom/baidu/techain/R$drawable;->n_b_s0:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1546
    const-string v1, "n_b_s1"

    sget v2, Lcom/baidu/techain/R$drawable;->n_b_s1:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1547
    const-string v1, "n_b_s2"

    sget v2, Lcom/baidu/techain/R$drawable;->n_b_s2:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1548
    const-string v1, "n_b_s3"

    sget v2, Lcom/baidu/techain/R$drawable;->n_b_s3:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1549
    const-string v2, "src"

    new-instance v3, Lcom/baidu/techain/core/d$6;

    invoke-direct {v3, p0}, Lcom/baidu/techain/core/d$6;-><init>(Lcom/baidu/techain/core/d;)V

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1559
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    move-object v0, p0

    move v1, p1

    .line 1549
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_88} :catch_8e

    .line 1564
    :cond_88
    :goto_88
    return-void

    .line 1541
    :catch_89
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_49

    .line 1561
    :catch_8e
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_88
.end method

.method private static b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1368
    :try_start_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1404
    :cond_11
    :goto_11
    return-void

    .line 1372
    :cond_12
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v1

    .line 1373
    if-eqz v1, :cond_11

    .line 1377
    invoke-virtual {v1, p0}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_11

    .line 1383
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/baidu/techain/core/f;

    .line 1385
    const-string v2, "com.baidu.techain.engine.EngineImpl"

    .line 1386
    invoke-virtual {v0, v2}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1388
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1389
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1391
    if-eqz v0, :cond_11

    .line 1395
    const-string v2, "unload"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1399
    invoke-virtual {v1, p0}, Lcom/baidu/techain/core/g;->b(Ljava/lang/String;)Z
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_5c} :catch_5d

    goto :goto_11

    .line 1401
    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_11
.end method

.method private c(Landroid/content/Context;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1568
    :try_start_2
    invoke-static {p1}, Lcom/baidu/techain/core/g;->a(Landroid/content/Context;)Lcom/baidu/techain/core/g;

    move-result-object v2

    .line 1569
    if-nez v2, :cond_9

    .line 1609
    :cond_8
    :goto_8
    return v0

    .line 1572
    :cond_9
    const-string v3, "com.baidu.techain.x18"

    invoke-virtual {v2, v3}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v3

    .line 1573
    if-eqz v3, :cond_13

    move v0, v1

    .line 1574
    goto :goto_8

    .line 1576
    :cond_13
    iget-object v3, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    if-nez v3, :cond_1f

    .line 1577
    sget-object v3, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    .line 1579
    :cond_1f
    iget-object v3, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    const-string v4, "com.baidu.techain.x18"

    invoke-virtual {v3, v4}, Lcom/baidu/techain/a/a;->c(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v3

    .line 1580
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "push::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1581
    if-eqz v3, :cond_99

    .line 1582
    iget-object v4, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v4}, Lcom/baidu/techain/e;->d()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1583
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, ".b_techain"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_54

    .line 1585
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1588
    :cond_54
    new-instance v5, Ljava/io/File;

    iget-object v6, v3, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1589
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v3, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1591
    invoke-static {v6}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 1592
    invoke-static {v5, v6}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    .line 1594
    :cond_84
    sget-object v4, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    iget v7, v3, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 1595
    invoke-static {v4, v7, v5, v6}, Lcom/baidu/techain/c;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 1598
    :cond_8b
    iget v4, v3, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget-object v3, v3, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_99

    move v0, v1

    .line 1599
    goto/16 :goto_8

    .line 1602
    :cond_99
    const-string v3, "com.baidu.techain.x18"

    invoke-virtual {v2, v3}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9e} :catch_a4

    move-result-object v2

    .line 1603
    if-eqz v2, :cond_8

    move v0, v1

    .line 1606
    goto/16 :goto_8

    .line 1608
    :catch_a4
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_8
.end method

.method static synthetic c(Lcom/baidu/techain/core/d;)Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/baidu/techain/core/d;->e:Z

    return v0
.end method


# virtual methods
.method public final varargs a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1259
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1260
    const-string v0, "0"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string v4, "1"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    move-object v0, p2

    :goto_27
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string v0, "2"

    const-string v4, "1"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v4, "1003136"

    invoke-static {v0, v4, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1264
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1265
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1333
    :goto_47
    return-object v0

    .line 1261
    :cond_48
    const-string v0, " "

    goto :goto_27

    .line 1270
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->d(I)Z

    move-result v0

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1273
    if-eqz v0, :cond_7b

    .line 1274
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_69
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4b .. :try_end_69} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4b .. :try_end_69} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_69} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_69} :catch_df
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_69} :catch_136

    goto :goto_47

    .line 1320
    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1321
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_47

    .line 1277
    :cond_7b
    :try_start_7b
    iget-boolean v0, p0, Lcom/baidu/techain/core/d;->e:Z

    if-nez v0, :cond_9c

    .line 1279
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7b .. :try_end_8a} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7b .. :try_end_8a} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_7b .. :try_end_8a} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_8a} :catch_df
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_8a} :catch_136

    goto :goto_47

    .line 1323
    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1324
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_47

    .line 1283
    :cond_9c
    :try_start_9c
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v3

    .line 1284
    if-nez v3, :cond_bf

    .line 1285
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ad
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9c .. :try_end_ad} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9c .. :try_end_ad} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_9c .. :try_end_ad} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_ad} :catch_df
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_ad} :catch_136

    goto :goto_47

    .line 1326
    :catch_ae
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1327
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_47

    .line 1291
    :cond_bf
    :try_start_bf
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v4

    .line 1292
    if-eqz v4, :cond_14d

    .line 1293
    iget-object v0, v4, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    if-eqz v0, :cond_14d

    move v0, v1

    .line 1298
    :goto_d0
    if-nez v0, :cond_f1

    .line 1299
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_dd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_bf .. :try_end_dd} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_bf .. :try_end_dd} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_bf .. :try_end_dd} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bf .. :try_end_dd} :catch_df
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_dd} :catch_136

    goto/16 :goto_47

    .line 1329
    :catch_df
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1330
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_47

    .line 1302
    :cond_f1
    :try_start_f1
    iget-object v0, v4, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 1304
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/baidu/techain/core/f;

    .line 1306
    const-string v1, "com.baidu.techain.engine.EngineImpl"

    .line 1307
    invoke-virtual {v0, v1}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1309
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1310
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1312
    invoke-static {v0, p2, p3, p4}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f1 .. :try_end_11e} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f1 .. :try_end_11e} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_f1 .. :try_end_11e} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f1 .. :try_end_11e} :catch_df
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_11e} :catch_136

    move-result-object v1

    .line 1314
    :try_start_11f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_12a} :catch_148
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11f .. :try_end_12a} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11f .. :try_end_12a} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_11f .. :try_end_12a} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11f .. :try_end_12a} :catch_df

    .line 1318
    :goto_12a
    :try_start_12a
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_134
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12a .. :try_end_134} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12a .. :try_end_134} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_12a .. :try_end_134} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12a .. :try_end_134} :catch_df
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_134} :catch_136

    goto/16 :goto_47

    .line 1332
    :catch_136
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1333
    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_47

    .line 1316
    :catch_148
    move-exception v0

    :try_start_149
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_14c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_149 .. :try_end_14c} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_149 .. :try_end_14c} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_149 .. :try_end_14c} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_149 .. :try_end_14c} :catch_df
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_14c} :catch_136

    goto :goto_12a

    :cond_14d
    move v0, v2

    goto :goto_d0
.end method

.method public final varargs a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/ac/Callback;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1104
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1106
    const-string v0, "0"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string v2, "1"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    move-object v0, p2

    :goto_22
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const-string v0, "2"

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003136"

    invoke-static {v0, v2, v1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1111
    if-eqz p3, :cond_49

    .line 1112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    :cond_49
    :goto_49
    return-void

    .line 1107
    :cond_4a
    const-string v0, " "

    goto :goto_22

    .line 1117
    :cond_4d
    new-instance v0, Lcom/baidu/techain/core/d$3;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/techain/core/d$3;-><init>(Lcom/baidu/techain/core/d;Lcom/baidu/techain/ac/Callback;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1247
    invoke-virtual {v0}, Lcom/baidu/techain/core/d$3;->start()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_49

    .line 1249
    :catch_5c
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_49
.end method

.method public final declared-synchronized a(Lcom/baidu/techain/ac/Callback;)V
    .registers 6

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Landroid/content/Context;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/baidu/techain/core/d;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 169
    iget-boolean v0, p0, Lcom/baidu/techain/core/d;->e:Z

    if-eqz v0, :cond_21

    .line 170
    if-eqz p1, :cond_1f

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_af
    .catchall {:try_start_1 .. :try_end_1f} :catchall_b5

    .line 239
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 176
    :cond_21
    const/4 v0, 0x1

    :try_start_22
    iput-boolean v0, p0, Lcom/baidu/techain/core/d;->e:Z

    .line 178
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    const-string v1, "3.1.6.1"

    .line 2471
    iget-object v2, v0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "ssv"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2472
    iget-object v0, v0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/techain/rp/Report;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/rp/Report;->n()V

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    new-instance v2, Lcom/baidu/techain/TechainReceiver;

    invoke-direct {v2}, Lcom/baidu/techain/TechainReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0}, Lcom/baidu/techain/a/a;->a()Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_62
    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_6e} :catch_af
    .catchall {:try_start_22 .. :try_end_6e} :catchall_b5

    .line 190
    const/4 v1, 0x0

    .line 192
    :try_start_6f
    sget-object v3, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_78} :catch_b8
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_78} :catch_af
    .catchall {:try_start_6f .. :try_end_78} :catchall_b5

    move-result-object v1

    .line 197
    :goto_79
    if-eqz v1, :cond_62

    .line 200
    :try_start_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/.techain_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_ae} :catch_af
    .catchall {:try_start_7b .. :try_end_ae} :catchall_b5

    goto :goto_62

    .line 236
    :catch_af
    move-exception v0

    :try_start_b0
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b5

    goto/16 :goto_1f

    .line 166
    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :catch_b8
    move-exception v3

    :try_start_b9
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_79

    .line 205
    :cond_bd
    new-instance v0, Lcom/baidu/techain/core/d$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/techain/core/d$1;-><init>(Lcom/baidu/techain/core/d;Lcom/baidu/techain/ac/Callback;)V

    .line 234
    invoke-virtual {v0}, Lcom/baidu/techain/core/d$1;->start()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_c5} :catch_af
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_b5

    goto/16 :goto_1f
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1409
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1410
    new-instance v0, Lcom/baidu/techain/core/d$4;

    invoke-direct {v0, p0, p1}, Lcom/baidu/techain/core/d$4;-><init>(Lcom/baidu/techain/core/d;Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v0}, Lcom/baidu/techain/core/d$4;->start()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 1506
    :goto_13
    return-void

    .line 1503
    :catch_14
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_13
.end method

.method public final declared-synchronized a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .registers 5

    .prologue
    .line 578
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 867
    if-nez p1, :cond_13

    move v0, v1

    .line 1075
    :goto_12
    return v0

    .line 870
    :cond_13
    new-instance v6, Ljava/io/File;

    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    :try_start_1a
    invoke-static {v6}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 873
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 876
    const-string v2, "0"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v2, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v2, "2"

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nowTime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nowFileInfo: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 882
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exists="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 884
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canRead="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 885
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 886
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 887
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    .line 880
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, ""

    .line 888
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\t"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v5, ""

    .line 889
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v2, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v3, "1003106"

    invoke-static {v2, v3, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 893
    goto/16 :goto_12

    .line 896
    :cond_e0
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v0, v4}, Lcom/baidu/techain/a/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 897
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/a/a;->a(Lcom/baidu/techain/core/ApkInfo;)J

    .line 900
    :cond_ef
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 901
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/core/g;->a(Landroid/content/Context;)Lcom/baidu/techain/core/g;

    move-result-object v7

    .line 904
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/baidu/techain/a/a;->a(II)I

    .line 905
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->b(Ljava/lang/String;)V

    .line 907
    const/4 v0, 0x1

    invoke-virtual {v7, p1, v0}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Z)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 909
    const-string v2, "0"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v2, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v2, "2"

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v2, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v3, "1003106"

    invoke-static {v2, v3, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 914
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 916
    invoke-static {v6}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 918
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 921
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget-object v2, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z

    .line 922
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/techain/a/a;->a(II)I

    move v0, v1

    .line 923
    goto/16 :goto_12

    .line 926
    :cond_15b
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_18b

    array-length v4, v0

    if-ne v4, v8, :cond_18b

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18b

    const/4 v4, 0x1

    aget-object v4, v0, v4

    .line 930
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18b

    .line 931
    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 932
    const/4 v5, 0x1

    aget-object v0, v0, v5

    move-object v5, v4

    move-object v4, v0

    .line 938
    :goto_180
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/baidu/techain/core/g;->c(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object p1

    .line 939
    if-nez p1, :cond_192

    move v0, v1

    .line 940
    goto/16 :goto_12

    .line 934
    :cond_18b
    const-string v4, "3"

    .line 935
    const-string v0, "925fc15df8a49bed0b3eca8d2b44cb7b"

    move-object v5, v4

    move-object v4, v0

    goto :goto_180

    .line 942
    :cond_192
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/baidu/techain/core/f;

    .line 944
    const-string v7, "com.baidu.techain.engine.EngineImpl"

    .line 945
    invoke-virtual {v0, v7}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 946
    if-nez v7, :cond_228

    .line 947
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 948
    const-string v2, "java.lang.String"

    invoke-virtual {v0, v2}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 950
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 951
    const-string v4, "0"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v4, "1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string v4, "2"

    iget-object v5, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "classloader="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",StringClass="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 956
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    const-string v5, ""

    .line 959
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\t"

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    const-string v5, ""

    .line 960
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v2, "1003106"

    invoke-static {v0, v2, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 963
    invoke-static {v6}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 964
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 965
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/techain/a/a;->a(II)I

    move v0, v1

    .line 966
    goto/16 :goto_12

    .line 969
    :cond_228
    const-string v0, "getInstance"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v7, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 970
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_241
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_241} :catch_2e9

    move-result-object v0

    .line 972
    :try_start_242
    const-string v7, "setSecurityVerifyInfo"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v5, 0x1

    aput-object v4, v9, v5

    .line 973
    invoke-static {v0, v7, v8, v9}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25d
    .catch Ljava/lang/Throwable; {:try_start_242 .. :try_end_25d} :catch_2e3

    .line 980
    :goto_25d
    :try_start_25d
    const-string v4, "init"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 982
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v9}, Lcom/baidu/techain/e;->o()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    .line 980
    invoke-static {v0, v4, v5, v7}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_36a

    .line 983
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 985
    invoke-static {v6}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 987
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->b(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 991
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget-object v2, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z

    .line 992
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/techain/a/a;->a(II)I

    .line 994
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 995
    const-string v2, "0"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string v2, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v2, "2"

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v2, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v3, "1003106"

    invoke-static {v2, v3, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 1000
    goto/16 :goto_12

    .line 977
    :catch_2e3
    move-exception v4

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_2e7
    .catch Ljava/lang/Throwable; {:try_start_25d .. :try_end_2e7} :catch_2e9

    goto/16 :goto_25d

    .line 1010
    :catch_2e9
    move-exception v0

    .line 1012
    :try_start_2ea
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1014
    invoke-static {v6}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 1016
    iget-object v2, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/techain/core/d;->b(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1020
    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z

    .line 1021
    iget-object v2, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/baidu/techain/a/a;->a(II)I

    .line 1023
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1024
    const-string v3, "0"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string v3, "1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v3, "2"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string v3, "3"

    .line 1029
    invoke-static {v0}, Lcom/baidu/techain/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    const-string v5, ""

    .line 1031
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\t"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v3, "1003106"

    invoke-static {v0, v3, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_367
    .catch Ljava/lang/Throwable; {:try_start_2ea .. :try_end_367} :catch_439

    :goto_367
    move v0, v1

    .line 1036
    goto/16 :goto_12

    .line 1002
    :cond_36a
    :try_start_36a
    iget-boolean v0, p1, Lcom/baidu/techain/core/ApkInfo;->isMem:Z

    if-eqz v0, :cond_388

    .line 1003
    invoke-static {v6}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 1004
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1005
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 1006
    sget-object v0, Lcom/baidu/techain/core/g;->b:Ljava/util/List;

    if-eqz v0, :cond_388

    .line 1007
    sget-object v0, Lcom/baidu/techain/core/g;->b:Ljava/util/List;

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_388
    .catch Ljava/lang/Throwable; {:try_start_36a .. :try_end_388} :catch_2e9

    .line 1039
    :cond_388
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1043
    :try_start_38b
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v1, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v0, v1}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v1

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1046
    if-eqz v1, :cond_444

    iget-object v0, v1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_444

    .line 1047
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1050
    :goto_3b1
    const/4 v1, 0x1

    iput v1, p1, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    .line 1051
    const/4 v1, 0x1

    iput v1, p1, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    .line 1052
    iget-object v1, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v1, p1}, Lcom/baidu/techain/a/a;->a(Lcom/baidu/techain/core/ApkInfo;)J

    move-result-wide v3

    .line 1053
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3dd

    .line 1054
    if-eqz v0, :cond_3dd

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3dd

    .line 1055
    invoke-static {v0}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 1056
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1060
    :cond_3dd
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-direct {p0, v0}, Lcom/baidu/techain/core/d;->b(I)V

    .line 1061
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v1, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/baidu/techain/a/a;->a(II)I

    move-result v0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", c="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1064
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->c(Landroid/content/Context;)V

    .line 1066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1067
    const-string v1, "0"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string v1, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v1, "2"

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    const-string v3, "1003106"

    invoke-static {v1, v3, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_436
    .catch Ljava/lang/Throwable; {:try_start_38b .. :try_end_436} :catch_43f

    :goto_436
    move v0, v2

    .line 1075
    goto/16 :goto_12

    .line 1034
    :catch_439
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_367

    .line 1072
    :catch_43f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_436

    :cond_444
    move-object v0, v3

    goto/16 :goto_3b1
.end method

.method public final b()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 243
    :try_start_2
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0}, Lcom/baidu/techain/a/a;->a()Ljava/util/List;

    move-result-object v1

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "all="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 245
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->q()Ljava/util/List;

    move-result-object v4

    .line 246
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->p()Ljava/util/List;

    move-result-object v5

    move v0, v2

    .line 248
    :goto_22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3c

    .line 249
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 250
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 253
    :cond_3c
    new-instance v0, Lcom/baidu/techain/core/d$2;

    invoke-direct {v0, p0, v4}, Lcom/baidu/techain/core/d$2;-><init>(Lcom/baidu/techain/core/d;Ljava/util/List;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 290
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 291
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_132

    .line 294
    iget-object v5, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v1

    .line 296
    :goto_60
    if-nez v1, :cond_48

    .line 300
    iget-object v1, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    iget v5, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v1, v5}, Lcom/baidu/techain/a/a;->g(I)I

    move-result v5

    .line 301
    const/4 v1, 0x1

    .line 302
    const/4 v6, 0x3

    if-ne v5, v6, :cond_72

    .line 303
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move v1, v2

    .line 306
    :cond_72
    iget-object v5, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v5}, Lcom/baidu/techain/e;->d()Z

    move-result v5

    if-eqz v5, :cond_d8

    if-eqz v1, :cond_d8

    .line 307
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, ".b_techain"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_92

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 312
    :cond_92
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    invoke-static {v6}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 315
    invoke-static {v5, v6}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    .line 317
    :cond_c2
    sget-object v1, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    iget v7, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 318
    invoke-static {v1, v7, v5, v6}, Lcom/baidu/techain/c;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 332
    :cond_c9
    :goto_c9
    iget v1, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v0, v5}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d1} :catch_d3

    goto/16 :goto_48

    .line 335
    :catch_d3
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 337
    :cond_d7
    return-void

    .line 321
    :cond_d8
    :try_start_d8
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, ".b_techain"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 323
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    invoke-static {v5}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 325
    invoke-static {v5}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 326
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_131} :catch_d3

    goto :goto_c9

    :cond_132
    move-object v1, v3

    goto/16 :goto_60
.end method

.method public final b(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 341
    :try_start_1
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    .line 3429
    iget-object v0, v0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "lpcf"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 341
    if-eqz v0, :cond_f

    .line 461
    :cond_e
    :goto_e
    return-void

    .line 344
    :cond_f
    const-string v0, "techain_local.cfg"

    const-string v1, "local"

    .line 345
    invoke-static {p1, v0, v1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 348
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 350
    :goto_27
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_81

    .line 351
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 352
    const-string v6, "pkgname"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    const-string v7, "version"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 354
    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 355
    if-lez v8, :cond_4c

    .line 356
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_4c
    const-string v9, "md5"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7e

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7e

    .line 360
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7e

    if-lez v8, :cond_7e

    .line 363
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 364
    new-instance v9, Lcom/baidu/techain/core/ApkInfo;

    invoke-direct {v9}, Lcom/baidu/techain/core/ApkInfo;-><init>()V

    .line 365
    iput-object v6, v9, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 366
    iput-object v7, v9, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 367
    iput v8, v9, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 368
    iput-object v5, v9, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 369
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 371
    :cond_81
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v0, v3}, Lcom/baidu/techain/e;->a(Ljava/util/List;)V

    .line 372
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_99

    .line 373
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->s()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_91} :catch_93

    goto/16 :goto_e

    .line 459
    :catch_93
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_e

    .line 376
    :cond_99
    :try_start_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p/1/pio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 379
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 380
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 381
    const-string v7, "pk"

    iget-object v8, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v7, "m"

    iget-object v8, v0, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v7, "l"

    iget v8, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    const-string v7, "v"

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_bd

    .line 387
    :cond_ee
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 390
    invoke-static {p1, v1, v0}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 392
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_114

    .line 394
    iget-object v0, p0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->s()V

    :cond_114
    move v1, v2

    .line 396
    :goto_115
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 397
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 398
    const-string v3, "errno"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 399
    const-string v6, "l"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_12a} :catch_93

    move-result v6

    .line 400
    const/4 v7, 0x1

    if-ne v3, v7, :cond_22b

    .line 403
    :try_start_12e
    const-string v3, "detail"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 404
    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 405
    const-string v7, "p"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 406
    const-string v7, "v"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 407
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 408
    const-string v8, "n"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 409
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17f

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    const-string v9, "."

    .line 410
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 413
    :cond_17f
    const-string v8, "t"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 414
    iput-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 415
    const-string v7, "a"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 416
    if-eqz v7, :cond_20c

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_20c

    .line 417
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 418
    :goto_19d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_1a0
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_1a0} :catch_206

    move-result v9

    if-ge v0, v9, :cond_230

    .line 420
    :try_start_1a3
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 421
    if-eqz v9, :cond_1fe

    .line 422
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 423
    const-string v11, "n"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 424
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1df

    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v12, "."

    .line 425
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1df

    .line 426
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 428
    :cond_1df
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 429
    const-string v11, "t"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Landroid/content/pm/ActivityInfo;->theme:I

    .line 430
    const-string v11, "l"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v10, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 431
    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1fe

    .line 432
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1fe
    .catch Ljava/lang/Throwable; {:try_start_1a3 .. :try_end_1fe} :catch_201

    .line 418
    :cond_1fe
    :goto_1fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_19d

    .line 436
    :catch_201
    move-exception v9

    :try_start_202
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_205
    .catch Ljava/lang/Throwable; {:try_start_202 .. :try_end_205} :catch_206

    goto :goto_1fe

    .line 446
    :catch_206
    move-exception v0

    const/4 v0, 0x0

    move-object v3, v0

    .line 447
    :try_start_209
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 449
    :cond_20c
    :goto_20c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 450
    if-eqz v0, :cond_22b

    if-eqz v3, :cond_22b

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 451
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22b

    .line 452
    iget v6, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget-object v7, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v0, v3}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    :try_end_22b
    .catch Ljava/lang/Throwable; {:try_start_209 .. :try_end_22b} :catch_93

    .line 396
    :cond_22b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_115

    .line 439
    :cond_230
    :try_start_230
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20c

    .line 441
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    .line 442
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_244
    .catch Ljava/lang/Throwable; {:try_start_230 .. :try_end_244} :catch_206

    goto :goto_20c
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/baidu/techain/core/d;->c:Lcom/baidu/techain/a/a;

    invoke-virtual {v0}, Lcom/baidu/techain/a/a;->d()V

    .line 1520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/techain/core/d;->e:Z

    .line 1521
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/techain/core/d;->c(Landroid/content/Context;)Z

    move-result v0

    .line 1522
    return v0
.end method
