.class public Lcom/mqunar/cock/network/state/YaccaDisconnectState;
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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "OnekeyCremation"

    iput-object v0, p0, Lcom/mqunar/cock/network/state/YaccaDisconnectState;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public oneKeyCremation()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 14
    iget-object v0, p0, Lcom/mqunar/cock/network/state/YaccaDisconnectState;->a:Ljava/lang/String;

    const-string v1, "YaccaDisconnectState"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->connect()V

    .line 16
    return v3
.end method
