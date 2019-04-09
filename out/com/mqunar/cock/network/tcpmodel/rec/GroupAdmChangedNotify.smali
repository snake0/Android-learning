.class public Lcom/mqunar/cock/network/tcpmodel/rec/GroupAdmChangedNotify;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public message:Ljava/lang/String;

.field public owner:Ljava/lang/String;

.field public reqid:Ljava/lang/String;

.field public ret:I

.field public sId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    return-void
.end method
