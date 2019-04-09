.class Lcom/mqunar/hy/res/libtask/NetResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:I

.field public e:Ljava/lang/Exception;

.field public error:I

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetResponse;->code:I

    .line 22
    iput-boolean v1, p0, Lcom/mqunar/hy/res/libtask/NetResponse;->redirect:Z

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mqunar/hy/res/libtask/NetResponse;->total:J

    .line 24
    return-void
.end method
