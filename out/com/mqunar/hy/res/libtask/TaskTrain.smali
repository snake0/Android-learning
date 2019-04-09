.class Lcom/mqunar/hy/res/libtask/TaskTrain;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

.field public final context:Landroid/content/Context;

.field private final ticket:Lcom/mqunar/hy/res/libtask/Ticket;

.field private final trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/hy/res/libtask/AbsConductor;Lcom/mqunar/hy/res/libtask/Ticket;Lcom/mqunar/hy/res/libtask/Trumpet;)V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    .line 21
    iput-object p3, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    .line 22
    iput-object p4, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    .line 23
    invoke-virtual {p2, p0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->setTaskTrain(Lcom/mqunar/hy/res/libtask/TaskTrain;)V

    .line 24
    return-void
.end method


# virtual methods
.method public cacheType()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    iget v0, v0, Lcom/mqunar/hy/res/libtask/Ticket;->cacheType:I

    return v0
.end method

.method final cancel()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->isCancelable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_8
    return v0

    .line 46
    :cond_9
    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->cancel(Z)Z

    goto :goto_8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/TaskTrain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->doingTask()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_17

    .line 33
    :goto_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->publishProgress([Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 30
    :catch_17
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_5

    .line 87
    :cond_4
    :goto_4
    return v0

    .line 81
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 83
    :cond_13
    check-cast p1, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 85
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v2, v3}, Lcom/mqunar/hy/res/libtask/AbsConductor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    if-eqz v2, :cond_4

    goto :goto_23
.end method

.method public getTicket()Lcom/mqunar/hy/res/libtask/Ticket;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCancelable()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    iget-boolean v0, v0, Lcom/mqunar/hy/res/libtask/Ticket;->cancelable:Z

    return v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/TaskTrain;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    invoke-interface {v0, p0}, Lcom/mqunar/hy/res/libtask/Trumpet;->cancel(Lcom/mqunar/hy/res/libtask/TaskTrain;)V

    .line 56
    :cond_9
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/TaskTrain;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    invoke-interface {v0, p0}, Lcom/mqunar/hy/res/libtask/Trumpet;->ok(Lcom/mqunar/hy/res/libtask/TaskTrain;)V

    .line 64
    :cond_9
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/libtask/AbsConductor;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 40
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 9
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/TaskTrain;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
