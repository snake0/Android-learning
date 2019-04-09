.class public Lcom/mqunar/network/NetResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:I

.field public e:Ljava/lang/Exception;

.field public error:I

.field public headers:Lcom/mqunar/network/Headers;

.field public id:I

.field public redirect:Z

.field public result:[B

.field public resultLen:I

.field public total:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/mqunar/network/NetResponse;->error:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/network/NetResponse;->code:I

    .line 20
    iput-boolean v1, p0, Lcom/mqunar/network/NetResponse;->redirect:Z

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mqunar/network/NetResponse;->total:J

    .line 22
    return-void
.end method
