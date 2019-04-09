.class Lcom/mqunar/yacca/YaccaBridge$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yacca/YaccaBridge;


# direct methods
.method constructor <init>(Lcom/mqunar/yacca/YaccaBridge;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # setter for: Lcom/mqunar/yacca/YaccaBridge;->yaccaThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/mqunar/yacca/YaccaBridge;->access$302(Lcom/mqunar/yacca/YaccaBridge;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 70
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # getter for: Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$400(Lcom/mqunar/yacca/YaccaBridge;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 71
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # getter for: Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$500(Lcom/mqunar/yacca/YaccaBridge;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 72
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # getter for: Lcom/mqunar/yacca/YaccaBridge;->queue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$600(Lcom/mqunar/yacca/YaccaBridge;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 73
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # setter for: Lcom/mqunar/yacca/YaccaBridge;->msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;
    invoke-static {v0, v1}, Lcom/mqunar/yacca/YaccaBridge;->access$702(Lcom/mqunar/yacca/YaccaBridge;Lcom/mqunar/yacca/Msg$OnMsg;)Lcom/mqunar/yacca/Msg$OnMsg;

    .line 74
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # getter for: Lcom/mqunar/yacca/YaccaBridge;->callback:Lcom/mqunar/yacca/YaccaCallback;
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$100(Lcom/mqunar/yacca/YaccaBridge;)Lcom/mqunar/yacca/YaccaCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 75
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    # getter for: Lcom/mqunar/yacca/YaccaBridge;->callback:Lcom/mqunar/yacca/YaccaCallback;
    invoke-static {v0}, Lcom/mqunar/yacca/YaccaBridge;->access$100(Lcom/mqunar/yacca/YaccaBridge;)Lcom/mqunar/yacca/YaccaCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge$2;->this$0:Lcom/mqunar/yacca/YaccaBridge;

    invoke-interface {v0, v1}, Lcom/mqunar/yacca/YaccaCallback;->onClose(Lcom/mqunar/yacca/YaccaBridge;)V

    .line 77
    :cond_39
    return-void
.end method
