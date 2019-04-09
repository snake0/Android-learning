.class Lcom/mqunar/network/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/network/NetRequest;


# direct methods
.method constructor <init>(Lcom/mqunar/network/NetRequest;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mqunar/network/d;->a:Lcom/mqunar/network/NetRequest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 73
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/network/d;->a:Lcom/mqunar/network/NetRequest;

    iget-object v0, v0, Lcom/mqunar/network/NetRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_b

    .line 76
    :goto_a
    return-void

    .line 74
    :catch_b
    move-exception v0

    goto :goto_a
.end method
