.class public Lcom/mqunar/libtask/TaskTrain;
.super Lcom/mqunar/libtask/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/libtask/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/mqunar/libtask/AbsConductor;

.field private final b:Lcom/mqunar/libtask/Ticket;

.field private final c:Lcom/mqunar/libtask/Trumpet;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/libtask/Ticket;Lcom/mqunar/libtask/Trumpet;)V
    .registers 5

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mqunar/libtask/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    .line 20
    iput-object p3, p0, Lcom/mqunar/libtask/TaskTrain;->b:Lcom/mqunar/libtask/Ticket;

    .line 21
    iput-object p4, p0, Lcom/mqunar/libtask/TaskTrain;->c:Lcom/mqunar/libtask/Trumpet;

    .line 22
    invoke-virtual {p2, p0}, Lcom/mqunar/libtask/AbsConductor;->setTaskTrain(Lcom/mqunar/libtask/TaskTrain;)V

    .line 23
    return-void
.end method


# virtual methods
.method final a()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/mqunar/libtask/TaskTrain;->isCancelable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 39
    const/4 v0, 0x0

    .line 42
    :goto_8
    return v0

    .line 41
    :cond_9
    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/TaskTrain;->cancel(Z)Z

    goto :goto_8
.end method

.method public cacheType()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->b:Lcom/mqunar/libtask/Ticket;

    iget v0, v0, Lcom/mqunar/libtask/Ticket;->cacheType:I

    return v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 8
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/TaskTrain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v0}, Lcom/mqunar/libtask/AbsConductor;->doingTask()V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/TaskTrain;->publishProgress([Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p0, p1, :cond_5

    .line 82
    :cond_4
    :goto_4
    return v0

    .line 76
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

    .line 78
    :cond_13
    check-cast p1, Lcom/mqunar/libtask/TaskTrain;

    .line 80
    iget-object v2, p0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    iget-object v3, p1, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v2, v3}, Lcom/mqunar/libtask/AbsConductor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    if-eqz v2, :cond_4

    goto :goto_23
.end method

.method public getTicket()Lcom/mqunar/libtask/Ticket;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->b:Lcom/mqunar/libtask/Ticket;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v0}, Lcom/mqunar/libtask/AbsConductor;->hashCode()I

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
    .line 62
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->b:Lcom/mqunar/libtask/Ticket;

    iget-boolean v0, v0, Lcom/mqunar/libtask/Ticket;->cancelable:Z

    return v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/TaskTrain;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->c:Lcom/mqunar/libtask/Trumpet;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->c:Lcom/mqunar/libtask/Trumpet;

    invoke-interface {v0, p0}, Lcom/mqunar/libtask/Trumpet;->cancel(Lcom/mqunar/libtask/TaskTrain;)V

    .line 51
    :cond_9
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/TaskTrain;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->c:Lcom/mqunar/libtask/Trumpet;

    if-eqz v0, :cond_9

    .line 57
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->c:Lcom/mqunar/libtask/Trumpet;

    invoke-interface {v0, p0}, Lcom/mqunar/libtask/Trumpet;->ok(Lcom/mqunar/libtask/TaskTrain;)V

    .line 59
    :cond_9
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v0, p1}, Lcom/mqunar/libtask/AbsConductor;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 35
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/TaskTrain;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
