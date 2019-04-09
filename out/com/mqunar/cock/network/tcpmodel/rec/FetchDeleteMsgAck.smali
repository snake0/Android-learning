.class public Lcom/mqunar/cock/network/tcpmodel/rec/FetchDeleteMsgAck;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public msg_list:Ljava/lang/String;

.field public new_version:I

.field public ret:I

.field public sId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    return-void
.end method
