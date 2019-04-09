.class public Lqunar/lego/utils/FormPart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final body:Lqunar/lego/utils/MultipartEntity$ContentBody;

.field final header:Lqunar/lego/utils/HttpHeader;

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 58
    new-instance v0, Lqunar/lego/utils/MultipartEntity$StringBody;

    invoke-direct {v0, p2}, Lqunar/lego/utils/MultipartEntity$StringBody;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Lqunar/lego/utils/MultipartEntity$ContentBody;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 69
    new-instance v0, Lqunar/lego/utils/MultipartEntity$FileBody;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lqunar/lego/utils/MultipartEntity$FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Lqunar/lego/utils/MultipartEntity$ContentBody;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lqunar/lego/utils/MultipartEntity$ContentBody;)V
    .registers 6

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_d

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_d
    if-nez p2, :cond_17

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_17
    iput-object p1, p0, Lqunar/lego/utils/FormPart;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lqunar/lego/utils/FormPart;->body:Lqunar/lego/utils/MultipartEntity$ContentBody;

    .line 24
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    iput-object v0, p0, Lqunar/lego/utils/FormPart;->header:Lqunar/lego/utils/HttpHeader;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lqunar/lego/utils/FormPart;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {p2}, Lqunar/lego/utils/MultipartEntity$ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 32
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {p2}, Lqunar/lego/utils/MultipartEntity$ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_4d
    iget-object v1, p0, Lqunar/lego/utils/FormPart;->header:Lqunar/lego/utils/HttpHeader;

    const-string v2, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-interface {p2}, Lqunar/lego/utils/MultipartEntity$ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {p2}, Lqunar/lego/utils/MultipartEntity$ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 42
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {p2}, Lqunar/lego/utils/MultipartEntity$ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_76
    iget-object v1, p0, Lqunar/lego/utils/FormPart;->header:Lqunar/lego/utils/HttpHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lqunar/lego/utils/FormPart;->header:Lqunar/lego/utils/HttpHeader;

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {p2}, Lqunar/lego/utils/MultipartEntity$ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 73
    if-nez p1, :cond_a

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_a
    iget-object v0, p0, Lqunar/lego/utils/FormPart;->header:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0, p1, p2}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
