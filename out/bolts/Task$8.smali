.class Lbolts/Task$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Continuation;)V
    .registers 3

    .prologue
    .line 407
    iput-object p1, p0, Lbolts/Task$8;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$8;->val$continuation:Lbolts/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 411
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    .line 415
    :goto_e
    return-object v0

    .line 412
    :cond_f
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 413
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    goto :goto_e

    .line 415
    :cond_1a
    iget-object v0, p0, Lbolts/Task$8;->val$continuation:Lbolts/Continuation;

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_e
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lbolts/Task$8;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method