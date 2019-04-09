.class public Lcom/mqunar/cock/network/tcpmodel/rec/NewFriendRequest;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public des:Ljava/lang/String;

.field public frm:Ljava/lang/String;

.field public nr:I

.field public reqid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    return-void
.end method
