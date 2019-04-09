.class public Lcom/mqunar/cock/network/tcpmodel/rec/ReportMessageAck;
.super Lcom/mqunar/cock/network/tcpmodel/rec/BaseRecAck;
.source "SourceFile"


# instance fields
.field public descp:Ljava/lang/String;

.field public msgId:J

.field public retMsg:Ljava/lang/String;

.field public sId:Ljava/lang/String;

.field public type:I

.field public uId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/rec/BaseRecAck;-><init>()V

    return-void
.end method
