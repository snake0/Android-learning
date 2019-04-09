.class public Lcom/mqunar/cock/network/tcpmodel/send/Ack;
.super Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;
.source "SourceFile"


# instance fields
.field public frm:Ljava/lang/String;

.field public isRead:I

.field public mId:J

.field public reqid:I

.field public rt:I

.field public sId:Ljava/lang/String;

.field public to:Ljava/lang/String;

.field public uId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/send/BaseSendNeedTokenMessage;-><init>()V

    return-void
.end method
