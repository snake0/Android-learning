.class public final Lcom/iflytek/aiui/AIUIEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public arg1:I

.field public arg2:I

.field public data:Landroid/os/Bundle;

.field public eventType:I

.field public info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iflytek/aiui/AIUIEvent;->eventType:I

    iput p2, p0, Lcom/iflytek/aiui/AIUIEvent;->arg1:I

    iput p3, p0, Lcom/iflytek/aiui/AIUIEvent;->arg2:I

    iput-object p4, p0, Lcom/iflytek/aiui/AIUIEvent;->info:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/aiui/AIUIEvent;->data:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/aiui/AIUIEvent;

    iget-object v1, p0, Lcom/iflytek/aiui/AIUIEvent;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/iflytek/aiui/AIUIEvent;->data:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lcom/iflytek/aiui/AIUIEvent;->data:Landroid/os/Bundle;

    :cond_14
    return-object v0
.end method
