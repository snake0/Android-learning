.class public Lcom/mqunar/hy/res/model/QpPathInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private qpMd5Path:Ljava/lang/String;

.field private qpPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mqunar/hy/res/model/QpPathInfo;->qpPath:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/mqunar/hy/res/model/QpPathInfo;->qpMd5Path:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getQpMd5Path()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mqunar/hy/res/model/QpPathInfo;->qpMd5Path:Ljava/lang/String;

    return-object v0
.end method

.method public getQpPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mqunar/hy/res/model/QpPathInfo;->qpPath:Ljava/lang/String;

    return-object v0
.end method

.method public setQpMd5Path(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mqunar/hy/res/model/QpPathInfo;->qpMd5Path:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setQpPath(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mqunar/hy/res/model/QpPathInfo;->qpPath:Ljava/lang/String;

    .line 23
    return-void
.end method
