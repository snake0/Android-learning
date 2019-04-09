.class Lcom/mqunar/hy/res/libtask/NetRequest$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/NetRequest;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/NetRequest;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequest$1;->this$0:Lcom/mqunar/hy/res/libtask/NetRequest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 63
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest$1;->this$0:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/NetRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_b

    .line 66
    :goto_a
    return-void

    .line 64
    :catch_b
    move-exception v0

    goto :goto_a
.end method
