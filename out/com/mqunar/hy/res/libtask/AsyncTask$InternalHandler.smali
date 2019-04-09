.class Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 651
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 652
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 657
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;

    .line 658
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 667
    :goto_9
    return-void

    .line 661
    :pswitch_a
    iget-object v1, v0, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;->mTask:Lcom/mqunar/hy/res/libtask/AsyncTask;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    # invokes: Lcom/mqunar/hy/res/libtask/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/mqunar/hy/res/libtask/AsyncTask;->access$500(Lcom/mqunar/hy/res/libtask/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    .line 664
    :pswitch_15
    iget-object v1, v0, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;->mTask:Lcom/mqunar/hy/res/libtask/AsyncTask;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/libtask/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_9

    .line 658
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
