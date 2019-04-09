.class Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

.field final synthetic val$callBack:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;)V
    .registers 3

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;->this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    iput-object p2, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;->val$callBack:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;->val$callBack:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;

    invoke-interface {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;->end()V

    .line 45
    return-void
.end method

.method public success()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;->val$callBack:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;

    invoke-interface {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;->end()V

    .line 40
    return-void
.end method
