.class public Lcom/mqunar/cock/network/tcpmodel/rec/QuitChatRoomMessageAck;
.super Lcom/mqunar/cock/network/tcpmodel/rec/BaseRecAck;
.source "SourceFile"


# instance fields
.field public retMsg:Ljava/lang/String;

.field public sId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/rec/BaseRecAck;-><init>()V

    return-void
.end method