.class Lcom/mqunar/splash/SplashActivity$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/mqunar/splash/SplashActivity$5;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity$5;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$5$2;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 422
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 423
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5$2;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    const/4 v1, 0x0

    # setter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mqunar/splash/SplashActivity;->access$2002(Lcom/mqunar/splash/SplashActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 424
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5$2;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->absolutelyFinish()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2100(Lcom/mqunar/splash/SplashActivity;)V

    .line 425
    return-void
.end method
