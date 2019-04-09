.class public Lcom/mqunar/cock/network/tcpmodel/send/FetchDeleteMessage;
.super Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;
.source "SourceFile"


# instance fields
.field public sId:Ljava/lang/String;

.field public uId:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;-><init>()V

    return-void
.end method
