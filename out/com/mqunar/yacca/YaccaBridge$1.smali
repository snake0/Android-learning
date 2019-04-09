.class Lcom/mqunar/yacca/YaccaBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yacca/YaccaBridge;


# direct methods
.method constructor <init>(Lcom/mqunar/yacca/YaccaBridge;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mqunar/yacca/YaccaBridge$1;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$1;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # invokes: Lcom/mqunar/yacca/YaccaBridge;->initConn()V
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$000(Lcom/mqunar/yacca/YaccaBridge;)V

    .line 58
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$1;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # getter for: Lcom/mqunar/yacca/YaccaBridge;->callback:Lcom/mqunar/yacca/YaccaCallback;
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$100(Lcom/mqunar/yacca/YaccaBridge;)Lcom/mqunar/yacca/YaccaCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge$1;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    invoke-interface {v0, v1}, Lcom/mqunar/yacca/YaccaCallback;->onOpen(Lcom/mqunar/yacca/YaccaBridge;)V

    .line 59
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$1;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # invokes: Lcom/mqunar/yacca/YaccaBridge;->loop2()V
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$200(Lcom/mqunar/yacca/YaccaBridge;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 63
    return-void

    .line 60
    :catch_16
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
