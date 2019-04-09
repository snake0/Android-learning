.class Lcom/mqunar/libtask/f;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 652
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 653
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 658
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/libtask/e;

    .line 659
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 668
    :goto_9
    return-void

    .line 662
    :pswitch_a
    iget-object v1, v0, Lcom/mqunar/libtask/e;->a:Lcom/mqunar/libtask/AsyncTask;

    iget-object v0, v0, Lcom/mqunar/libtask/e;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    # invokes: Lcom/mqunar/libtask/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/mqunar/libtask/AsyncTask;->access$500(Lcom/mqunar/libtask/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    .line 665
    :pswitch_15
    iget-object v1, v0, Lcom/mqunar/libtask/e;->a:Lcom/mqunar/libtask/AsyncTask;

    iget-object v0, v0, Lcom/mqunar/libtask/e;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/mqunar/libtask/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_9

    .line 659
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
