.class public Lcom/mqunar/qapm/utils/QAPMCompressUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCompressString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 21
    .line 25
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_4b
    .catchall {:try_start_1 .. :try_end_a} :catchall_39

    .line 26
    :try_start_a
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_4e
    .catchall {:try_start_a .. :try_end_14} :catchall_42

    .line 29
    const/16 v0, 0x400

    :try_start_16
    new-array v0, v0, [B

    .line 31
    :goto_18
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2f

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23
    .catchall {:try_start_16 .. :try_end_22} :catchall_44

    goto :goto_18

    .line 36
    :catch_23
    move-exception v0

    move-object v2, v3

    .line 37
    :goto_25
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_47

    .line 39
    invoke-static {v2}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v1}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 42
    :goto_2e
    return-void

    .line 35
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_23
    .catchall {:try_start_2f .. :try_end_32} :catchall_44

    .line 39
    invoke-static {v3}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v1}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2e

    .line 39
    :catchall_39
    move-exception v0

    move-object v3, v2

    :goto_3b
    invoke-static {v3}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v2}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 39
    :catchall_42
    move-exception v0

    goto :goto_3b

    :catchall_44
    move-exception v0

    move-object v2, v1

    goto :goto_3b

    :catchall_47
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3b

    .line 36
    :catch_4b
    move-exception v0

    move-object v1, v2

    goto :goto_25

    :catch_4e
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_25
.end method
