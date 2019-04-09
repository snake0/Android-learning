.class public final Lcom/iflytek/aiui/AIUIMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public arg1:I

.field public arg2:I

.field public data:[B

.field public msgType:I

.field public params:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iflytek/aiui/AIUIMessage;->msgType:I

    iput p2, p0, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    iput p3, p0, Lcom/iflytek/aiui/AIUIMessage;->arg2:I

    iput-object p4, p0, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/aiui/AIUIMessage;

    iget-object v1, p0, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    return-object v0
.end method
