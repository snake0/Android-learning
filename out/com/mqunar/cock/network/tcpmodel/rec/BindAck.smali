.class public Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public img:Ljava/lang/String;

.field public imtoken:Ljava/lang/String;

.field public imuserid:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public reqid:I

.field public ret:I

.field public uId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    return-void
.end method
