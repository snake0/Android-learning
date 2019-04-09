.class Lqunar/lego/utils/MultipartEntity$FileBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/lego/utils/MultipartEntity$ContentBody;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqunar/lego/utils/MultipartEntity$FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lqunar/lego/utils/MultipartEntity$FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lqunar/lego/utils/MultipartEntity$FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p3, :cond_7

    const-string p3, "application/octet-stream"

    :cond_7
    iput-object p3, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->mimeType:Ljava/lang/String;

    .line 105
    if-nez p1, :cond_13

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_13
    iput-object p1, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->file:Ljava/io/File;

    .line 109
    if-nez p2, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1b
    iput-object p2, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->filename:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->charset:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 128
    if-nez p1, :cond_a

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lqunar/lego/utils/MultipartEntity$FileBody;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 133
    const/16 v0, 0x1000

    :try_start_13
    new-array v0, v0, [B

    .line 135
    :goto_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 136
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 140
    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 138
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_21

    .line 140
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 142
    return-void
.end method
