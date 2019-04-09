.class public Lcom/mqunar/cock/network/tcpmodel/send/ChangeAdmOfSession;
.super Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;
.source "SourceFile"


# instance fields
.field public owner:Ljava/lang/String;

.field public reqid:J

.field public sId:Ljava/lang/String;

.field public uId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;-><init>()V

    return-void
.end method
