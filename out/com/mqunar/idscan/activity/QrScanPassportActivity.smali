.class public Lcom/mqunar/idscan/activity/QrScanPassportActivity;
.super Lcom/mqunar/idscan/activity/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/os/Bundle;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mqunar/idscan/activity/a;-><init>()V

    const-string v0, "QrScanPassportActivity"

    iput-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->i:Z

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v0, 0x442f0000    # 700.0f

    int-to-float v2, v3

    div-float/2addr v0, v2

    const/high16 v2, 0x43030000    # 131.0f

    int-to-float v5, v4

    div-float/2addr v2, v5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/idscan/activity/QrScanPassportActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :try_start_6
    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "passport"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_32} :catch_c9
    .catchall {:try_start_6 .. :try_end_32} :catchall_aa

    move-result-object v3

    :try_start_33
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_ce
    .catchall {:try_start_33 .. :try_end_38} :catchall_c3

    const/16 v1, 0x2000

    :try_start_3a
    new-array v1, v1, [B

    :goto_3c
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_78

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_46} :catch_47
    .catchall {:try_start_3a .. :try_end_46} :catchall_c7

    goto :goto_3c

    :catch_47
    move-exception v1

    :goto_48
    :try_start_48
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_c7

    if-eqz v3, :cond_50

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_a0

    :cond_50
    :goto_50
    if-eqz v2, :cond_55

    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_a5

    :cond_55
    :goto_55
    const-string v1, "passport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v3, v6, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_75
    :goto_75
    return-object v0

    :cond_76
    move-object v2, v0

    move-object v3, v0

    :cond_78
    :try_start_78
    const-string v1, "passport :"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_8a} :catch_47
    .catchall {:try_start_78 .. :try_end_8a} :catchall_c7

    move-result-object v0

    if-eqz v3, :cond_90

    :try_start_8d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_9b

    :cond_90
    :goto_90
    if-eqz v2, :cond_75

    :try_start_92
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_75

    :catch_96
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_75

    :catch_9b
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_90

    :catch_a0
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_50

    :catch_a5
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_55

    :catchall_aa
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_ae
    if-eqz v3, :cond_b3

    :try_start_b0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b9

    :cond_b3
    :goto_b3
    if-eqz v2, :cond_b8

    :try_start_b5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_be

    :cond_b8
    :goto_b8
    throw v0

    :catch_b9
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b3

    :catch_be
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b8

    :catchall_c3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_ae

    :catchall_c7
    move-exception v0

    goto :goto_ae

    :catch_c9
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_48

    :catch_ce
    move-exception v1

    move-object v2, v0

    goto/16 :goto_48
.end method

.method private f()V
    .registers 4

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->i:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->i:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5206\u5c4f\u6a21\u5f0f\u4e0b\u65e0\u6cd5\u4f7f\u7528\u8be5\u529f\u80fd\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mqunar/idscan/R$string;->idscan_sure:I

    new-instance v2, Lcom/mqunar/idscan/activity/d;

    invoke-direct {v2, p0}, Lcom/mqunar/idscan/activity/d;-><init>(Lcom/mqunar/idscan/activity/QrScanPassportActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2b
    return-void
.end method


# virtual methods
.method public final b(Lcom/mqunar/idscan/model/ScanPassportResultData;)V
    .registers 11

    const/16 v7, 0x64

    const/16 v2, 0x11

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->d()Lcom/mqunar/idscan/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/f;->h()Lcom/mqunar/idscan/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/d;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sget v0, Lcom/mqunar/idscan/a/f;->c:I

    if-nez v0, :cond_38

    new-instance v0, Landroid/graphics/YuvImage;

    sget-object v1, Lcom/mqunar/idscan/a/f;->b:[B

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/mqunar/idscan/a/f;->b:[B

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2c
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v7, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_50

    :goto_37
    return-void

    :cond_38
    sget v0, Lcom/mqunar/idscan/a/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_eb

    new-instance v0, Landroid/graphics/YuvImage;

    sget-object v1, Lcom/mqunar/idscan/a/f;->a:[B

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/mqunar/idscan/a/f;->a:[B

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2c

    :cond_50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    :try_start_55
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_ca

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->d()Lcom/mqunar/idscan/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/idscan/a/f;->g()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_af

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v1}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v5}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "successedOcrImage.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_91

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_91
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a8} :catch_d6
    .catchall {:try_start_88 .. :try_end_a8} :catchall_e2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v5, Lcom/mqunar/idscan/a/f;->a:[B

    sput-object v5, Lcom/mqunar/idscan/a/f;->b:[B

    :cond_af
    :goto_af
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "scanResult"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->finish()V

    goto/16 :goto_37

    :catch_ca
    move-exception v0

    const-string v0, "isUsable"

    const-string v1, "\u56fe\u7247\u4e0d\u53ef\u7528"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_37

    :catch_d6
    move-exception v0

    :try_start_d7
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_e2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v5, Lcom/mqunar/idscan/a/f;->a:[B

    sput-object v5, Lcom/mqunar/idscan/a/f;->b:[B

    goto :goto_af

    :catchall_e2
    move-exception v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v5, Lcom/mqunar/idscan/a/f;->a:[B

    sput-object v5, Lcom/mqunar/idscan/a/f;->b:[B

    throw v0

    :cond_eb
    move-object v0, v5

    move-object v1, v5

    goto/16 :goto_2c
.end method

.method public onBackPressed()V
    .registers 11

    const/16 v8, 0x64

    const/16 v2, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/mqunar/idscan/activity/a;->onBackPressed()V

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qav/uelog/QAVLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qav/uelog/QAVLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "scan passport failed"

    invoke-virtual {v0, v1, v3}, Lcom/mqunar/qav/uelog/QAVLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->d()Lcom/mqunar/idscan/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/f;->h()Lcom/mqunar/idscan/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/d;->a()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_41

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sget v0, Lcom/mqunar/idscan/a/f;->c:I

    if-nez v0, :cond_ef

    new-instance v0, Landroid/graphics/YuvImage;

    sget-object v1, Lcom/mqunar/idscan/a/f;->a:[B

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/mqunar/idscan/a/f;->a:[B

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_5b
    if-eqz v1, :cond_40

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v8, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    :try_start_6d
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_107

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->d()Lcom/mqunar/idscan/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/idscan/a/f;->g()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_40

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v1}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v5}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v3, "failedOcrImage.jpg"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_a0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_a9
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c0} :catch_115
    .catchall {:try_start_a0 .. :try_end_c0} :catchall_121

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v5, Lcom/mqunar/idscan/a/f;->a:[B

    sput-object v5, Lcom/mqunar/idscan/a/f;->b:[B

    :goto_c7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/mqunar/idscan/model/ScanPassportParam;

    invoke-direct {v0}, Lcom/mqunar/idscan/model/ScanPassportParam;-><init>()V

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->d()Lcom/mqunar/idscan/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/idscan/a/f;->h()Lcom/mqunar/idscan/a/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mqunar/idscan/a/d;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/idscan/model/ScanPassportParam;->airCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/idscan/model/ScanPassportParam;->cat:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/idscan/utils/UploadUtils;->a(Lcom/mqunar/idscan/model/ScanPassportParam;Ljava/lang/String;)Lcom/mqunar/libtask/AbsConductor;

    goto/16 :goto_40

    :cond_ef
    sget v0, Lcom/mqunar/idscan/a/f;->c:I

    if-ne v0, v7, :cond_12a

    new-instance v0, Landroid/graphics/YuvImage;

    sget-object v1, Lcom/mqunar/idscan/a/f;->b:[B

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/mqunar/idscan/a/f;->b:[B

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_5b

    :catch_107
    move-exception v0

    const-string v1, "isUsable"

    const-string v2, "\u56fe\u7247\u4e0d\u53ef\u7528"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_40

    :catch_115
    move-exception v0

    :try_start_116
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_121

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v5, Lcom/mqunar/idscan/a/f;->a:[B

    sput-object v5, Lcom/mqunar/idscan/a/f;->b:[B

    goto :goto_c7

    :catchall_121
    move-exception v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v5, Lcom/mqunar/idscan/a/f;->a:[B

    sput-object v5, Lcom/mqunar/idscan/a/f;->b:[B

    throw v0

    :cond_12a
    move-object v0, v5

    move-object v1, v5

    goto/16 :goto_5b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->onBackPressed()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/mqunar/idscan/activity/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/idscan/a;->a(Landroid/content/Context;)V

    const-string v0, "idscan_passport.weights"

    sget v1, Lcom/mqunar/idscan/R$raw;->idscan_passport:I

    invoke-direct {p0, v0, v1}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/algo/f;->a:Ljava/lang/String;

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_1f
    iput-object p1, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->g:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->g:Landroid/os/Bundle;

    if-nez v0, :cond_2c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->g:Landroid/os/Bundle;

    :cond_2c
    sget v0, Lcom/mqunar/idscan/R$layout;->idscan_layout_activity_passport_scan:I

    invoke-virtual {p0, v0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->g:Landroid/os/Bundle;

    const-string v1, "QrScanPassportActivityCatTag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mqunar/qav/uelog/QAVOpenApi;->setPageName(Landroid/app/Activity;Ljava/lang/String;)V

    sget v0, Lcom/mqunar/idscan/R$id;->idscan_iv_scan_back:I

    invoke-virtual {p0, v0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->f:Landroid/widget/ImageView;

    sget v0, Lcom/mqunar/idscan/R$id;->idscan_ll_qrcode_progress:I

    invoke-virtual {p0, v0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->e:Landroid/widget/LinearLayout;

    sget v0, Lcom/mqunar/idscan/R$id;->idscan_viewfinder_view:I

    invoke-virtual {p0, v0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mqunar/idscan/view/ViewfinderView;

    iput-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->a:Lcom/mqunar/idscan/view/ViewfinderView;

    sget v0, Lcom/mqunar/idscan/R$id;->idscan_preview_view:I

    invoke-virtual {p0, v0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->b:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->c:Z

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mqunar/idscan/activity/c;

    invoke-direct {v1, p0}, Lcom/mqunar/idscan/activity/c;-><init>(Lcom/mqunar/idscan/activity/QrScanPassportActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_97

    const-string v0, "------"

    const-string v1, "oncreate_show dialog"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->f()V

    :cond_97
    return-void

    :cond_98
    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_85
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/mqunar/idscan/activity/a;->onMultiWindowModeChanged(Z)V

    const-string v0, "------"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMultiWindowModeChanged show dialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_23

    iget-boolean v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->i:Z

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->f()V

    :cond_23
    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/mqunar/idscan/activity/a;->onResume()V

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->e()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/mqunar/idscan/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
