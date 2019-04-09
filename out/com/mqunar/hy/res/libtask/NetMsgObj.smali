.class Lcom/mqunar/hy/res/libtask/NetMsgObj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public arg1:J

.field public arg2:I

.field public id:I

.field public obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IJILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->id:I

    .line 14
    iput-wide p2, p0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->arg1:J

    .line 15
    iput p4, p0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->arg2:I

    .line 16
    iput-object p5, p0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->obj:Ljava/lang/Object;

    .line 17
    return-void
.end method
