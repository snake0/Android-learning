.class public Lcom/mqunar/hy/res/model/HybridResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

.field public message:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/hy/res/model/HybridResult;->status:I

    .line 13
    return-void
.end method
