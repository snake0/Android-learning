.class public Lcom/mqunar/qutui/model/LogModel$CallData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public effectiveCount:I

.field public invalidCount:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mqunar/qutui/model/LogModel$CallData;->key:Ljava/lang/String;

    .line 37
    if-eqz p2, :cond_e

    .line 38
    iget v0, p0, Lcom/mqunar/qutui/model/LogModel$CallData;->effectiveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/qutui/model/LogModel$CallData;->effectiveCount:I

    .line 42
    :goto_d
    return-void

    .line 40
    :cond_e
    iget v0, p0, Lcom/mqunar/qutui/model/LogModel$CallData;->invalidCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/qutui/model/LogModel$CallData;->invalidCount:I

    goto :goto_d
.end method
