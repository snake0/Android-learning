.class final Lbolts/Task$9;
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
    .line 449
    iput-object p1, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    iput-object p2, p0, Lbolts/Task$9;->val$task:Lbolts/Task;

    iput-object p3, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$9;->val$task:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 458
    :goto_d
    return-void

    .line 455
    :catch_e
    move-exception v0

    .line 456
    iget-object v1, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_d
.end method
