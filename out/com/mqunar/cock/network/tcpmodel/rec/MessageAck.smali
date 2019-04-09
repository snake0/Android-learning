.class public Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public ctnt:Ljava/lang/String;

.field public dId:J

.field public hint:Ljava/lang/String;

.field public mId:J

.field public reqid:I

.field public ret:I

.field public retMsg:Ljava/lang/String;

.field public st:J

.field public tm:J

.field public to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    return-void
.end method
