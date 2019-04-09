.class Lcom/baidu/techain/ac/U$UpgradeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field networkId:I

.field resultId:I

.field final synthetic this$0:Lcom/baidu/techain/ac/U;


# direct methods
.method public constructor <init>(Lcom/baidu/techain/ac/U;II)V
    .registers 4

    .prologue
    .line 126
    iput-object p1, p0, Lcom/baidu/techain/ac/U$UpgradeResult;->this$0:Lcom/baidu/techain/ac/U;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Lcom/baidu/techain/ac/U$UpgradeResult;->networkId:I

    .line 129
    iput p3, p0, Lcom/baidu/techain/ac/U$UpgradeResult;->resultId:I

    .line 130
    return-void
.end method
