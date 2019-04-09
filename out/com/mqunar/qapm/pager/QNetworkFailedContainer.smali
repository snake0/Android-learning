.class public Lcom/mqunar/qapm/pager/QNetworkFailedContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onVisibilityChanged(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 18
    if-nez p2, :cond_10

    .line 19
    invoke-static {}, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->newInstance()Lcom/mqunar/qapm/pager/QLoadingReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->popReportMessage()Lcom/mqunar/qapm/domain/UIData;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_10

    .line 21
    const-string v1, "error"

    iput-object v1, v0, Lcom/mqunar/qapm/domain/UIData;->status:Ljava/lang/String;

    .line 25
    :cond_10
    return-void
.end method
