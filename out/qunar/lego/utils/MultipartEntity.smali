.class public Lqunar/lego/utils/MultipartEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CR_LF:[B

.field private static final FIELD_SEP:[B

.field private static final TWO_DASHES:[B


# instance fields
.field private final boundary:[B

.field private final contentType:Ljava/lang/String;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    const-string v0, ": "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/MultipartEntity;->FIELD_SEP:[B

    .line 17
    const-string v0, "\r\n"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    .line 18
    const-string v0, "--"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/MultipartEntity;->TWO_DASHES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/List",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-_-_-_-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-_-_-_-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    :cond_22
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lqunar/lego/utils/MultipartEntity;->boundary:[B

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    if-eqz p2, :cond_47

    .line 36
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqunar/lego/utils/MultipartEntity;->contentType:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lqunar/lego/utils/MultipartEntity;->parts:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0, v0, p1}, Lqunar/lego/utils/MultipartEntity;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/List;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 54
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/lego/utils/FormPart;

    .line 55
    sget-object v1, Lqunar/lego/utils/MultipartEntity;->TWO_DASHES:[B

    sget-object v2, Lqunar/lego/utils/MultipartEntity;->TWO_DASHES:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 56
    iget-object v1, p0, Lqunar/lego/utils/MultipartEntity;->boundary:[B

    iget-object v2, p0, Lqunar/lego/utils/MultipartEntity;->boundary:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    sget-object v1, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    sget-object v2, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    iget-object v1, v0, Lqunar/lego/utils/FormPart;->header:Lqunar/lego/utils/HttpHeader;

    .line 61
    invoke-virtual {v1}, Lqunar/lego/utils/HttpHeader;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 62
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 63
    array-length v5, v2

    invoke-virtual {p1, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    sget-object v2, Lqunar/lego/utils/MultipartEntity;->FIELD_SEP:[B

    sget-object v5, Lqunar/lego/utils/MultipartEntity;->FIELD_SEP:[B

    array-length v5, v5

    invoke-virtual {p1, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 65
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 66
    array-length v2, v1

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    sget-object v1, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    sget-object v2, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_31

    .line 69
    :cond_72
    sget-object v1, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    sget-object v2, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 70
    iget-object v0, v0, Lqunar/lego/utils/FormPart;->body:Lqunar/lego/utils/MultipartEntity$ContentBody;

    invoke-interface {v0, p1}, Lqunar/lego/utils/MultipartEntity$ContentBody;->writeTo(Ljava/io/OutputStream;)V

    .line 71
    sget-object v0, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    sget-object v1, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 73
    :cond_88
    sget-object v0, Lqunar/lego/utils/MultipartEntity;->TWO_DASHES:[B

    sget-object v1, Lqunar/lego/utils/MultipartEntity;->TWO_DASHES:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity;->boundary:[B

    iget-object v1, p0, Lqunar/lego/utils/MultipartEntity;->boundary:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    sget-object v0, Lqunar/lego/utils/MultipartEntity;->TWO_DASHES:[B

    sget-object v1, Lqunar/lego/utils/MultipartEntity;->TWO_DASHES:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    sget-object v0, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    sget-object v1, Lqunar/lego/utils/MultipartEntity;->CR_LF:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    return-void
.end method
