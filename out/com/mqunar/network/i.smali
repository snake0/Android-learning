.class Lcom/mqunar/network/i;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/network/OutputStreamWarp;

.field final synthetic b:Lcom/mqunar/network/NetRequestManager;


# direct methods
.method constructor <init>(Lcom/mqunar/network/NetRequestManager;[BLcom/mqunar/network/OutputStreamWarp;)V
    .registers 4

    .prologue
    .line 590
    iput-object p1, p0, Lcom/mqunar/network/i;->b:Lcom/mqunar/network/NetRequestManager;

    iput-object p3, p0, Lcom/mqunar/network/i;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/mqunar/network/i;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-virtual {v0, p1}, Lcom/mqunar/network/OutputStreamWarp;->setOutputStream(Ljava/io/OutputStream;)V

    .line 594
    iget-object v0, p0, Lcom/mqunar/network/i;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-super {p0, v0}, Lorg/apache/http/entity/ByteArrayEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 595
    return-void
.end method
