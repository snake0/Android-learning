.class public Lcom/mqunar/necro/agent/bean/BaseResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public bstatus:Lcom/mqunar/necro/agent/bean/BStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/mqunar/necro/agent/bean/BStatus;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/bean/BStatus;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/bean/BaseResult;->bstatus:Lcom/mqunar/necro/agent/bean/BStatus;

    .line 14
    return-void
.end method
