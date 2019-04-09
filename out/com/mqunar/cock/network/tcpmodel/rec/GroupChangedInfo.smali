.class public Lcom/mqunar/cock/network/tcpmodel/rec/GroupChangedInfo;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public alter:Lcom/mqunar/cock/network/tcpmodel/rec/GroupChangedInfo$Alter;

.field public ctnt:Ljava/lang/String;

.field public ginfo:I

.field public hide:I

.field public left:I

.field public nr:I

.field public reqid:I

.field public sId:Ljava/lang/String;

.field public st:J

.field public swNotify:I

.field public uId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    .line 27
    return-void
.end method
