.class Lcom/mqunar/libtask/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BII)[B
    .registers 8

    .prologue
    .line 200
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 201
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 202
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 203
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 204
    :goto_12
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_23

    .line 206
    :try_start_18
    invoke-virtual {v0, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .line 207
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/util/zip/DataFormatException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_12

    .line 208
    :catch_21
    move-exception v3

    goto :goto_12

    .line 211
    :cond_23
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 213
    :try_start_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2e

    .line 216
    :goto_29
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 217
    return-object v0

    .line 214
    :catch_2e
    move-exception v0

    goto :goto_29
.end method
