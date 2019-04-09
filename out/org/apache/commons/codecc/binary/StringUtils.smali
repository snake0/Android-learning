.class public Lorg/apache/commons/codecc/binary/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesIso8859_1(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 47
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 150
    if-nez p0, :cond_4

    .line 151
    const/4 v0, 0x0

    .line 154
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    .line 155
    :catch_9
    move-exception v0

    .line 156
    invoke-static {p1, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static getBytesUsAscii(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 63
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 79
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16Be(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 95
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16Le(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 111
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 127
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .registers 5

    .prologue
    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 184
    if-nez p0, :cond_4

    .line 185
    const/4 v0, 0x0

    .line 188
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_3

    .line 189
    :catch_a
    move-exception v0

    .line 190
    invoke-static {p1, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static newStringIso8859_1([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUsAscii([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16Be([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16Le([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
