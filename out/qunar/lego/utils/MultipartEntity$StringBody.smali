.class Lqunar/lego/utils/MultipartEntity$StringBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/lego/utils/MultipartEntity$ContentBody;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final content:[B

.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqunar/lego/utils/MultipartEntity$StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 6

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    if-nez p1, :cond_d

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_d
    if-nez p2, :cond_11

    const-string p2, "text/plain"

    :cond_11
    iput-object p2, p0, Lqunar/lego/utils/MultipartEntity$StringBody;->mimeType:Ljava/lang/String;

    .line 176
    if-nez p3, :cond_19

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    :cond_19
    iput-object p3, p0, Lqunar/lego/utils/MultipartEntity$StringBody;->charset:Ljava/nio/charset/Charset;

    .line 177
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity$StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lqunar/lego/utils/MultipartEntity$StringBody;->content:[B

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lqunar/lego/utils/MultipartEntity$StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 182
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity$StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity$StringBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    const-string v0, "8bit"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 189
    if-nez p1, :cond_a

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lqunar/lego/utils/MultipartEntity$StringBody;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 195
    :goto_15
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 196
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_15

    .line 198
    :cond_21
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 199
    return-void
.end method
