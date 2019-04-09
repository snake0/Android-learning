.class Lcom/mqunar/hy/res/libtask/NetRequestManager$2;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

.field final synthetic val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;[BLcom/mqunar/hy/res/libtask/OutputStreamWarp;)V
    .registers 4

    .prologue
    .line 456
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$2;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    iput-object p3, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$2;->val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$2;->val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->setOutputStream(Ljava/io/OutputStream;)V

    .line 460
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$2;->val$osw:Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-super {p0, v0}, Lorg/apache/http/entity/ByteArrayEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 461
    return-void
.end method
