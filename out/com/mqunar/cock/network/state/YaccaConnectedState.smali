.class public Lcom/mqunar/cock/network/state/YaccaConnectedState;
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
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "OnekeyCremation"

    iput-object v0, p0, Lcom/mqunar/cock/network/state/YaccaConnectedState;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public oneKeyCremation()Z
    .registers 4

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mqunar/cock/network/state/YaccaConnectedState;->a:Ljava/lang/String;

    const-string v1, "YaccaConnectedState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x1

    return v0
.end method
