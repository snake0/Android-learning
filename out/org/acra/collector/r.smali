.class Lorg/acra/collector/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/acra/builder/LastActivityManager;


# direct methods
.method constructor <init>(Lorg/acra/builder/LastActivityManager;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/acra/collector/r;->a:Lorg/acra/builder/LastActivityManager;

    .line 35
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/acra/collector/r;->a:Lorg/acra/builder/LastActivityManager;

    invoke-virtual {v0}, Lorg/acra/builder/LastActivityManager;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_fa

    .line 41
    const/4 v1, 0x0

    .line 43
    :try_start_9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 44
    if-nez v2, :cond_19

    .line 45
    const-string v0, "screen shot failed :decor view has not been created"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_ba
    .catchall {:try_start_9 .. :try_end_15} :catchall_f5

    .line 76
    invoke-static {v1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 80
    :goto_18
    return-object v0

    .line 47
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lorg/acra/b/e;

    invoke-direct {v3, p1}, Lorg/acra/b/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lorg/acra/b/e;->e()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 52
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6f} :catch_ba
    .catchall {:try_start_19 .. :try_end_6f} :catchall_f5

    .line 54
    :try_start_6f
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 63
    const-string v1, "gz"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/acra/util/a;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_b0

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_aa} :catch_10a
    .catchall {:try_start_6f .. :try_end_aa} :catchall_107

    move-result-object v0

    .line 76
    invoke-static {v7}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto/16 :goto_18

    .line 69
    :cond_b0
    :try_start_b0
    invoke-static {v0}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 70
    const-string v0, "\u538b\u7f29\u622a\u5c4f\u5931\u8d25\uff01\uff01\uff01"
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_10a
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_107

    .line 76
    invoke-static {v7}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto/16 :goto_18

    .line 72
    :catch_ba
    move-exception v0

    .line 73
    :goto_bb
    :try_start_bb
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen shot failed :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen shot failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ef
    .catchall {:try_start_bb .. :try_end_ef} :catchall_f5

    move-result-object v0

    .line 76
    invoke-static {v1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto/16 :goto_18

    :catchall_f5
    move-exception v0

    :goto_f6
    invoke-static {v1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 79
    :cond_fa
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "screen shot failed :can not get last Activity"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "screen shot failed :can not get last Activity"

    goto/16 :goto_18

    .line 76
    :catchall_107
    move-exception v0

    move-object v1, v7

    goto :goto_f6

    .line 72
    :catch_10a
    move-exception v0

    move-object v1, v7

    goto :goto_bb
.end method
