.class abstract Lorg/apache/commons/codecc/net/RFC1522Codec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final POSTFIX:Ljava/lang/String; = "?="

.field protected static final PREFIX:Ljava/lang/String; = "=?"

.field protected static final SEP:C = '?'


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v4, 0x3f

    .line 113
    if-nez p1, :cond_6

    .line 114
    const/4 v0, 0x0

    .line 143
    :goto_5
    return-object v0

    .line 116
    :cond_6
    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "?="

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 117
    :cond_16
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    const-string v1, "RFC 1522 violation: malformed encoded content"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 120
    const/4 v1, 0x2

    .line 121
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 122
    if-ne v2, v0, :cond_33

    .line 123
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    const-string v1, "RFC 1522 violation: charset token not found"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_33
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 127
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    const-string v1, "RFC 1522 violation: charset not specified"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_47
    add-int/lit8 v2, v2, 0x1

    .line 130
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 131
    if-ne v3, v0, :cond_57

    .line 132
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    const-string v1, "RFC 1522 violation: encoding token not found"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_57
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 136
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This codec cannot decode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " encoded content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {v1, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_80
    add-int/lit8 v0, v3, 0x1

    .line 140
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 141
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/net/RFC1522Codec;->doDecoding([B)[B

    move-result-object v2

    .line 143
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_5
.end method

.method protected abstract doDecoding([B)[B
.end method

.method protected abstract doEncoding([B)[B
.end method

.method protected encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v2, 0x3f

    .line 82
    if-nez p1, :cond_6

    .line 83
    const/4 v0, 0x0

    .line 94
    :goto_5
    return-object v0

    .line 85
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codecc/net/RFC1522Codec;->doEncoding([B)[B

    move-result-object v1

    .line 92
    invoke-static {v1}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected abstract getEncoding()Ljava/lang/String;
.end method
