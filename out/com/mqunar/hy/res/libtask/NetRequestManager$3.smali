.class Lcom/mqunar/hy/res/libtask/NetRequestManager$3;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

.field final synthetic val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/io/InputStream;JLcom/mqunar/hy/res/libtask/OutputStreamWarp;)V
    .registers 6

    .prologue
    .line 467
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$3;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    iput-object p5, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$3;->val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$3;->val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->setOutputStream(Ljava/io/OutputStream;)V

    .line 471
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$3;->val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 472
    return-void
.end method
