.class public Lorg/apache/commons/io/CopyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 194
    const/16 v0, 0x1000

    new-array v2, v0, [B

    move v0, v1

    .line 197
    :goto_6
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_12

    .line 198
    invoke-virtual {p1, v2, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 199
    add-int/2addr v0, v4

    goto :goto_6

    .line 201
    :cond_12
    return v0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 219
    const/16 v0, 0x1000

    new-array v2, v0, [C

    move v0, v1

    .line 222
    :goto_6
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_12

    .line 223
    invoke-virtual {p1, v2, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 224
    add-int/2addr v0, v4

    goto :goto_6

    .line 226
    :cond_12
    return v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .registers 3

    .prologue
    .line 245
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 246
    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 247
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 264
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 265
    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 266
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 284
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 285
    invoke-static {p0, v0}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 288
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 289
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 307
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 309
    invoke-static {v0, v1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 312
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 313
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 2

    .prologue
    .line 327
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public static copy([BLjava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 137
    return-void
.end method

.method public static copy([BLjava/io/Writer;)V
    .registers 3

    .prologue
    .line 153
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 154
    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 155
    return-void
.end method

.method public static copy([BLjava/io/Writer;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 173
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 174
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 175
    return-void
.end method
