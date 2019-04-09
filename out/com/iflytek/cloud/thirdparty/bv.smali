.class public Lcom/iflytek/cloud/thirdparty/bv;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bv;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bv;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bv;->a:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msclib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_4f
    sput-object v0, Lcom/iflytek/cloud/thirdparty/bv;->a:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bv;->a:Ljava/lang/String;

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e
    return-void
.end method

.method public static a(Landroid/os/MemoryFile;JLjava/lang/String;)Z
    .registers 12

    const-wide/32 v5, 0x10000

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    const/4 v3, 0x0

    :try_start_e
    invoke-static {p3}, Lcom/iflytek/cloud/thirdparty/bv;->a(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/iflytek/cloud/thirdparty/bv;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_43
    .catchall {:try_start_e .. :try_end_19} :catchall_50

    const/high16 v1, 0x10000

    :try_start_1b
    new-array v7, v1, [B

    move v1, v0

    :goto_1e
    int-to-long v3, v1

    cmp-long v3, v3, p1

    if-gez v3, :cond_3a

    int-to-long v3, v1

    sub-long v3, p1, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_36

    move-wide v3, v5

    :goto_2b
    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v7, v1, v4, v3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    const/4 v4, 0x0

    invoke-virtual {v2, v7, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_34} :catch_5c
    .catchall {:try_start_1b .. :try_end_34} :catchall_5a

    add-int/2addr v1, v3

    goto :goto_1e

    :cond_36
    int-to-long v3, v1

    sub-long v3, p1, v3

    goto :goto_2b

    :cond_3a
    const/4 v0, 0x1

    if-eqz v2, :cond_c

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_c

    :catch_41
    move-exception v1

    goto :goto_c

    :catch_43
    move-exception v1

    move-object v2, v3

    :goto_45
    :try_start_45
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5a

    if-eqz v2, :cond_c

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_c

    :catch_4e
    move-exception v1

    goto :goto_c

    :catchall_50
    move-exception v0

    move-object v2, v3

    :goto_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    throw v0

    :catch_58
    move-exception v1

    goto :goto_57

    :catchall_5a
    move-exception v0

    goto :goto_52

    :catch_5c
    move-exception v1

    goto :goto_45
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_5
    new-instance v1, Lcom/iflytek/cloud/record/d;

    invoke-direct {v1, v0, p1}, Lcom/iflytek/cloud/record/d;-><init>(Ljava/io/File;I)V

    invoke-virtual {v1}, Lcom/iflytek/cloud/record/d;->b()V

    invoke-virtual {v1}, Lcom/iflytek/cloud/record/d;->c()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "pcm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "wav"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1, p2}, Lcom/iflytek/cloud/thirdparty/bv;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_7

    :cond_1d
    const-string v0, "format not supported"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/bv;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_4e
    .catchall {:try_start_2 .. :try_end_a} :catchall_3f

    :try_start_a
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1e
    .catchall {:try_start_a .. :try_end_1d} :catchall_4c

    goto :goto_e

    :catch_1e
    move-exception v0

    :goto_1f
    :try_start_1f
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_4c

    if-eqz v2, :cond_27

    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_39

    :cond_27
    move v0, v1

    :cond_28
    :goto_28
    return v0

    :cond_29
    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_1e
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4c

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz v3, :cond_28

    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_28

    :catch_34
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_28

    :catch_39
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_28

    :catchall_3f
    move-exception v0

    move-object v2, v3

    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    throw v0

    :catch_47
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_46

    :catchall_4c
    move-exception v0

    goto :goto_41

    :catch_4e
    move-exception v0

    move-object v2, v3

    goto :goto_1f
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_6
.end method
