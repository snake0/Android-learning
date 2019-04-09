.class Lcom/mqunar/cock/network/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/cock/model/BaseResult;

.field final synthetic b:Lcom/mqunar/cock/network/GenericNetworkTaskCallback;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/GenericNetworkTaskCallback;Lcom/mqunar/cock/model/BaseResult;)V
    .registers 3

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mqunar/cock/network/e;->b:Lcom/mqunar/cock/network/GenericNetworkTaskCallback;

    iput-object p2, p0, Lcom/mqunar/cock/network/e;->a:Lcom/mqunar/cock/model/BaseResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/cock/network/e;->b:Lcom/mqunar/cock/network/GenericNetworkTaskCallback;

    iget-object v1, p0, Lcom/mqunar/cock/network/e;->a:Lcom/mqunar/cock/model/BaseResult;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/GenericNetworkTaskCallback;->onDataArrive(Lcom/mqunar/cock/model/BaseResult;)V

    .line 40
    return-void
.end method
