.class public Lcom/mqunar/cock/network/state/YaccaListUnavailableState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/cock/network/state/ChannelState;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "OnekeyCremation"

    iput-object v0, p0, Lcom/mqunar/cock/network/state/YaccaListUnavailableState;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public oneKeyCremation()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 17
    iget-object v0, p0, Lcom/mqunar/cock/network/state/YaccaListUnavailableState;->a:Ljava/lang/String;

    const-string v1, "YaccaListUnavailableState"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/mqunar/cock/model/BaseParam;

    invoke-direct {v0}, Lcom/mqunar/cock/model/BaseParam;-><init>()V

    .line 19
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->loadYacaAsync(Lcom/mqunar/cock/model/BaseParam;)V

    .line 20
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v1

    iget-object v1, v1, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListGettingState:Lcom/mqunar/cock/network/state/YaccaListGettingState;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 21
    return v3
.end method
