.class public Lcom/mqunar/cock/network/state/YaccaListGettingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/cock/network/state/ChannelState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public oneKeyCremation()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 11
    const-string v0, "OnekeyCremation"

    .line 12
    const-string v1, "YaccaListGettingState"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return v3
.end method
