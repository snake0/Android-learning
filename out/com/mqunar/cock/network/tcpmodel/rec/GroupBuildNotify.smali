.class public Lcom/mqunar/cock/network/tcpmodel/rec/GroupBuildNotify;
.super Lcom/mqunar/cock/network/tcpmodel/BaseMessage;
.source "SourceFile"


# instance fields
.field public frm:Ljava/lang/String;

.field public ginfo:I

.field public hide:I

.field public img:Ljava/lang/String;

.field public members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/cock/network/tcpmodel/MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public reqid:I

.field public sId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;-><init>()V

    return-void
.end method
