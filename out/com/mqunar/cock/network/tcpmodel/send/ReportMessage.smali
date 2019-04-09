.class public Lcom/mqunar/cock/network/tcpmodel/send/ReportMessage;
.super Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;
.source "SourceFile"


# instance fields
.field public descp:Ljava/lang/String;

.field public msgId:J

.field public sId:Ljava/lang/String;

.field public type:I

.field public uId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;-><init>()V

    return-void
.end method
