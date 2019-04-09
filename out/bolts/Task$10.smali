.class final Lbolts/Task$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V
    .registers 4

    .prologue
    .line 482
    iput-object p1, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    iput-object p2, p0, Lbolts/Task$10;->val$task:Lbolts/Task;

    iput-object p3, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$10;->val$task:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 487
    if-nez v0, :cond_13

    .line 488
    iget-object v0, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 507
    :goto_12
    return-void

    .line 490
    :cond_13
    new-instance v1, Lbolts/Task$10$1;

    invoke-direct {v1, p0}, Lbolts/Task$10$1;-><init>(Lbolts/Task$10;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_12

    .line 504
    :catch_1c
    move-exception v0

    .line 505
    iget-object v1, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_12
.end method
