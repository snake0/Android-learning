.class Lcom/mqunar/splash/SplashActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/mqunar/splash/SplashActivity$5;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$finalDelayed:J

.field final synthetic val$message:Landroid/os/Message;

.field final synthetic val$storage:Lcom/mqunar/storage/Storage;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity$5;Lcom/mqunar/storage/Storage;Landroid/widget/CheckBox;Landroid/os/Message;J)V
    .registers 7

    .prologue
    .line 426
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$5$1;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    iput-object p2, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$storage:Lcom/mqunar/storage/Storage;

    iput-object p3, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$message:Landroid/os/Message;

    iput-wide p5, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$finalDelayed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 429
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$storage:Lcom/mqunar/storage/Storage;

    const-string v2, "isNotice"

    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z

    .line 430
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 431
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5$1;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    const/4 v1, 0x0

    # setter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mqunar/splash/SplashActivity;->access$2002(Lcom/mqunar/splash/SplashActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 432
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5$1;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1500(Lcom/mqunar/splash/SplashActivity;)V

    .line 433
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5$1;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$message:Landroid/os/Message;

    iget-wide v2, p0, Lcom/mqunar/splash/SplashActivity$5$1;->val$finalDelayed:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 434
    return-void

    .line 429
    :cond_32
    const/4 v0, 0x0

    goto :goto_d
.end method
