.class Lcom/mqunar/hy/res/libtask/ChiefGuard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

.field final synthetic val$nt:Lcom/mqunar/hy/res/libtask/TaskTrain;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/ChiefGuard;Lcom/mqunar/hy/res/libtask/TaskTrain;)V
    .registers 3

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$2;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$2;->val$nt:Lcom/mqunar/hy/res/libtask/TaskTrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$2;->val$nt:Lcom/mqunar/hy/res/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/libtask/AbsConductor;->findCache(Z)Ljava/lang/Object;

    .line 164
    return-void
.end method
