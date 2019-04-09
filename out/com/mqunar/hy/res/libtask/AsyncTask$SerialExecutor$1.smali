.class Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;->this$0:Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 259
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;->this$0:Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->scheduleNext()V

    .line 261
    return-void

    .line 259
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;->this$0:Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->scheduleNext()V

    throw v0
.end method
