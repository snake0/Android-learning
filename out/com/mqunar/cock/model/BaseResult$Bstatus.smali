.class public Lcom/mqunar/cock/model/BaseResult$Bstatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:I

.field public des:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/mqunar/cock/model/BaseResult$Bstatus;->code:I

    return-void
.end method
