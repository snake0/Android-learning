.class public Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public c:Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage$Platform;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    .line 17
    new-instance v0, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage$Platform;

    invoke-direct {v0}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage$Platform;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage;->c:Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage$Platform;

    .line 18
    return-void
.end method


# virtual methods
.method public setC(Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage$Platform;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage;->c:Lcom/mqunar/cock/network/tcpmodel/send/BaseSendMessage$Platform;

    .line 15
    return-void
.end method
