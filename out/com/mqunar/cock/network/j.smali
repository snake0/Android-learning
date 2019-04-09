.class Lcom/mqunar/cock/network/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/cock/network/i;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/i;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/mqunar/cock/network/j;->a:Lcom/mqunar/cock/network/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mqunar/cock/network/j;->a:Lcom/mqunar/cock/network/i;

    iget-object v0, v0, Lcom/mqunar/cock/network/i;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-static {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->d(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 348
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->oneKeyCremation()Z

    .line 349
    return-void
.end method
