.class Lcom/mqunar/splash/SplashActivity$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$1:Lcom/mqunar/splash/SplashActivity$5;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity$5;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$5$3;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 439
    packed-switch p2, :pswitch_data_12

    .line 445
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 441
    :pswitch_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 442
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5$3;->this$1:Lcom/mqunar/splash/SplashActivity$5;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->absolutelyFinish()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2100(Lcom/mqunar/splash/SplashActivity;)V

    .line 443
    const/4 v0, 0x0

    goto :goto_4

    .line 439
    nop

    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
