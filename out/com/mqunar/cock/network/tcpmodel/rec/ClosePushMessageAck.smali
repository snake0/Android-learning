.class public Lcom/mqunar/cock/network/tcpmodel/rec/ClosePushMessageAck;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public push:I

.field public ret:I

.field public retMsg:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    return-void
.end method
