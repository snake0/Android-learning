.class final Lbolts/Task$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .registers 3

    .prologue
    .line 191
    iput-object p1, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p2, p0, Lbolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 199
    :goto_b
    return-void

    .line 196
    :catch_c
    move-exception v0

    .line 197
    iget-object v1, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_b
.end method