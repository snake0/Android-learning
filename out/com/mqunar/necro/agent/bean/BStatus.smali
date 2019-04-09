.class public Lcom/mqunar/necro/agent/bean/BStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "bstatus"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public code:I

.field public des:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/mqunar/necro/agent/bean/BStatus;->code:I

    .line 12
    const-string v0, "code \u4e0d\u5b58\u5728"

    iput-object v0, p0, Lcom/mqunar/necro/agent/bean/BStatus;->des:Ljava/lang/String;

    .line 15
    return-void
.end method
