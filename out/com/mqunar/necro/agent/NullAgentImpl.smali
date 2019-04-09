.class Lcom/mqunar/necro/agent/NullAgentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/AgentImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V
    .registers 2

    .prologue
    .line 25
    return-void
.end method

.method public disable()V
    .registers 1

    .prologue
    .line 12
    return-void
.end method

.method public getCparam()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkCarrier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    const-string v0, "unknown"

    return-object v0
.end method

.method public getNetworkWanType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    const-string v0, "unknown"

    return-object v0
.end method

.method public insertFailDataToFile(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public sendDataNow()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 10
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 11
    return-void
.end method
