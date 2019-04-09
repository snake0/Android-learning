.class Lcom/mqunar/cock/network/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/libtask/AbsConductor;

.field final synthetic b:Lcom/mqunar/cock/network/GenericNetworkTaskCallback;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/GenericNetworkTaskCallback;Lcom/mqunar/libtask/AbsConductor;)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mqunar/cock/network/f;->b:Lcom/mqunar/cock/network/GenericNetworkTaskCallback;

    iput-object p2, p0, Lcom/mqunar/cock/network/f;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mqunar/cock/network/f;->b:Lcom/mqunar/cock/network/GenericNetworkTaskCallback;

    iget-object v1, p0, Lcom/mqunar/cock/network/f;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->onNetError(Lcom/mqunar/libtask/AbsConductor;)V

    .line 50
    return-void
.end method
