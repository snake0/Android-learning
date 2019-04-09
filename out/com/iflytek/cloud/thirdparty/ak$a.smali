.class public Lcom/iflytek/cloud/thirdparty/ak$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/FileInputStream;

.field private c:Ljava/io/BufferedOutputStream;

.field private d:J

.field private e:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DataFiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->d:J

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([B)I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_1a

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_d
    .catchall {:try_start_5 .. :try_end_a} :catchall_17

    move-result v0

    :try_start_b
    monitor-exit p0

    :goto_c
    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ak$a;->c()V

    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_c

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_17

    const/4 v0, -0x1

    goto :goto_c
.end method

.method public a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_f
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    :goto_a
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;

    :cond_d
    monitor-exit p0

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_f

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_11
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :cond_f
    :goto_f
    :try_start_f
    monitor-exit p0

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :cond_2d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_52
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->e:Ljava/io/BufferedWriter;
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_64} :catch_65

    goto :goto_14

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :cond_2d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_49
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_55} :catch_56

    goto :goto_14

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public a([BZ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    :cond_11
    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->d:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->d:J

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 6

    if-eqz p2, :cond_23

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1a
    :try_start_1a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_21} :catch_29

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;

    const/4 v0, 0x0

    goto :goto_22
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ak$a;->c()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ak$a;->a()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ak$a;->d()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    const-string v0, ".pcm"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_f
    .catchall {:try_start_5 .. :try_end_d} :catchall_14

    :cond_d
    :goto_d
    :try_start_d
    monitor-exit p0

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_12

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_18
    .catchall {:try_start_5 .. :try_end_f} :catchall_1d

    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->c:Ljava/io/BufferedOutputStream;

    :cond_12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->d:J

    monitor-exit p0

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public f()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ak$a;->d:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
