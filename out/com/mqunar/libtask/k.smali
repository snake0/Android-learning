.class Lcom/mqunar/libtask/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/libtask/TaskTrain;

.field final synthetic b:Lcom/mqunar/libtask/ChiefGuard;


# direct methods
.method constructor <init>(Lcom/mqunar/libtask/ChiefGuard;Lcom/mqunar/libtask/TaskTrain;)V
    .registers 3

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mqunar/libtask/k;->b:Lcom/mqunar/libtask/ChiefGuard;

    iput-object p2, p0, Lcom/mqunar/libtask/k;->a:Lcom/mqunar/libtask/TaskTrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mqunar/libtask/k;->a:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/AbsConductor;->findCache(Z)Ljava/lang/Object;

    .line 167
    return-void
.end method
