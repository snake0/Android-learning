.class public Lcom/mqunar/qapm/pager/QLoadingReportHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mqunar/qapm/pager/QLoadingReportHelper;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/mqunar/qapm/domain/UIData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    .line 21
    return-void
.end method

.method public static newInstance()Lcom/mqunar/qapm/pager/QLoadingReportHelper;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->b:Lcom/mqunar/qapm/pager/QLoadingReportHelper;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;

    invoke-direct {v0}, Lcom/mqunar/qapm/pager/QLoadingReportHelper;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->b:Lcom/mqunar/qapm/pager/QLoadingReportHelper;

    .line 27
    :cond_b
    sget-object v0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->b:Lcom/mqunar/qapm/pager/QLoadingReportHelper;

    return-object v0
.end method


# virtual methods
.method public addReportMessage(Lcom/mqunar/qapm/domain/UIData;)V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public popReportMessage()Lcom/mqunar/qapm/domain/UIData;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 36
    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/UIData;

    .line 38
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public saveReportMessage()V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 43
    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/UIData;

    .line 44
    const-string v2, "success"

    iput-object v2, v0, Lcom/mqunar/qapm/domain/UIData;->status:Ljava/lang/String;

    goto :goto_12

    .line 47
    :cond_23
    iget-object v0, p0, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 49
    :cond_28
    return-void
.end method
