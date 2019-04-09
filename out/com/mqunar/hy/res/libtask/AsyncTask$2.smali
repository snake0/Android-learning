.class Lcom/mqunar/hy/res/libtask/AsyncTask$2;
.super Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/AsyncTask;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/AsyncTask;)V
    .registers 3

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$2;->this$0:Lcom/mqunar/hy/res/libtask/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable;-><init>(Lcom/mqunar/hy/res/libtask/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$2;->this$0:Lcom/mqunar/hy/res/libtask/AsyncTask;

    # getter for: Lcom/mqunar/hy/res/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/mqunar/hy/res/libtask/AsyncTask;->access$200(Lcom/mqunar/hy/res/libtask/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 314
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$2;->this$0:Lcom/mqunar/hy/res/libtask/AsyncTask;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$2;->this$0:Lcom/mqunar/hy/res/libtask/AsyncTask;

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/libtask/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/mqunar/hy/res/libtask/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->access$300(Lcom/mqunar/hy/res/libtask/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
