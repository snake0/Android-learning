.class public Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;
.super Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage;-><init>()V

    .line 9
    new-instance v0, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage$PlatformNew;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage$PlatformNew;-><init>(Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;Lcom/mqunar/cock/network/tcpmodel/send/a;)V

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;->setC(Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage$Platform;)V

    .line 10
    return-void
.end method
