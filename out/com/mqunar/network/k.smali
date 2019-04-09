.class Lcom/mqunar/network/k;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/network/OutputStreamWarp;

.field final synthetic b:Lcom/mqunar/network/NetRequestManager;


# direct methods
.method constructor <init>(Lcom/mqunar/network/NetRequestManager;Lorg/apache/http/entity/mime/HttpMultipartMode;Lcom/mqunar/network/OutputStreamWarp;)V
    .registers 4

    .prologue
    .line 612
    iput-object p1, p0, Lcom/mqunar/network/k;->b:Lcom/mqunar/network/NetRequestManager;

    iput-object p3, p0, Lcom/mqunar/network/k;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/mqunar/network/k;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-virtual {v0, p1}, Lcom/mqunar/network/OutputStreamWarp;->setOutputStream(Ljava/io/OutputStream;)V

    .line 616
    iget-object v0, p0, Lcom/mqunar/network/k;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 617
    return-void
.end method
