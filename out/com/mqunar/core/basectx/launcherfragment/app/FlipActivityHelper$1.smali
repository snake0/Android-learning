.class final Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic val$KeyCode:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 127
    iput p1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper$1;->val$KeyCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 131
    iget v1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper$1;->val$KeyCode:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 134
    :goto_a
    return-void

    .line 132
    :catch_b
    move-exception v0

    goto :goto_a
.end method
