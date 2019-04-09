.class public Lorg/apache/commons/codecc/net/BCodec;
.super Lorg/apache/commons/codecc/net/RFC1522Codec;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringDecoder;
.implements Lorg/apache/commons/codecc/StringEncoder;


# instance fields
.field private final charset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/net/BCodec;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/commons/codecc/net/RFC1522Codec;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/codecc/net/BCodec;->charset:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 184
    if-nez p1, :cond_4

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_3
    return-object v0

    .line 186
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 187
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/BCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 189
    :cond_f
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    const-string v2, " cannot be decoded using BCodec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 138
    if-nez p1, :cond_4

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/BCodec;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    .line 143
    :catch_9
    move-exception v0

    .line 144
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected doDecoding([B)[B
    .registers 3

    .prologue
    .line 81
    if-nez p1, :cond_4

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    goto :goto_3
.end method

.method protected doEncoding([B)[B
    .registers 3

    .prologue
    .line 74
    if-nez p1, :cond_4

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    goto :goto_3
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 159
    if-nez p1, :cond_4

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_3
    return-object v0

    .line 161
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 162
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/BCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 164
    :cond_f
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string v2, " cannot be encoded using BCodec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    if-nez p1, :cond_4

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/BCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/net/BCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 100
    if-nez p1, :cond_4

    .line 101
    const/4 v0, 0x0

    .line 104
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codecc/net/BCodec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    .line 105
    :catch_9
    move-exception v0

    .line 106
    new-instance v1, Lorg/apache/commons/codecc/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/commons/codecc/net/BCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, "B"

    return-object v0
.end method
