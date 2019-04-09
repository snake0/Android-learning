.class public Lcom/mqunar/qapm/domain/ActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activityName:Ljava/lang/String;

.field public createTime:J

.field public fristResumedTime:J

.field public isFristResumed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/qapm/domain/ActivityInfo;->isFristResumed:Z

    return-void
.end method
