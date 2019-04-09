.class Lcom/mqunar/network/j;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/network/OutputStreamWarp;

.field final synthetic b:Lcom/mqunar/network/NetRequestManager;


# direct methods
.method constructor <init>(Lcom/mqunar/network/NetRequestManager;Ljava/io/InputStream;JLcom/mqunar/network/OutputStreamWarp;)V
    .registers 6

    .prologue
    .line 601
    iput-object p1, p0, Lcom/mqunar/network/j;->b:Lcom/mqunar/network/NetRequestManager;

    iput-object p5, p0, Lcom/mqunar/network/j;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/mqunar/network/j;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-virtual {v0, p1}, Lcom/mqunar/network/OutputStreamWarp;->setOutputStream(Ljava/io/OutputStream;)V

    .line 605
    iget-object v0, p0, Lcom/mqunar/network/j;->a:Lcom/mqunar/network/OutputStreamWarp;

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 606
    return-void
.end method
