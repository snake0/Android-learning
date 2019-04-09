.class public Lcom/mqunar/cock/model/BaseResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bstatus:Lcom/mqunar/cock/model/BaseResult$Bstatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/mqunar/cock/model/BaseResult$Bstatus;

    invoke-direct {v0}, Lcom/mqunar/cock/model/BaseResult$Bstatus;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/model/BaseResult;->bstatus:Lcom/mqunar/cock/model/BaseResult$Bstatus;

    .line 12
    return-void
.end method
