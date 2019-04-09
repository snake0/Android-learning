.class Lcom/mqunar/libtask/b;
.super Lcom/mqunar/libtask/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/libtask/i",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mqunar/libtask/AsyncTask;


# direct methods
.method constructor <init>(Lcom/mqunar/libtask/AsyncTask;)V
    .registers 3

    .prologue
    .line 308
    iput-object p1, p0, Lcom/mqunar/libtask/b;->a:Lcom/mqunar/libtask/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mqunar/libtask/i;-><init>(Lcom/mqunar/libtask/a;)V

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
    .line 311
    iget-object v0, p0, Lcom/mqunar/libtask/b;->a:Lcom/mqunar/libtask/AsyncTask;

    # getter for: Lcom/mqunar/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/mqunar/libtask/AsyncTask;->access$200(Lcom/mqunar/libtask/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 313
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 315
    iget-object v0, p0, Lcom/mqunar/libtask/b;->a:Lcom/mqunar/libtask/AsyncTask;

    iget-object v1, p0, Lcom/mqunar/libtask/b;->a:Lcom/mqunar/libtask/AsyncTask;

    iget-object v2, p0, Lcom/mqunar/libtask/b;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/mqunar/libtask/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/mqunar/libtask/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/mqunar/libtask/AsyncTask;->access$300(Lcom/mqunar/libtask/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
