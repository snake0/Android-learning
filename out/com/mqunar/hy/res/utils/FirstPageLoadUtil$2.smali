.class Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

.field final synthetic val$isSuccess:Z

.field final synthetic val$params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V
    .registers 4

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;->this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    iput-object p2, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;->val$params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    iput-boolean p3, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;->this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;->val$params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    iget-boolean v2, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;->val$isSuccess:Z

    # invokes: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->callbackOnMain(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V
    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->access$100(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V

    .line 133
    return-void
.end method
